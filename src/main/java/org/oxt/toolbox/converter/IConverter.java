package org.oxt.toolbox.converter;

import java.net.MalformedURLException;

/**
 * Interface defining the methods for invoice conversion.
 * @author Dr. Jan C. Thiele
 */
public interface IConverter {

	/**
	 * Method to run conversion from CII to UBL.
	 * @param invoiceFile File to be converted
	 * @param invoicePath Path of file to be converted
	 * @throws MalformedURLException Exception
	 */
	public void convert(String invoiceFile, String invoicePath) throws MalformedURLException;
}
