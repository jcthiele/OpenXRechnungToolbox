package org.oxt.toolbox.helpers;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.core.config.ConfigurationSource;
import org.apache.logging.log4j.core.config.Configurator;
import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.widgets.Shell;
import org.apache.logging.log4j.Logger;

/**
 * Class to initialize custom logger using configuration file at ./resources/log4j2.xml.
 * @author Dr. Jan C. Thiele
 * @since 1.1.2
 */
public class LogConfigurator {

	
	public static Logger LogConfig(final Class<?> callingClass) {
		String log4jConfigFile = System.getProperty("user.dir") + File.separator + "resources" + File.separator + "log4j2.xml";
		try {
			ConfigurationSource source;
			source = new ConfigurationSource(new FileInputStream(log4jConfigFile));
			//Configurator.initialize(null, source);
			Configurator.initialize(callingClass.getClassLoader(), source);
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			Display display = new Display();
			Shell shell = new Shell(display);
			MessageBox messageBox = new MessageBox(shell, SWT.ICON_WARNING | SWT.OK);				        
	        messageBox.setText("Error");
	        messageBox.setMessage("Log-Configuration file not found.");
	        messageBox.open();
		} catch (IOException e) {
			e.printStackTrace();
			Display display = new Display();
			Shell shell = new Shell(display);
			MessageBox messageBox = new MessageBox(shell, SWT.ICON_WARNING | SWT.OK);				        
	        messageBox.setText("Error");
	        messageBox.setMessage("Log-Configuration file not readable.");
	        messageBox.open();
		}
		
		final Logger logger = LogManager.getLogger(callingClass);
		return logger;
	}
}
