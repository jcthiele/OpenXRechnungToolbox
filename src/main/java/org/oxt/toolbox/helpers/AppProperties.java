package org.oxt.toolbox.helpers;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.widgets.Shell;
import org.apache.logging.log4j.Logger;

/**
 * Helper class to store software properties.
 * @author Dr. Jan C. Thiele
 */
public class AppProperties {

	/**
	 * Class member to store properties.
	 */
	public static Properties prop;
	
	/**
	 * File name/path of config file.
	 */
	public static String fileName;

	/**
	 * Method to put values into static class members.
	 * @param fileName name/path of config file
	 */
	public static void initializeProperties(String fileName) {	
		Logger logger = LogConfigurator.LogConfig(AppProperties.class);

		AppProperties.fileName = fileName;
		AppProperties.prop = new Properties();
		try (var is = new FileInputStream(fileName)){
		    AppProperties.prop.load(is);
		} catch (Exception ex) {
			logger.error(ex.getMessage());
			Display display = new Display();
			Shell shell = new Shell(display);
			MessageBox messageBox = new MessageBox(shell, SWT.ICON_WARNING | SWT.OK);				        
	        messageBox.setText("Error");
	        messageBox.setMessage("Properties file not found.");
	        messageBox.open();			
		}	
	}
	

		
}
