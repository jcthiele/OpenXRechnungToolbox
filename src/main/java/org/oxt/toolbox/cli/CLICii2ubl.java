package org.oxt.toolbox.cli;

import java.io.File;
import java.io.Serializable;
import java.util.Iterator;

import org.apache.logging.log4j.Logger;
import org.oxt.toolbox.helpers.AppProperties;
import org.oxt.toolbox.helpers.LogConfigurator;


import com.helger.cii.d16b.CIID16BCrossIndustryInvoiceTypeMarshaller;
import com.helger.commons.error.list.ErrorList;
import com.helger.en16931.cii2ubl.AbstractCIIToUBLConverter;
import com.helger.en16931.cii2ubl.CIIToUBL21Converter;
import com.helger.jaxb.GenericJAXBMarshaller;
import com.helger.ubl21.UBL21Marshaller;

import un.unece.uncefact.data.standard.crossindustryinvoice._100.CrossIndustryInvoiceType;
import un.unece.uncefact.data.standard.reusableaggregatebusinessinformationentity._100.DocumentContextParameterType;



/**
 * Class implementing the conversion processing from command line (implements the ICLICii2ubl interface).
 * @author Dr. Jan C. Thiele
 * @since OpenXRechnungToolbox v3.0.0 
 */
public class CLICii2ubl implements ICLICii2ubl {

	/**
	 * Logger object.
	 */
	Logger logger;
	
	/**
	 * Constructor
	 */
	public CLICii2ubl() {
		this.logger = LogConfigurator.LogConfig(CLICii2ubl.class);
	}
	
	/**
	 * Method to run the conversion from CII invoice to UBL from command line
	 * @param inputInvoice  File to be converted
	 * @param outputInvoice Path of resulting output ubl file 
	 * @param config Path to the configuration file of the application
	 * @throws Exception Unspecific exception
	 */
	public void cliCii2ubl(String inputInvoice, String outputInvoice, String config) throws Exception {
		
		System.setProperty("com.sun.xml.bind.v2.bytecode.ClassTailor.noOptimize","true");		
		AppProperties.initializeProperties(config);
		
		File inputFile = new File(inputInvoice);
		if (!inputFile.exists()) {
			throw new Exception("inputInvoice not found at: "+inputInvoice);
		}
		
		CIIToUBL21Converter converter = new CIIToUBL21Converter();		
		ErrorList errorList = new ErrorList();
	
		File outputFile = new File(outputInvoice);
		if (outputFile.exists()) {
			outputFile.delete();
		}
		
		String customizationID = AbstractCIIToUBLConverter.DEFAULT_CUSTOMIZATION_ID;
		
		CIID16BCrossIndustryInvoiceTypeMarshaller ciimarshaller = new CIID16BCrossIndustryInvoiceTypeMarshaller();
		CrossIndustryInvoiceType aCIIObject = ciimarshaller.read(inputFile);
		
		Iterator<DocumentContextParameterType> it = aCIIObject.getExchangedDocumentContext().getGuidelineSpecifiedDocumentContextParameter().iterator();
		while(it.hasNext()) {
	    	DocumentContextParameterType obj = (DocumentContextParameterType)it.next();
	    	customizationID = obj.getID().getValue();
	    }

    	logger.debug("customizationID: "+customizationID);
    	Serializable convert = converter.convertCIItoUBL(inputFile, errorList);			
		
		if (errorList.containsNoError()) {							
			final boolean bFormattedOutput = true;
			
			if (convert instanceof oasis.names.specification.ubl.schema.xsd.invoice_21.InvoiceType)
	        {
				logger.debug("write ubl invoice");
				((oasis.names.specification.ubl.schema.xsd.invoice_21.InvoiceType)convert).setCustomizationID (customizationID);
		        // Validate against EN16931 validation rules
		        final GenericJAXBMarshaller <oasis.names.specification.ubl.schema.xsd.invoice_21.InvoiceType> aWriter = UBL21Marshaller.invoice ().setFormattedOutput(bFormattedOutput);
		        aWriter.write ((oasis.names.specification.ubl.schema.xsd.invoice_21.InvoiceType) convert, outputFile);
	        }
	        else
	          if (convert instanceof oasis.names.specification.ubl.schema.xsd.creditnote_21.CreditNoteType)
	          {
	        	  logger.debug("write ubl credit note");
	        	  ((oasis.names.specification.ubl.schema.xsd.creditnote_21.CreditNoteType)convert).setCustomizationID (customizationID);
											
			      // Check UBL XSD scheme
			      final GenericJAXBMarshaller <oasis.names.specification.ubl.schema.xsd.creditnote_21.CreditNoteType> aWriter = UBL21Marshaller.creditNote().setFormattedOutput(bFormattedOutput);
			      aWriter.write((oasis.names.specification.ubl.schema.xsd.creditnote_21.CreditNoteType) convert, outputFile);
	          }	
	          else {
			    	throw new Exception("conversion error. no type found.");		        	  
	          }
		}
		else {
	    	throw new Exception("conversion errors: "+errorList.getAllErrors().toString());
		}					
		System.out.println("Conversion processing finished successfully.");						

	}
}
