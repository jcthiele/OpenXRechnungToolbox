package org.oxt.toolbox.validation;

import java.io.IOException;

/**
 * Interface defining the methods for XRechnung validation.
 * @author Dr. Jan C. Thiele
 */
public interface IValidator {

	/**
	 * Method to run the validation.
	 * @param invoicePath path of invoice file
	 * @param scenarioXmlPath path to validation scenario file
	 * @return string string with validation report
	 * @throws IOException read error
	 * @throws Exception unspecific error
	 */
	public String runValidation(String invoicePath, String scenarioXmlPath) throws IOException, Exception;
	
	/**
	 * Method to save the validation report to a file.
	 * @param filePath file path to save the report into
	 * @throws IOException write error
	 */
	public void saveAs(String filePath) throws IOException;
}
