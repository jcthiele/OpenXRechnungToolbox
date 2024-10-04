package org.oxt.toolbox.validation;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.oxt.toolbox.helpers.AppProperties;

import de.kosit.validationtool.api.Check;
import de.kosit.validationtool.api.Configuration;
import de.kosit.validationtool.api.Input;
import de.kosit.validationtool.api.InputFactory;
import de.kosit.validationtool.api.Result;
import de.kosit.validationtool.impl.DefaultCheck;
import de.kosit.validationtool.impl.DefaultResult;
import de.kosit.validationtool.impl.xml.ProcessorProvider;


/**
 * Class implementing the validation report processing (implements the IValidator interface).
 * @author Dr. Jan C. Thiele
 */
public class ValidatorImpl implements IValidator {

	/**
	 * Class member to store invoice path.
	 */
	String invoicePath;
	/**
	 * String to store validation report HTML.
	 */
	String html = null;

	@Override
	/**
	 * Method to run validation. 
	 */
	public String runValidation(String invoicePath, String valiVersion) throws IOException, Exception {
		
		this.invoicePath = invoicePath;
		Path testDoc = Paths.get(invoicePath);	
        
        File scenarios = new File(AppProperties.prop.getProperty("validator.scenario."+valiVersion));
        
		Configuration config = (Configuration) Configuration.load(scenarios.toURI()).build(ProcessorProvider.getProcessor());		
				
        // Validate a single document
		Input document = InputFactory.read(testDoc);		
        // Use the default validation procedure
		Check validator = new DefaultCheck(config);		
        // Get Result including information about the whole validation
		Result report = validator.checkInput(document);
		
        // Get report document if processing was successful        
        DefaultResult result = (DefaultResult) report;
        List<String> htmls = result.extractHtmlAsString();
        this.html = StringUtils.join(htmls, "");        		
        return this.html;
	}
	
	@Override
	/**
	 * Method to save report to file.
	 */
	public void saveAs(String filePath) throws IOException {
		if (this.html != null) {
			FileWriter fw = new FileWriter(filePath, StandardCharsets.UTF_8);
			fw.write(this.html.toString());
	        fw.close();
		}		
	}

}
