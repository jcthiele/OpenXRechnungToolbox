package org.oxt.toolbox.validation;

import java.io.IOException;
import java.io.StringWriter;

import javax.xml.stream.XMLStreamException;

/**
 * Interface defining the methods for XRechnung validation.
 * @author Dr. Jan C. Thiele
 */
public interface IValidator {

	/**
	 * Method to run the validation.
	 * @param invoiceFile name of invoice file
	 * @param invoicePath path of invoice file
	 * @param scenarioXmlPath path to validation scenario file
	 * @return string string with validation report
	 * @throws XMLStreamException invalid XML stream
	 * @throws IOException read error
	 * @throws Exception unspecific error
	 */
	//public StringWriter runValidation(String invoiceFile, String invoicePath, String scenarioXmlPath) throws XMLStreamException, IOException, Exception;
	public String runValidation(String invoiceFile, String invoicePath, String scenarioXmlPath) throws XMLStreamException, IOException, Exception;
	
	/**
	 * Method to save the validation report to a file.
	 * @param filePath file path to save the report into
	 * @throws IOException write error
	 */
	public void saveAs(String filePath) throws IOException;
}
