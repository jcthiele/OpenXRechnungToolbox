package org.oxt.toolbox.cli;

/**
 * Interface defining the methods for invoice conversion from command line access.
 * @author Dr. Jan C. Thiele
 * @since OpenXRechnungToolbox v3.0.0
 */
public interface ICLICii2ubl {

	
	/**
	 * Method to run the conversion from CII invoice to UBL from command line
	 * @param inputInvoice  File to be converted
	 * @param outputInvoice Path of resulting output ubl file 
	 * @param config Path to the configuration file of the application
	 * @throws Exception Unspecific exception
	 */
	public void cliCii2ubl(String inputInvoice, String outputInvoice, String config) throws Exception;
	
}
