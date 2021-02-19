package org.oxt.toolbox.leitwegcheck;


/**
 * Class to implement the Leitweg-ID validation/calculation (ILeitwegChecker interface).
 * @author Dr. Jan C. Thiele
 */
public class LeitwegCheckerImpl implements ILeitwegChecker {

	/**
	 * Constructor.
	 */
	public LeitwegCheckerImpl() {
		
	}
	
	/**
	 * Method to run the Leitweg-ID validation.
	 */
	public boolean runLeitwegChecksumCheck(String leitwegId) throws CheckDigitException {		
		CheckDigit val = IBANCheckDigit.IBAN_CHECK_DIGIT;
		return val.isValid(leitwegId);
	}
	
	/**
	 * Method to run the Leitweg-ID (checksum) calculation.
	 */
	public String runLeitwegChecksumCalculation(String leitwegIdWOChecksum) throws CheckDigitException {
		CheckDigit val = IBANCheckDigit.IBAN_CHECK_DIGIT;
		return val.calculate(leitwegIdWOChecksum);
	}

}
