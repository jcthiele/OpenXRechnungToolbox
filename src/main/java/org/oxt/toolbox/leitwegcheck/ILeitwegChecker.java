package org.oxt.toolbox.leitwegcheck;

/**
 * Interface for Leitweg-ID checker and calculator.
 */
public interface ILeitwegChecker {
	
	/**
	 * Method to run the validation.
	 * @param leitwegId string of Leitweg-ID to check
	 * @return true if valid; false if not
	 * @throws CheckDigitException error
	 */
	public boolean runLeitwegChecksumCheck(String leitwegId) throws CheckDigitException;

	/**
	 * Method to run the calculation.
	 * @param leitwegIdWOChecksum Leitweg-ID part to calculate the checksum for
	 * @return checksum string
	 * @throws CheckDigitException error
	 */
	public String runLeitwegChecksumCalculation(String leitwegIdWOChecksum) throws CheckDigitException;

}
