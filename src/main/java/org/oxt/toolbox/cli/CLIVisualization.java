package org.oxt.toolbox.cli;

import java.io.File;
import org.oxt.toolbox.helpers.AppProperties;
import org.oxt.toolbox.visualization.VisualizerImpl;

/**
 * Class implementing the visualization processing from command line (implements the ICLIVisualization interface).
 * @author Dr. Jan C. Thiele
 * @since OpenXRechnungToolbox v3.0.0 
 */
public class CLIVisualization implements ICLIVisualization {

	/**
	 * Constructor
	 */
	public CLIVisualization() {
		
	}
	
	/**
	 * Method to run visualization from command line.
	 * @param inputInvoice Path to invoice file to be visualized
	 * @param outputViz Path where the output visualization file should be written to (pdf or html)
	 * @param pdf Generate a pdf visualization (if missing, a html visualization will be generated)
	 * @param config Path to the App configuration file
	 * @throws Exception Unspecific exception
	 */
	public void cliVisualization(String inputInvoice, String outputViz, boolean pdf, String config) throws Exception {

		System.setProperty("com.sun.xml.bind.v2.bytecode.ClassTailor.noOptimize","true");		
		AppProperties.initializeProperties(config);
		File inputFile = new File(inputInvoice);
		if (!inputFile.exists()) {
			throw new Exception("inputInvoice not found at: "+inputInvoice);
		}
		VisualizerImpl viz = new VisualizerImpl();			
		viz.runVisualization(inputFile.getAbsolutePath(), AppProperties.prop.getProperty("viz.intermediate.ubl.xsl"), AppProperties.prop.getProperty("viz.intermediate.ublcn.xsl"), AppProperties.prop.getProperty("viz.intermediate.cii.xsl"), AppProperties.prop.getProperty("viz.html.xsl"));

		File outputFile = new File(outputViz);
		if (outputFile.exists()) {
			outputFile.delete();
		}
		
		if (pdf) {				
			viz.transformAndSaveToPDF(AppProperties.prop.getProperty("viz.pdf.xsl"), outputViz);						
		} else {
			viz.saveAs(outputViz);			
		}
		System.out.println("Visualization processing finished successfully.");								
	}
	

}
