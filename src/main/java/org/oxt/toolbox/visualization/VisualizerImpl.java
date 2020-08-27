package org.oxt.toolbox.visualization;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;

import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;

import org.apache.fop.apps.FOPException;
import org.apache.fop.apps.FOUserAgent;
import org.apache.fop.apps.Fop;
import org.apache.fop.apps.FopFactory;
import org.apache.fop.apps.MimeConstants;
import org.oxt.toolbox.gui.AppWindow;
import org.oxt.toolbox.helpers.AppProperties;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;
import org.xml.sax.SAXException;

/**
 * Class implementing the visualization processing (implements the IVisualizer interface).
 * @author Dr. Jan C. Thiele
 */
public class VisualizerImpl implements IVisualizer {

	private final DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();	
	/**
	 * Class member to store invoice path.
	 */
	String invoicePath;
	/**
	 * Class member to store invoice file.
	 */
	String invoiceFile;
	/**
	 * String writer to store visualization HTML.
	 */
	StringWriter html = null;
	/**
	 * String writer to store intermediate XML tranformation result (syntax-neutral).
	 */
	StringWriter intermediateXML;

	
	Logger logger;
	
	public VisualizerImpl() {
		this.logger = LoggerFactory.getLogger(VisualizerImpl.class);
	}
	
	
	@Override
	/**
	 * Method to run visualization. 
	 */
	public StringWriter runVisualization(String invoiceFile, String invoicePath, String xslPathubl, String xslPathublcn, String xslPathcii, String htmlXslPath) throws XMLStreamException, IOException, Exception {
		this.intermediateXML = this.xsltTransformationFromFile(invoicePath, xslPathubl, xslPathublcn, xslPathcii);
		StringWriter visualizationHTML = this.xsltTransformationFromStringWriter(intermediateXML, htmlXslPath);		
		return visualizationHTML;
	}

	@Override
	/**
	 * Method to save visualization to file.
	 */
	public void saveAs(String filePath) throws IOException {
		if (this.html != null) {
			FileWriter fw = new FileWriter(filePath, StandardCharsets.UTF_8);
	        fw.write(this.html.toString());
	        fw.close();
		}
	}


	/**
	 * Method to check, if input is valid against a specified xsd.
	 * @param inputFile input file to be validated
	 * @param xsd xsd to validate against
	 * @return true|false
	 */
	private boolean validateAgainstXSD(String inputFile, String xsd)
	{
		File schemaFile = new File(xsd); // etc.
		Source xmlFile = new StreamSource(new File(inputFile));
		SchemaFactory schemaFactory = SchemaFactory
		    .newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
		try {
			Schema schema = schemaFactory.newSchema(schemaFile);
			Validator validator = schema.newValidator();
			validator.validate(xmlFile);
			// valid
			return true;
		} catch (SAXException e) {
			// not valid
			logger.error(e.getMessage());
			return false;
		} catch (IOException e) {
			logger.error(e.getMessage());
			return false;
		}
	}

	/**
	 * Method to transform input to intermediate (syntax neutral) format.
	 * @param inputFile file to be transformed
	 * @param xslPathubl path to xsl file for ubl
	 * @param xslPathublcn path to xsl file for ubl credit note
	 * @param xslPathcii path to xsl file for CII
	 * @return
	 * @throws Exception
	 */
	private StringWriter xsltTransformationFromFile(String inputFile, String xslPathubl, String xslPathublcn, String xslPathcii) throws Exception {
		
		
        factory.setNamespaceAware(true);
        DocumentBuilder builder = factory.newDocumentBuilder();
        File initialFile = new File(inputFile);
        InputStream targetStream = new FileInputStream(initialFile);

		// check for ubl-invoice, ubl-creditnote, cii
        String xslPath = null;
        
        // use version with codelist resolve or not?
        String valiVersion = AppProperties.prop.getProperty("valiVersion");
        if (Boolean.parseBoolean(AppProperties.prop.getProperty("viz.codelistresolve"))) {
			if (this.validateAgainstXSD(inputFile, AppProperties.prop.getProperty("validator.ubl.xsd."+valiVersion))) {
				xslPath = AppProperties.prop.getProperty("viz.intermediate.ubl.xsl.codelistresolve");
			} else if (this.validateAgainstXSD(inputFile, AppProperties.prop.getProperty("validator.ublcn.xsd."+valiVersion))) {
				xslPath = AppProperties.prop.getProperty("viz.intermediate.ublcn.xsl.codelistresolve");
			} else if (this.validateAgainstXSD(inputFile, AppProperties.prop.getProperty("validator.cii.xsd."+valiVersion))) {
				xslPath = AppProperties.prop.getProperty("viz.intermediate.cii.xsl.codelistresolve");
			} else {
				extracted();
			}
        }
        else {        
			if (this.validateAgainstXSD(inputFile, AppProperties.prop.getProperty("validator.ubl.xsd."+valiVersion))) {
				xslPath = AppProperties.prop.getProperty("viz.intermediate.ubl.xsl");
			} else if (this.validateAgainstXSD(inputFile, AppProperties.prop.getProperty("validator.ublcn.xsd."+valiVersion))) {
				xslPath = AppProperties.prop.getProperty("viz.intermediate.ublcn.xsl");
			} else if (this.validateAgainstXSD(inputFile, AppProperties.prop.getProperty("validator.cii.xsd."+valiVersion))) {
				xslPath = AppProperties.prop.getProperty("viz.intermediate.cii.xsl");
			} else {
				extracted();
			}
        }
		
        Document doc = builder.parse(targetStream);
        DOMSource source = new DOMSource(doc);
 
        // Create an instance of the TransformerFactory
        TransformerFactory transfomerFactory = TransformerFactory.newInstance();
 
        // Obtain the XSLT transformer
        Transformer transformer = transfomerFactory.newTransformer(new StreamSource(xslPath)); 
        StringWriter sw = new StringWriter();
        StreamResult result = new StreamResult(sw);
        transformer.transform(source, result);
        return sw;
	}

	private void extracted() throws Exception {
		logger.error(AppWindow.resourceBundle.getString("viz_schema_error"));
		throw new Exception(AppWindow.resourceBundle.getString("viz_schema_error"));
	}
	
	/**
	 * Method to transform intermediate inputString to HTML visualization using given xsl path.
	 * @param inputString input string to be transformed
	 * @param xslPath path to xsl used for transformation
	 * @return
	 * @throws TransformerException
	 */
	private StringWriter xsltTransformationFromStringWriter(StringWriter inputString, String xslPath) throws TransformerException {
        // second transformation
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setNamespaceAware(true);
        StreamSource source = new StreamSource(new StringReader(inputString.toString()));
 
        // Create an instance of the TransformerFactory
        TransformerFactory transfomerFactory = TransformerFactory.newInstance();
 
        // Obtain the XSLT transformer
        Transformer transformer = transfomerFactory.newTransformer(new StreamSource(xslPath)); 
 
        StringWriter sw = new StringWriter();
        StreamResult result = new StreamResult(sw);
        transformer.transform(source, result);
        this.html = sw;
		return this.html;
	}
	


	/**
	 * Method to create PDF transformation and save result to file.
	 * @param xslPath path to transformation xsl script for pdf
	 * @param outFile output pdf file
	 * @throws IOException write exception
	 * @throws TransformerException transformer error
	 * @throws FOPException fop error
	 */
	public void transformAndSaveToPDF(String xslPath, String outFile) throws IOException, TransformerException, FOPException {
		if (this.intermediateXML != null) {		      
	      File pdfFile = new File(outFile);
	      
	      // configure fopFactory as desired
	      final FopFactory fopFactory = FopFactory.newInstance(new File(".").toURI());        
	      FOUserAgent foUserAgent = fopFactory.newFOUserAgent();
	      // configure foUserAgent as desired        
	      // Setup output
	      OutputStream out = new FileOutputStream(pdfFile);
	      out = new java.io.BufferedOutputStream(out);
	      // Construct fop with desired output format
	      Fop fop;                
	      fop = fopFactory.newFop(MimeConstants.MIME_PDF, foUserAgent, out);    
	      // Setup XSLT
	      TransformerFactory factory = TransformerFactory.newInstance();
	      Transformer transformer = factory.newTransformer(new StreamSource(xslPath));        
	      // Setup input for XSLT transformation
	      StreamSource source = new StreamSource(new StringReader(this.intermediateXML.toString()));
	      // Resulting SAX events (the generated FO) must be piped through to FOP
	      Result res = new SAXResult(fop.getDefaultHandler());        
	      // Start XSLT transformation and FOP processing
	      transformer.transform(source, res);
	      out.close();
		}
		else {
			logger.error(AppWindow.resourceBundle.getString("viz_intermediate_missing"));
			throw new IOException(AppWindow.resourceBundle.getString("viz_intermediate_missing"));
		}
	}


}
