package org.oxt.toolbox.helpers;

import java.awt.Desktop;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.widgets.Shell;
import org.oxt.toolbox.gui.AppWindow;
import org.oxt.toolbox.gui.HTMLWindow;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.oxt.toolbox.helpers.LogConfigurator;

/**
 * Helper class to implement a custom selection adapter for help page opening in external browser.
 * @author Dr. Jan C. Thiele
 *
 */
public class CustomHelpSelectionAdapter extends SelectionAdapter {
	
	Logger logger;
	String helppage;
	Shell shell;
	
	/**
	 * Constructor.
	 * @param shell shell widget
	 * @param helppage string to key of current help page entry
	 */
	public CustomHelpSelectionAdapter(Shell shell, String helppage) {
		this.logger = LogConfigurator.LogConfig(CustomHelpSelectionAdapter.class);
		this.helppage = helppage;
		this.shell = shell;
	}
	
	/**
	 * Method to open help page in external browser.
	 */
    public void widgetSelected(SelectionEvent e) {	   
        try {
        	File htmlFile = new File(AppWindow.resourceBundle.getString(this.helppage)); 
        	URI uri = htmlFile.toURI();
        	Desktop.getDesktop().browse(uri);
		} catch (IOException e1) {
			logger.error(e1.getMessage());
			MessageBox messageBox = new MessageBox(this.shell, SWT.ICON_WARNING | SWT.OK);				        
	        messageBox.setText(AppWindow.resourceBundle.getString("help_error_title"));			        
	        messageBox.setMessage(AppWindow.resourceBundle.getString("help_error"));
	        messageBox.open();					
	        //logger.error("help_error");
	        //logger.error(e1.getMessage());
		}
    }

}
