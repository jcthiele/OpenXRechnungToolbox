package org.oxt.toolbox.cli;

/**
 * Interface defining the methods for XRechnung validation from command line.
 * @author Dr. Jan C. Thiele
 * @since OpenXRechnungToolbox v3.0.0
 */
public interface ICLIValidation {

	/**
	 * Method to run the validation from command line.
	 * @param inputInvoice Path of invoice file to be validated
	 * @param outputReport Path where the report file (html) should be written
	 * @param valiVersion Version against which should be validated (must be a valid version number from the list of versions [available_valiVersions] in the App configuration file)
	 * @param config Path to the App configuration file
	 * @throws Exception Unspecific exception
	 */
	public void cliValidation(String inputInvoice, String outputReport, String valiVersion, String config) throws Exception;

}
