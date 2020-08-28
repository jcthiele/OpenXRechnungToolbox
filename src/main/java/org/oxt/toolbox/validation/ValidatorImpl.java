package org.oxt.toolbox.validation;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.xml.stream.XMLStreamException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.commons.lang3.StringUtils;
import org.oxt.toolbox.helpers.AppProperties;
import org.w3c.dom.Document;

import de.kosit.validationtool.api.Check;
import de.kosit.validationtool.api.Configuration;
import de.kosit.validationtool.api.Input;
import de.kosit.validationtool.api.InputFactory;
import de.kosit.validationtool.api.Result;
import de.kosit.validationtool.impl.DefaultCheck;
import de.kosit.validationtool.impl.DefaultResult;
import de.kosit.validationtool.impl.ResolvingMode;

/**
 * Class implementing the validation report processing (implements the IValidator interface).
 * @author Dr. Jan C. Thiele
 */
public class ValidatorImpl implements IValidator {

	private final TransformerFactory tf = TransformerFactory.newInstance();
	/**
	 * Class member to store invoice path.
	 */
	String invoicePath;
	/**
	 * Class member to store invoice file.
	 */
	String invoiceFile;
	/**
	 * String writer to store validation report HTML.
	 */
	//StringWriter html = null;
	String html = null;

	@Override
	/**
	 * Method to run validation. 
	 */
	//public StringWriter runValidation(String invoiceFile, String invoicePath, String scenarioXmlPath) throws XMLStreamException, IOException, Exception {
	public String runValidation(String invoiceFile, String invoicePath, String scenarioXmlPath) throws XMLStreamException, IOException, Exception {
		this.invoicePath = invoicePath;
		this.invoiceFile = invoiceFile;
		Path testDoc = Paths.get(invoicePath);	
		
		// Load scenarios.xml 
        String valiVersion = AppProperties.prop.getProperty("valiVersion");
        File scenarios = new File(AppProperties.prop.getProperty("validator.scenario."+valiVersion));			
        // Load the rest of the specific Validator configuration from classpath
        Configuration config = Configuration.load(scenarios.toURI())
        		.setResolvingMode(ResolvingMode.STRICT_LOCAL)
        		.build();		
        // Validate a single document
		Input document = InputFactory.read(testDoc);		
        // Use the default validation procedure
		Check validator = new DefaultCheck(config);		
        // Get Result including information about the whole validation
		Result report = validator.checkInput(document);
		
        // Get report document if processing was successful        
        //if (report.isProcessingSuccessful()) {
        //this.html = printDocument(report.getReportDocument());
        DefaultResult result = (DefaultResult) report;
        List<String> htmls = result.extractHtmlAsString();
        this.html = StringUtils.join(htmls, "");        		
        return this.html;
        //}
        //return null;
	}


	/**
	 * Method to transform Document report to StringWriter.
	 * @param doc DOM Document
	 * @return report string writer
	 * @throws IOException read/write exception
	 * @throws TransformerException transformation error
	 */
	public StringWriter printDocument(Document doc) throws IOException, TransformerException {	    
	    Transformer transformer = tf.newTransformer();
	    transformer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");
	    transformer.setOutputProperty(OutputKeys.METHOD, "html");
	    transformer.setOutputProperty(OutputKeys.INDENT, "yes");
	    transformer.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
	    transformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "4");

	    StringWriter sw = new StringWriter();
	    StreamResult result = new StreamResult(sw);
	    transformer.transform(new DOMSource(doc), result);	    
	    return sw;
	}
	
	@Override
	/**
	 * Method to save report to file.
	 */
	public void saveAs(String filePath) throws IOException {
		if (this.html != null) {
			// requires Java >= 9:
			//FileWriter fw = new FileWriter(filePath, StandardCharsets.UTF_8);
			//FileWriter fw = new FileWriter(filePath);
			//fw.write(this.html.toString());
	        //fw.close();
			// Java = 8 compatible solution:
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath, true), StandardCharsets.UTF_8));
			bw.write(this.html.toString());		
			bw.close();
		}		
	}

}
