package org.oxt.toolbox.helpers;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.widgets.Shell;
import org.oxt.toolbox.gui.AppWindow;
import org.apache.logging.log4j.Logger;


/**
 * Class to define a custom selection adapter
 * for file(s) selection dialog to process either the 
 * validation report or visualization.
 * @author Dr. Jan C. Thiele
 */
public class CustomSelectionAdapter extends SelectionAdapter {

	Display display;
	Shell shell;
	String currentInvoice;
	String currentInvoicePath;
	Logger logger;
	
	/**
	 * Constructor.
	 * @param s Shell widget
	 */
	public CustomSelectionAdapter(Shell s) {
		this.shell = s;
		this.display = s.getDisplay();
	}
	
	/**
	 * Constructor with parameters.
	 * @param s shell
	 * @param currentInvoice name of current invoice
	 * @param currentInvoicePath path of current invoice file
	 * @param logger logger instance
	 */
	public CustomSelectionAdapter(Shell s, String currentInvoice, String currentInvoicePath, Logger logger) {
		this.shell = s;
		this.display = s.getDisplay();
		this.currentInvoice = currentInvoice;
		this.currentInvoicePath = currentInvoicePath;
		this.logger = logger;
	}
	
	/**
	 * Method to create and return file open dialog.
	 * @return file open dialog
	 */
	public FileDialog fileOpenSelection() {
        FileDialog fd = new FileDialog(this.shell, SWT.OPEN | SWT.MULTI);
        fd.setText(AppWindow.resourceBundle.getString("fileSelection"));        
        fd.setFilterPath("user.home");
        String[] filterExt = { "*.xml"};
        fd.setFilterExtensions(filterExt);
        return fd;
	}
	
	/**
	 * Method to create save dialog and return file path.
	 * @param initialFile initial file
	 * @param initialPath initial file path
	 * @return path to selected file destination
	 */
	public String fileSaveSelection(String initialFile, String initialPath) {
        FileDialog fd = new FileDialog(this.shell, SWT.SAVE );
        fd.setText(AppWindow.resourceBundle.getString("fileSelection"));        
        fd.setFilterPath(initialPath);
        fd.setFileName(initialFile);
        String[] filterExt = { "*.html"};
        fd.setFilterExtensions(filterExt);        
        return fd.open();
	}

	/**
	 * Method to create save pdf dialog and return file path.
	 * @param initialFile initial file
	 * @param initialPath initial file path
	 * @return path to selected file destination
	 */
	public String fileSavePdfSelection(String initialFile, String initialPath) {
        FileDialog fd = new FileDialog(this.shell, SWT.SAVE );
        fd.setText(AppWindow.resourceBundle.getString("fileSelection"));        
        fd.setFilterPath(initialPath);
        fd.setFileName(initialFile);
        String[] filterExt = { "*.pdf"};
        fd.setFilterExtensions(filterExt);        
        return fd.open();
	}
	
}
