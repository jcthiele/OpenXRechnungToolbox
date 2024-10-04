package org.oxt.toolbox.converter;

import java.io.File;
import java.io.Serializable;
import java.net.MalformedURLException;
import java.util.Iterator;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.widgets.Shell;
import org.oxt.toolbox.gui.AppWindow;
import org.oxt.toolbox.helpers.LogConfigurator;
import org.apache.logging.log4j.Logger;

import com.helger.cii.d16b.CIID16BCrossIndustryInvoiceTypeMarshaller;
import com.helger.commons.error.list.ErrorList;
import com.helger.commons.io.file.FilenameHelper;
import com.helger.en16931.cii2ubl.AbstractCIIToUBLConverter;
import com.helger.en16931.cii2ubl.CIIToUBL21Converter;
import com.helger.jaxb.GenericJAXBMarshaller;
import com.helger.ubl21.UBL21Marshaller;

import un.unece.uncefact.data.standard.crossindustryinvoice._100.CrossIndustryInvoiceType;
import un.unece.uncefact.data.standard.reusableaggregatebusinessinformationentity._100.DocumentContextParameterType;

/**
 * Class implementing the conversion processing (implements the IConverter interface).
 * @author Dr. Jan C. Thiele
 */
public class ConverterImpl implements IConverter {

	/**
	 * Logger object.
	 */
	Logger logger;
	
	/**
	 * Display object.
	 */
	Display display;
	
	/**
	 * Shell object.
	 */
	Shell shell;
	
	/**
	 * Constructor.
	 * @param display Mother display
	 */
	public ConverterImpl(Display display) {
		this.logger = LogConfigurator.LogConfig(ConverterImpl.class);
		
		this.display = display;
		this.shell = new Shell(this.display);
	}
	
	/**
	 * Method to convert CII invoice to UBL invoice.
	 * @param invoiceFile file to be converted
	 * @param invoicePath Path where the invoiceFile is stored
	 * @throws MalformedURLException Exception
	 */
	public void convert(String invoiceFile, String invoicePath) throws MalformedURLException {
		CIIToUBL21Converter converter = new CIIToUBL21Converter();		
		ErrorList errorList = new ErrorList();
		File f = null;
		f = new File(invoicePath);
		String destFileName = FilenameHelper.getBaseName(f) + AppWindow.resourceBundle.getString("conversion_appendix");		
		final File destFile = new File (FilenameHelper.getPath(invoicePath), destFileName);
		if (destFile.exists()) {
	    	logger.error("conversion stopped. Destination file already existis.");		        	  
	    	// error dialog
	    	MessageBox dialog = new MessageBox(this.shell, SWT.OK);
			dialog.setText(AppWindow.resourceBundle.getString("conversion_errorTitle"));
			dialog.setMessage(invoiceFile+"\n"+AppWindow.resourceBundle.getString("conversion_destFileAlreadyExists"));			
			dialog.open();	
			return;
		}
		if (f.exists()) {			
	    	logger.debug("conversion for file: "+invoiceFile);
			String customizationID = AbstractCIIToUBLConverter.DEFAULT_CUSTOMIZATION_ID;
			
			CIID16BCrossIndustryInvoiceTypeMarshaller ciimarshaller = new CIID16BCrossIndustryInvoiceTypeMarshaller();
			CrossIndustryInvoiceType aCIIObject = ciimarshaller.read(f);

			Iterator<DocumentContextParameterType> it = aCIIObject.getExchangedDocumentContext().getGuidelineSpecifiedDocumentContextParameter().iterator();
			while(it.hasNext()) {
		    	DocumentContextParameterType obj = (DocumentContextParameterType)it.next();
		    	customizationID = obj.getID().getValue();
		    }
	    	logger.debug("customizationID: "+customizationID);
	    	Serializable convert = converter.convertCIItoUBL(f, errorList);			
			
			if (errorList.containsNoError()) {							
				final boolean bFormattedOutput = true;
				
				if (convert instanceof oasis.names.specification.ubl.schema.xsd.invoice_21.InvoiceType)
		        {
					logger.debug("write ubl invoice");
					((oasis.names.specification.ubl.schema.xsd.invoice_21.InvoiceType)convert).setCustomizationID (customizationID);

			        // Validate against EN16931 validation rules
			        final GenericJAXBMarshaller <oasis.names.specification.ubl.schema.xsd.invoice_21.InvoiceType> aWriter = UBL21Marshaller.invoice ().setFormattedOutput(bFormattedOutput);
			        aWriter.write ((oasis.names.specification.ubl.schema.xsd.invoice_21.InvoiceType) convert, destFile);
					
					// confirmation dialog
			    	MessageBox dialog = new MessageBox(this.shell, SWT.OK);
					dialog.setText(AppWindow.resourceBundle.getString("conversion_confirmTitle"));	
					dialog.setMessage(AppWindow.resourceBundle.getString("conversion_confirmMessage")+destFileName);
					dialog.open();
		        }
		        else
		          if (convert instanceof oasis.names.specification.ubl.schema.xsd.creditnote_21.CreditNoteType)
		          {
		        	  	logger.debug("write ubl credit note");
						((oasis.names.specification.ubl.schema.xsd.creditnote_21.CreditNoteType)convert).setCustomizationID (customizationID);
						
				        // Check UBL XSD scheme
				        final GenericJAXBMarshaller <oasis.names.specification.ubl.schema.xsd.creditnote_21.CreditNoteType> aWriter = UBL21Marshaller.creditNote().setFormattedOutput(bFormattedOutput);
				        aWriter.write((oasis.names.specification.ubl.schema.xsd.creditnote_21.CreditNoteType) convert, destFile);

						// confirmation dialog
				    	MessageBox dialog = new MessageBox(this.shell, SWT.OK);
						dialog.setText(AppWindow.resourceBundle.getString("conversion_confirmTitle"));	
						dialog.setMessage(AppWindow.resourceBundle.getString("conversion_confirmMessage")+destFileName);
						dialog.open();
		          }	
		          else {
				    	logger.error("conversion error. no type found.");		        	  
				    	// error dialog
				    	MessageBox dialog = new MessageBox(this.shell, SWT.OK);
						dialog.setText(AppWindow.resourceBundle.getString("conversion_errorTitle"));
						dialog.setMessage(invoiceFile+AppWindow.resourceBundle.getString("conversion_errorMessage"));			
						dialog.open();				    	
		          }
			}
			else {
		    	logger.error("conversion errors: "+errorList.getAllErrors().toString());
		    	// error dialog
		    	MessageBox dialog = new MessageBox(this.shell, SWT.OK);
				dialog.setText(AppWindow.resourceBundle.getString("conversion_errorTitle"));
				dialog.setMessage(invoiceFile+AppWindow.resourceBundle.getString("conversion_errorMessage")+errorList.getAllErrors().toString());			
				dialog.open();				
			}	
		}		
	}
}
