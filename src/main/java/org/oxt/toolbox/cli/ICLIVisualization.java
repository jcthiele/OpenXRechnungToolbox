package org.oxt.toolbox.cli;

/**
 * Interface defining the methods for XRechnung visualization from command line.
 * @author Dr. Jan C. Thiele
 * @since OpenXRechnungToolbox v3.0.0 
 */
public interface ICLIVisualization {

	/**
	 * Method to run visualization from command line.
	 * @param inputInvoice Path to invoice file to be visualized
	 * @param outputViz Path where the output visualization file should be written to (pdf or html)
	 * @param pdf Generate a pdf visualization (if missing, a html visualization will be generated)
	 * @param config Path to the App configuration file
	 * @throws Exception Unspecific exception
	 */
	public void cliVisualization(String inputInvoice, String outputViz, boolean pdf, String config) throws Exception;

}
