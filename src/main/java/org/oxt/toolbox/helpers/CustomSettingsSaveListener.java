package org.oxt.toolbox.helpers;

import java.io.FileOutputStream;
import java.io.IOException;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.MessageBox;
import org.oxt.toolbox.gui.AppWindow;
import org.oxt.toolbox.gui.SettingsWindow;
import org.apache.logging.log4j.Logger;

/**
 * Class to define a custom save listener for settings file.
 * @author Dr. Jan C. Thiele
 */
public class CustomSettingsSaveListener implements Listener {

	Logger logger;
	SettingsWindow sw;
	
	public CustomSettingsSaveListener(SettingsWindow sw) {
		this.logger = LogConfigurator.LogConfig(CustomSettingsSaveListener.class);
		this.sw = sw;
	}
	
	/**
	 * Method to handle event of settings saving.
	 */
	@Override
	public void handleEvent(Event event) {
        AppProperties.prop.setProperty("language", this.sw.getLanguageCombo().getItem(this.sw.getLanguageCombo().getSelectionIndex()));
        AppProperties.prop.setProperty("viz.language", this.sw.getVizLanguageCombo().getItem(this.sw.getVizLanguageCombo().getSelectionIndex()));
        AppProperties.prop.setProperty("viz.codelistresolve", String.valueOf(this.sw.getResolveCodelists().getSelection()));
        AppProperties.prop.setProperty("valiVersion", this.sw.getValiVersionCombo().getItem(this.sw.getValiVersionCombo().getSelectionIndex()));
    	
        FileOutputStream outputStrem;
		try {
			outputStrem = new FileOutputStream(AppProperties.fileName);
	        //Storing the properties file
	        AppProperties.prop.store(outputStrem, "");
		} catch (IOException e) {
			logger.error(e.getMessage());
	    	MessageBox dialog = new MessageBox(this.sw.getShell(), SWT.OK);
	    	
			dialog.setText(AppWindow.resourceBundle.getString("settings_save_errorTitle"));
			dialog.setMessage(AppWindow.resourceBundle.getString("settings_save_error")+e.getMessage());			
			dialog.open();
		}
         
    	// confirmation dialog
    	MessageBox dialog = new MessageBox(this.sw.getShell(), SWT.OK);
		dialog.setText(AppWindow.resourceBundle.getString("settings_saveTitle"));	
		dialog.setMessage(AppWindow.resourceBundle.getString("settings_saveConfirmation"));
		dialog.open();
    	
    	this.sw.getShell().close();

	}

	
}
