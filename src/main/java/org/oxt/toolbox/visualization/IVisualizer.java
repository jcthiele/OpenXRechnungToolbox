package org.oxt.toolbox.visualization;

import java.io.IOException;
import java.io.StringWriter;

import javax.xml.stream.XMLStreamException;
import javax.xml.transform.TransformerException;

import org.apache.fop.apps.FOPException;


/**
 * Interface defining the methods for XRechnung visualization.
 * @author Dr. Jan C. Thiele
 */
public interface IVisualizer {

	/**
	 * Method to run visualization.
	 * @param invoiceFile name of invoice file
	 * @param invoicePath path to invoice file
	 * @param xslPathubl path to xsl for ubl
	 * @param xslPathublcn path to xsl for ubl credit note
	 * @param xslPathcii path to xsl for CII
	 * @param htmlXslPath path to xsl for HTML
	 * @return report string writer
	 * @throws XMLStreamException XML stream error
	 * @throws IOException read error
	 * @throws Exception unspecific error
	 */
	public StringWriter runVisualization(String invoiceFile, String invoicePath, String xslPathubl, String xslPathublcn, String xslPathcii, String htmlXslPath) throws XMLStreamException, IOException, Exception;
	
	/**
	 * Method to create PDF transformation and save result to file.
	 * @param xslPath path to transformation xsl script for pdf
	 * @param outFile output pdf file
	 * @throws IOException write exception
	 * @throws TransformerException transformer error
	 * @throws FOPException fop error
	 */
	public void transformAndSaveToPDF(String xslPath, String outFile) throws IOException, TransformerException, FOPException;

	/**
	 * Method to save HTML visualization to file.
	 * @param filePath path to save the visualization into
	 * @throws IOException write error
	 */
	public void saveAs(String filePath) throws IOException;
}
