package org.oxt.toolbox.helpers;

import java.io.File;
import java.io.StringWriter;

import org.eclipse.swt.dnd.DropTargetAdapter;
import org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.dnd.FileTransfer;
import org.eclipse.swt.widgets.Shell;
import org.oxt.toolbox.gui.HTMLWindow;
import org.oxt.toolbox.validation.ValidatorImpl;
import org.oxt.toolbox.visualization.VisualizerImpl;
import org.apache.logging.log4j.Logger;

/**
 * Class to define a custom drop target adapter.
 * Consumes a file or set of files and processes he validation of visualization.
 * @author Dr. Jan C. Thiele
 */
public class CustomDropTargetAdapter extends DropTargetAdapter {

	Logger logger;
	Shell shell;
	boolean viz;
	boolean vali;
	FileTransfer fileTransfer;
	
	/**
	 * Constructor.
	 * @param shell Shell widget
	 * @param fileTransfer drag-and-drop file transfer
	 * @param viz indicator, if called for visualization
	 * @param vali indicator, if called for validation
	 */
	public CustomDropTargetAdapter(Shell shell, FileTransfer fileTransfer, boolean viz, boolean vali) {
		this.logger = LogConfigurator.LogConfig(CustomDropTargetAdapter.class);
		this.shell = shell;
		this.viz = viz;
		this.vali = vali;
		this.fileTransfer = fileTransfer;
	}
	
	/**
	 * Method to process dropped files.
	 * Creates either the visualization of validation report.
	 */
	@Override
    public void drop(DropTargetEvent event) {
        if (fileTransfer.isSupportedType(event.currentDataType)){
            //list out selected file
            String[] files = (String[])event.data;
            for (int i = 0; i < files.length; i++) {
                String[] split = files[i].split("\\.");
                String ext = split[split.length - 1];
                // Set Images format "xml"
                if(ext.equalsIgnoreCase("xml"))
                {
                	File invoiceFile = new File(files[i]);                	
                	if (viz) {
                		HTMLWindow win = new HTMLWindow();
                		VisualizerImpl viz = new VisualizerImpl();
                		try {
                            StringWriter sw = viz.runVisualization(invoiceFile.getAbsolutePath(), AppProperties.prop.getProperty("viz.intermediate.ubl.xsl"), AppProperties.prop.getProperty("viz.intermediate.ublcn.xsl"), AppProperties.prop.getProperty("viz.intermediate.cii.xsl"), AppProperties.prop.getProperty("viz.html.xsl"));
                            win.launch(shell.getDisplay(), viz, null, invoiceFile.getName(), invoiceFile.getAbsolutePath(), sw.toString());
                		} catch (Exception e1) {
                			logger.error(e1.getMessage());
                			//e1.printStackTrace();
                			String html = "<html><body>Datei kann nicht visualisiert werden.</body></html>";
	  	                    win.launch(shell.getDisplay(), viz, null, invoiceFile.getName(), invoiceFile.getAbsolutePath(), html);	      				
                		}
                	}
                	else if (vali) {
                		HTMLWindow win = new HTMLWindow();
                		ValidatorImpl vali = new ValidatorImpl();
                		try {
                			String sw = vali.runValidation(invoiceFile.getAbsolutePath(), AppProperties.prop.getProperty("valiVersion"));
                			win.launch(shell.getDisplay(), null, vali, invoiceFile.getName(), invoiceFile.getAbsolutePath(), sw);
                		} catch (Exception e1) {
                			logger.error(e1.getMessage());
                			String html = "<html><body>Datei kann nicht geprüft werden.</body></html>";
	  	                    win.launch(shell.getDisplay(), null, vali, invoiceFile.getName(), invoiceFile.getAbsolutePath(), html);	      				
	  	                  }                		
                	}
                	else {
	   	                 String html = "<html><body>Bei der Datei ist ein unbekannter Fehler aufgetreten.</body></html>";
	   	                 HTMLWindow win = new HTMLWindow();
	   	                 ValidatorImpl vali = new ValidatorImpl();
	   	                 win.launch(shell.getDisplay(), null, vali, invoiceFile.getName(), invoiceFile.getAbsolutePath(), html);	
                	}
                }
                else
                {
	                 String html = "<html><body>Die Datei ist keine XML-Datei.</body></html>";
	                 HTMLWindow win = new HTMLWindow();
	                 ValidatorImpl vali = new ValidatorImpl();
	                 File invoiceFile = new File(files[i]); 
	                 win.launch(shell.getDisplay(), null, vali, invoiceFile.getName(), invoiceFile.getAbsolutePath(), html);	      				
                }
            }
        }
    }//End drop()
	
}
