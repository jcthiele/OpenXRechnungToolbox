package org.oxt.toolbox.cli;

import java.io.File;
import java.util.Arrays;
import java.util.List;

import org.oxt.toolbox.helpers.AppProperties;
import org.oxt.toolbox.validation.ValidatorImpl;

/**
 * Class implementing the validation processing from command line (implements the ICLIValidation interface).
 * @author Dr. Jan C. Thiele
 * @since OpenXRechnungToolbox v3.0.0 
 */
public class CLIValidation implements ICLIValidation {

	/**
	 * Constructor
	 */
	public CLIValidation() {
		
	}
	
	/**
	 * Method to run the validation from command line.
	 * @param inputInvoice Path of invoice file to be validated
	 * @param outputReport Path where the report file (html) should be written
	 * @param valiVersion Version against which should be validated (must be a valid version number from the list of versions [available_valiVersions] in the App configuration file)
	 * @param config Path to the App configuration file
	 * @throws Exception Unspecific exception
	 */
	public void cliValidation(String inputInvoice, String outputReport, String valiVersion, String config) throws Exception {
		
		System.setProperty("com.sun.xml.bind.v2.bytecode.ClassTailor.noOptimize","true");		
		AppProperties.initializeProperties(config);
		
		File inputFile = new File(inputInvoice);
		if (!inputFile.exists()) {
			throw new Exception("inputInvoice not found at: "+inputInvoice);
		}
		String valiVersions = AppProperties.prop.getProperty("available_valiVersions");
		List<String> valiVersionsList = Arrays.asList(valiVersions.split(","));			
		if (valiVersionsList.contains(valiVersion)) {				
			ValidatorImpl vali = new ValidatorImpl();
			vali.runValidation(inputFile.getAbsolutePath(), valiVersion);
			File outputFile = new File(outputReport);
			if (outputFile.exists()) {
				outputFile.delete();
			}			
			vali.saveAs(outputReport);							
		} else {
			throw new Exception("Unknown valiVersion: "+valiVersion);
		}		
		System.out.println("Validation processing finished successfully.");						
	}

}
