package org.oxt.toolbox.gui;

import java.io.File;
import java.io.IOException;
import java.io.StringWriter;

import javax.xml.transform.TransformerException;

import org.apache.fop.apps.FOPException;
import org.eclipse.swt.*;
import org.eclipse.swt.browser.*;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.*;
import org.eclipse.swt.widgets.*;
import org.oxt.toolbox.helpers.AppProperties;
import org.oxt.toolbox.helpers.CustomHelpSelectionAdapter;
import org.oxt.toolbox.helpers.CustomSelectionAdapter;
import org.oxt.toolbox.helpers.LogConfigurator;
import org.oxt.toolbox.validation.ValidatorImpl;
import org.oxt.toolbox.visualization.VisualizerImpl;
import org.apache.logging.log4j.Logger;

/**
 * Class to create HTML browser window to display 
 * XRechnung HTML visualization as well as 
 * XRechnung validation tool HTML report.
 * @author Dr. Jan C. Thiele
 */
public class HTMLWindow {

	Logger logger;
	Shell shell;
	String currentInvoice;
	String currentInvoicePath;
	VisualizerImpl viz = null;
	ValidatorImpl val = null;

	/**
	 * Method to create menu bar.
	 * @return menu
	 */
	public Menu createMenuBar() {
		Menu menuBar = new Menu(shell, SWT.BAR);
        
        MenuItem cascadeFileMenu = new MenuItem(menuBar, SWT.CASCADE);
        cascadeFileMenu.setText(AppWindow.resourceBundle.getString("html_fileMenu"));
        
        Menu fileMenu = new Menu(shell, SWT.DROP_DOWN);
        cascadeFileMenu.setMenu(fileMenu);

        if (this.viz == null) {
        	MenuItem vizItem = new MenuItem(fileMenu, SWT.PUSH);
        	vizItem.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("viz.icon")));
        	vizItem.setText(AppWindow.resourceBundle.getString("html_vizMenuItem"));
	        
        	vizItem.addSelectionListener(new SelectionAdapter() {
	            public void widgetSelected(SelectionEvent e) {
	              HTMLWindow win = new HTMLWindow();
	              VisualizerImpl viz = new VisualizerImpl();
	              try {
                      StringWriter sw = viz.runVisualization(currentInvoice, currentInvoicePath, AppProperties.prop.getProperty("viz.intermediate.ubl.xsl"), AppProperties.prop.getProperty("viz.intermediate.ublcn.xsl"), AppProperties.prop.getProperty("viz.intermediate.cii.xsl"), AppProperties.prop.getProperty("viz.html.xsl"));
	                  win.launch(shell.getDisplay(), viz, null, currentInvoice, currentInvoicePath, sw.toString());	        
	                } catch (Exception e1) {
	                  logger.error(e1.getMessage());
	                  String html = AppWindow.resourceBundle.getString("html_vizerror_part1")+e1.getMessage()+"</body></html>";
	                  win.launch(shell.getDisplay(), viz, null, currentInvoice, currentInvoicePath, html);	        
	                }        		
	            }
	          });
        }
        else if (this.val == null) {
        	MenuItem valiItem = new MenuItem(fileMenu, SWT.PUSH);
        	valiItem.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("validator.icon")));
        	valiItem.setText(AppWindow.resourceBundle.getString("html_valiMenuItem"));
        	
	        valiItem.addSelectionListener(new CustomSelectionAdapter(this.shell, this.currentInvoice, this.currentInvoicePath, this.logger) {
	            public void widgetSelected(SelectionEvent e) {
	              HTMLWindow win = new HTMLWindow();
	        	  ValidatorImpl vali = new ValidatorImpl();
	              try {
	                  //StringWriter sw = vali.runValidation(currentInvoice, currentInvoicePath, AppProperties.prop.getProperty("validator.scenario"));
	                  //win.launch(shell.getDisplay(), null, vali, currentInvoice, currentInvoicePath, sw.toString());	        
	                  String sw = vali.runValidation(currentInvoice, currentInvoicePath, AppProperties.prop.getProperty("validator.scenario"));
	                  win.launch(shell.getDisplay(), null, vali, currentInvoice, currentInvoicePath, sw);	        
	                } catch (Exception e1) {
	                  logger.error(e1.getMessage());
	              	  String html = AppWindow.resourceBundle.getString("html_vizerror_part1")+e1.getMessage()+"</body></html>";
	                  win.launch(shell.getDisplay(), null, vali, currentInvoice, currentInvoicePath, html);	        
	                }
	            }
	          });
        }
        
        MenuItem saveItem = new MenuItem(fileMenu, SWT.PUSH);
        saveItem.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("save.icon")));
        saveItem.setText(AppWindow.resourceBundle.getString("html_saveMenuItem"));
        
        MenuItem saveAsItem = new MenuItem(fileMenu, SWT.PUSH);
        saveAsItem.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("saveas.icon")));
        saveAsItem.setText(AppWindow.resourceBundle.getString("html_saveAsMenuItem"));

        if (this.viz != null) {
	        MenuItem saveAsPdfItem = new MenuItem(fileMenu, SWT.PUSH);
	        saveAsPdfItem.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("saveaspdf.icon")));
	        saveAsPdfItem.setText(AppWindow.resourceBundle.getString("html_saveAsPdfMenuItem"));

	        /**
	         * Add selection listener for Save As PDF... menu entry.
	         */
	        saveAsPdfItem.addSelectionListener(new CustomSelectionAdapter(this.shell, this.currentInvoice, this.currentInvoicePath, this.logger) {
	            public void widgetSelected(SelectionEvent e) {
	              try {		  
		        		int xmlindex = currentInvoice.lastIndexOf(".xml");
			        	int index = currentInvoicePath.lastIndexOf(currentInvoice);
			        	String path = currentInvoicePath.substring(0, index);		        	
	        			String outfile = this.fileSavePdfSelection(currentInvoice.substring(0, xmlindex)+"_"+AppWindow.resourceBundle.getString("html_vizFileName")+".pdf", path);		        			
			        	if (outfile != null) {
		        			File file = new File(outfile);
				        	if (file != null) {
								viz.transformAndSaveToPDF(AppProperties.prop.getProperty("viz.pdf.xsl"), file.getAbsolutePath());
		        			}
			        	}
					} catch (IOException | FOPException | TransformerException ex) {
						logger.error(ex.getMessage());
						MessageBox messageBox = new MessageBox(shell, SWT.ICON_WARNING | SWT.OK);				        
				        messageBox.setText(AppWindow.resourceBundle.getString("html_saveerrortext"));
				        messageBox.setMessage(ex.getMessage());
				        messageBox.open();
					}
	            }
	          });	        
        }
        
        MenuItem exitItem = new MenuItem(fileMenu, SWT.PUSH);
        exitItem.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("exit.icon")));
        exitItem.setText(AppWindow.resourceBundle.getString("html_exitMenuItem"));
        
        MenuItem cascadeHelpMenu = new MenuItem(menuBar, SWT.CASCADE);
        cascadeHelpMenu.setText(AppWindow.resourceBundle.getString("html_helpMenu"));
        
        Menu helpMenu = new Menu(shell, SWT.DROP_DOWN);
        cascadeHelpMenu.setMenu(helpMenu);

        MenuItem helpItem= new MenuItem(helpMenu, SWT.PUSH);
        helpItem.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("help.icon")));
        helpItem.setText(AppWindow.resourceBundle.getString("html_helpItemMenu"));

        /**
         * Handle selection and open help/manual in a web browser (if installed).
         */
        if (this.viz == null) {
            helpItem.addSelectionListener(new CustomHelpSelectionAdapter(shell, "help_valipage"));
        } else {
            helpItem.addSelectionListener(new CustomHelpSelectionAdapter(shell, "help_vizpage"));
        }
        
        /**
         * Add selection listener for Save... menu entry.
         */
        saveItem.addSelectionListener(new CustomSelectionAdapter(this.shell, this.currentInvoice, this.currentInvoicePath, this.logger) {
            public void widgetSelected(SelectionEvent e) {
	        	try {
	        		int index = currentInvoicePath.lastIndexOf(".xml");
	        		if (viz != null & index > 0) {
		        		String filePath = currentInvoicePath.substring(0, index)+"_"+AppWindow.resourceBundle.getString("html_vizFileName")+".html";
						viz.saveAs(filePath);
		        	}
		        	else if (val != null & index > 0) {
		        		String filePath = currentInvoicePath.substring(0, index)+"_"+AppWindow.resourceBundle.getString("html_valiFileName")+".html";
		        		val.saveAs(filePath);
		        	}
				} catch (IOException ex) {
					logger.error(ex.getMessage());
					MessageBox messageBox = new MessageBox(shell, SWT.ICON_WARNING | SWT.OK);				        
			        messageBox.setText(AppWindow.resourceBundle.getString("html_saveerrortext"));
			        messageBox.setMessage(ex.getMessage());
			        messageBox.open();
				}
            }
          });

        /**
         * Add selection listener for Save As... menu entry.
         */
        saveAsItem.addSelectionListener(new CustomSelectionAdapter(this.shell, this.currentInvoice, this.currentInvoicePath, this.logger) {
            public void widgetSelected(SelectionEvent e) {
              try {		  
	        		int xmlindex = currentInvoice.lastIndexOf(".xml");
		        	int index = currentInvoicePath.lastIndexOf(currentInvoice);
		        	String path = currentInvoicePath.substring(0, index);		        	
		        		if (viz != null) {
		        			String outfile = this.fileSaveSelection(currentInvoice.substring(0, xmlindex)+"_"+AppWindow.resourceBundle.getString("html_vizFileName")+".html", path);		        			
				        	if (outfile != null) {
			        			File file = new File(outfile);
					        	if (file != null) {
									viz.saveAs(file.getAbsolutePath());
			        			}
				        	}
			        	}
			        	else if (val != null) {		        		
		        			String outfile = this.fileSaveSelection(currentInvoice.substring(0, xmlindex)+"_"+AppWindow.resourceBundle.getString("html_valiFileName")+".html", path);		        			
		        			if (outfile != null) {
			        			File file = new File(outfile);
					        	if (file != null) {
					        		val.saveAs(file.getAbsolutePath());
					        	}
		        			}
			        	}		        		        	
				} catch (IOException ex) {
					logger.error(ex.getMessage());
					MessageBox messageBox = new MessageBox(shell, SWT.ICON_WARNING | SWT.OK);				        
			        messageBox.setText(AppWindow.resourceBundle.getString("html_saveerrortext"));
			        messageBox.setMessage(ex.getMessage());
			        messageBox.open();
				}
            }
          });

        /**
         * Add selection listener for Close menu entry.
         */
        exitItem.addSelectionListener(new SelectionAdapter() {
            public void widgetSelected(SelectionEvent e) {
              shell.close();
            }
          });
        
        return menuBar;  
	}

	/**
	 * Method to create and fill browser window.
	 * @param display Display widget
	 * @param viz instance of VisualizerImpl
	 * @param val instance of ValidatorImpl
	 * @param currentInvoice name of used invoice
	 * @param currentInvoicePath path of used invoice
	 * @param html html string to be displayed (visualization or validation report)
	 */
	public void launch(Display display, VisualizerImpl viz, ValidatorImpl val, String currentInvoice, String currentInvoicePath, String html) {
		this.logger = LogConfigurator.LogConfig(HTMLWindow.class);

		this.viz = viz;
		this.val = val;
		this.currentInvoice = currentInvoice;
		this.currentInvoicePath = currentInvoicePath;
			
        this.shell = new Shell(display);
        GridLayout gridLayout = new GridLayout();
        gridLayout.numColumns = 3;
        shell.setLayout(gridLayout);
        shell.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("app.icon")));
        shell.setText(this.currentInvoice);
        shell.setMenuBar(createMenuBar());
        
        GridData data = new GridData();
        data.horizontalSpan = 3;
 
        final Browser browser = new Browser(shell, SWT.NONE);
        data = new GridData();
        data.horizontalAlignment = GridData.FILL;
        data.verticalAlignment = GridData.FILL;
        data.horizontalSpan = 3;
        data.grabExcessHorizontalSpace = true;
        data.grabExcessVerticalSpace = true;
        browser.setLayoutData(data);
 
        final Label status = new Label(shell, SWT.NONE);
        data = new GridData(GridData.FILL_HORIZONTAL);
        data.horizontalSpan = 2;
        status.setLayoutData(data);
 
        final ProgressBar progressBar = new ProgressBar(shell, SWT.NONE);
        data = new GridData();
        data.horizontalAlignment = GridData.END;
        progressBar.setLayoutData(data);

        shell.open();
        browser.setText(html);
	}
	
}
