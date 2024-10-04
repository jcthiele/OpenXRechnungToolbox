package org.oxt.toolbox.gui;


import java.io.File;
import java.io.IOException;
import java.io.StringWriter;
import java.net.MalformedURLException;
import java.util.ResourceBundle;

import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.HelpFormatter;
import org.apache.commons.cli.Option;
import org.apache.commons.cli.OptionGroup;
import org.apache.commons.cli.Options;
import org.apache.commons.cli.ParseException;
import org.apache.logging.log4j.Logger;
import org.eclipse.swt.SWT;
import org.eclipse.swt.dnd.DND;
import org.eclipse.swt.dnd.DropTarget;
import org.eclipse.swt.dnd.FileTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.widgets.Shell;
import org.oxt.toolbox.cli.CLICii2ubl;
import org.oxt.toolbox.cli.CLIValidation;
import org.oxt.toolbox.cli.CLIVisualization;
import org.oxt.toolbox.converter.ConverterImpl;
import org.oxt.toolbox.helpers.AppProperties;
import org.oxt.toolbox.helpers.CustomDropTargetAdapter;
import org.oxt.toolbox.helpers.CustomHelpSelectionAdapter;
import org.oxt.toolbox.helpers.CustomSelectionAdapter;
import org.oxt.toolbox.helpers.Internationalization;
import org.oxt.toolbox.helpers.LogConfigurator;
import org.oxt.toolbox.validation.ValidatorImpl;
import org.oxt.toolbox.visualization.VisualizerImpl;

/**
 * Main class of OpenXRechnungToolbox.
 * Builds the main GUI window. 
 * @author Dr. Jan C. Thiele
 * @version 3.0.0
 */
public class AppWindow {

	Display display;
	static public ResourceBundle resourceBundle;
	final Logger logger;
	
	/**
	 * Method to build the menu bar.
	 * @param shell Shell widget
	 * @return menu bar
	 */
	public Menu createMenuBar(Shell shell) {
		Menu menuBar = new Menu(shell, SWT.BAR);
        
        MenuItem cascadeFileMenu = new MenuItem(menuBar, SWT.CASCADE);
        cascadeFileMenu.setText(resourceBundle.getString("fileMenu"));
        
        Menu fileMenu = new Menu(shell, SWT.DROP_DOWN);
        cascadeFileMenu.setMenu(fileMenu);

        MenuItem vizItem = new MenuItem(fileMenu, SWT.PUSH);
        
        vizItem.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("viz.icon")));
        vizItem.setText(resourceBundle.getString("vizMenuItem"));

        MenuItem valiItem = new MenuItem(fileMenu, SWT.PUSH);
        valiItem.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("validator.icon")));
        valiItem.setText(resourceBundle.getString("valiMenuItem"));

        MenuItem lwidItem = new MenuItem(fileMenu, SWT.PUSH);
        lwidItem.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("lwid.icon")));
        lwidItem.setText(resourceBundle.getString("lwidMenuItem"));

        MenuItem converterItem = new MenuItem(fileMenu, SWT.PUSH);
        converterItem.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("converter.icon")));
        converterItem.setText(resourceBundle.getString("converterMenuItem"));
        
        MenuItem exitItem = new MenuItem(fileMenu, SWT.PUSH);
        exitItem.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("exit.icon")));
        exitItem.setText(resourceBundle.getString("exitMenuItem"));
        
        MenuItem cascadeSettingsMenu = new MenuItem(menuBar, SWT.CASCADE);
        cascadeSettingsMenu.setText(resourceBundle.getString("settingsMenu"));
        
        
        Menu settingsMenu = new Menu(shell, SWT.DROP_DOWN);
        cascadeSettingsMenu.setMenu(settingsMenu);

        MenuItem settingsItem= new MenuItem(settingsMenu, SWT.PUSH);
        settingsItem.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("settings.icon")));
        settingsItem.setText(resourceBundle.getString("settingsMenuItem"));

        
        MenuItem cascadeHelpMenu = new MenuItem(menuBar, SWT.CASCADE);
        cascadeHelpMenu.setText(resourceBundle.getString("helpMenu"));
        
        
        Menu helpMenu = new Menu(shell, SWT.DROP_DOWN);
        cascadeHelpMenu.setMenu(helpMenu);

        MenuItem helpItem= new MenuItem(helpMenu, SWT.PUSH);
        helpItem.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("help.icon")));
        helpItem.setText(resourceBundle.getString("helpMenuItem"));
           
        MenuItem aboutItem= new MenuItem(helpMenu, SWT.PUSH);
        aboutItem.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("about.icon")));
        aboutItem.setText(resourceBundle.getString("aboutMenuItem"));
                 
        
        vizItem.addSelectionListener(new CustomSelectionAdapter(shell) {
            public void widgetSelected(SelectionEvent e) {
              HTMLWindow win = new HTMLWindow();
              FileDialog fd = this.fileOpenSelection();
              final String result = fd.open ();
              if ( result != null )
              {
                  final File base = new File ( fd.getFilterPath () );
                  for ( final String name : fd.getFileNames () )
                  {
                	  VisualizerImpl viz = new VisualizerImpl();
                	  File invoiceFile = new File(base,name);
                	  try {
                        StringWriter sw = viz.runVisualization(/*name,*/ invoiceFile.getAbsolutePath(), AppProperties.prop.getProperty("viz.intermediate.ubl.xsl"), AppProperties.prop.getProperty("viz.intermediate.ublcn.xsl"), AppProperties.prop.getProperty("viz.intermediate.cii.xsl"), AppProperties.prop.getProperty("viz.html.xsl"));
                        win.launch(display, viz, null, name, invoiceFile.getAbsolutePath(), sw.toString());
	                  } catch (Exception e1) {
	                	  logger.error(e1.getMessage());
	                      String html = resourceBundle.getString("vizError");
	                      win.launch(display, viz, null, name, invoiceFile.getAbsolutePath(), html);	      				
	                  }
                  }
              }              
            }
          });

        valiItem.addSelectionListener(new CustomSelectionAdapter(shell) {
            public void widgetSelected(SelectionEvent e) {
              HTMLWindow win = new HTMLWindow();
              FileDialog fd = this.fileOpenSelection();
              final String result = fd.open ();
              if ( result != null )
              {
                  final File base = new File ( fd.getFilterPath () );
                  for ( final String name : fd.getFileNames () )
                  {
                	  ValidatorImpl vali = new ValidatorImpl();
                	  File invoiceFile = new File(base,name);
                	  try {
                        String sw = vali.runValidation(invoiceFile.getAbsolutePath(), AppProperties.prop.getProperty("valiVersion"));
                        win.launch(display, null, vali, name, invoiceFile.getAbsolutePath(), sw);
	                  } catch (Exception e1) {
	                	  logger.error(e1.getMessage());
	                      String html = resourceBundle.getString("valiError");	                      
	                      win.launch(display, null, vali, name, invoiceFile.getAbsolutePath(), html);	      				
	                  }
                  }
              }
            }
          });

        
        /**
         * Handle selection and open the Leitweg-ID checker window.
         */
        lwidItem.addSelectionListener(new SelectionAdapter() {
            public void widgetSelected(SelectionEvent e) {
              new LWIDWindow(display);
            }
          });

        /**
         * Handle selection of CII2UBL converter.
         */
        converterItem.addSelectionListener(new CustomSelectionAdapter(shell) {
            public void widgetSelected(SelectionEvent e) {
                FileDialog fd = this.fileOpenSelection();
                final String result = fd.open ();
                if ( result != null )
                {
                    final File base = new File ( fd.getFilterPath () );
                    for ( final String name : fd.getFileNames () )
                    {
                  	  ConverterImpl conv = new ConverterImpl(display);
                  	  File invoiceFile = new File(base,name);
                  	  try {
                  		conv.convert(name, invoiceFile.getAbsolutePath());
  	                  } catch (Exception e1) {
  	                	  logger.error(e1.getMessage());
  	                	  // error dialog
  	                	  MessageBox dialog = new MessageBox(shell, SWT.OK);
  	                	  dialog.setText(AppWindow.resourceBundle.getString("conversion_errorTitle"));
  	                	  dialog.setMessage(invoiceFile+" "+AppWindow.resourceBundle.getString("conversion_errorMessage")+e1.getMessage());
  	                	  dialog.open();
  	                  }
                    }
                }
              }
            });
        
        /**
         * Handle selection and close the application.
         */
        exitItem.addSelectionListener(new SelectionAdapter() {
            public void widgetSelected(SelectionEvent e) {
              System.exit(0);
            }
          });

        /**
         * Handle selection and open settings window.
         */
        settingsItem.addSelectionListener(new SelectionAdapter() {
            public void widgetSelected(SelectionEvent e) {
            	new SettingsWindow(display);
            }
          });
        

        /**
         * Handle selection and open help/manual in a web browser (if installed).
         */
        helpItem.addSelectionListener(new CustomHelpSelectionAdapter(shell, "help_startpage"));
        
        /**
         * Handle selection and open about page in a web browser (if installed).
         */
        aboutItem.addSelectionListener(new CustomHelpSelectionAdapter(shell, "help_aboutpage"));
        
        return menuBar;  
	}

	/**
	 * Method to handle drop event for validation and visualization.
	 * @param shell Shell widget
	 * @param label name of file
	 * @param viz indicator, if called for visualization
	 * @param vali indicator, if called for validation
	 */
	private void dropHandling(Shell shell, Label label, boolean viz, boolean vali) {
        // Allow data to be copied or moved to the drop target
        DropTarget DropTarget = new DropTarget(label, DND.DROP_MOVE| DND.DROP_COPY | DND.DROP_DEFAULT);

        // Receive data in Text or File format
        final FileTransfer fileTransfer = FileTransfer.getInstance();
        Transfer[] types = new Transfer[] {fileTransfer};
        DropTarget.setTransfer(types);
        
        // DropTargetEvent
        DropTarget.addDropListener(new CustomDropTargetAdapter(shell, fileTransfer, viz, vali));
	}
	

	/**
	 * Constructor for main GUI window.
	 * @throws IOException error when properties and/or language file is not found
	 */
	public AppWindow() throws IOException {
		logger = LogConfigurator.LogConfig(AppWindow.class);
		
        // try to load language bundle
        try {
			AppWindow.resourceBundle = Internationalization.loadLanguage(AppProperties.prop.getProperty("language"), AppProperties.prop.getProperty("languages.path"), "AppWindow");
		} catch (MalformedURLException e) {
			logger.error("Language bundle not found!");
			logger.error(e.getLocalizedMessage());
			throw new IOException("Language bundle not found!");
		}         
        if (resourceBundle == null) {
        	logger.error("Language bundle not found!");
        	throw new IOException("Language bundle not found!");        	
        }
       
		this.display = new Display();
		Shell shell = new Shell(this.display, SWT.SHELL_TRIM & (~SWT.RESIZE) & (~SWT.MAX));
		
		
		int frameX = shell.getSize().x - shell.getClientArea().width;
        int frameY = shell.getSize().y - shell.getClientArea().height;
        shell.setSize(503 + frameX, 697 + frameY);
        shell.setText(AppWindow.resourceBundle.getString("appwindow_title"));
        shell.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("app.icon")));
 
        shell.setMenuBar(createMenuBar(shell));
        
        GridLayout gridLayout = new GridLayout();
        gridLayout.numColumns = 1;
        gridLayout.marginHeight = 0;
        gridLayout.marginWidth = 0;
        gridLayout.horizontalSpacing = 0;
        gridLayout.verticalSpacing = 0;
        shell.setLayout(gridLayout);
        
        
		// add drag and drop images     
        Label vizLabel = new Label (shell, SWT.NONE);
        // get image path from resourceBundle to make it language dependent.
        vizLabel.setImage(new Image(shell.getDisplay(), AppWindow.resourceBundle.getString("viz.image")));
        this.dropHandling(shell, vizLabel, true, false);
        
        Label valiLabel = new Label (shell, SWT.NONE);
        // get image path from resourceBundle to make it language dependent.
        valiLabel.setImage(new Image(shell.getDisplay(), AppWindow.resourceBundle.getString("vali.image")));
        this.dropHandling(shell, valiLabel, false, true);
                
		shell.open();

		// run the event loop as long as the window is open
		while (!shell.isDisposed()) {
		    // read the next OS event queue and transfer it to a SWT event
		    if (!this.display.readAndDispatch())
		     {
		    // if there are currently no other OS event to process
		    // sleep until the next OS event is available
		        this.display.sleep();
		     }
		}

		// disposes all associated windows and their components
		this.display.dispose();
		
	}
	

	/**
	 * Entry point.
	 * @param args command line arguments, first argument used for config file path
	 * @throws Exception 
	 */
	public static void main(String[] args) throws Exception {		
		System.setProperty("com.sun.xml.bind.v2.bytecode.ClassTailor.noOptimize","true");
		
		String config = "resources/app.config";

		// Collection of arguments for testing
		
		//--config resources/app2.config

		// -val -i exampleInvoices\XRechnung_v3.0.2\01.01a-INVOICE_ubl.xml -o testreport1.html -v 3.0.2
		
		
		// -viz -i exampleInvoices\XRechnung_v3.0.2\01.01a-INVOICE_ubl.xml -o tesviz.html 
		
		// -viz -i exampleInvoices\XRechnung_v3.0.2\01.01a-INVOICE_ubl.xml -o tesviz.html 
		// -viz -i exampleInvoices\XRechnung_v3.0.2\01.01a-INVOICE_ubl.xml -o tesviz.pdf -p
		
		// -con -i exampleInvoices\XRechnung_v3.0.2\01.01a-INVOICE_uncefact.xml -o testconUBL.xml
		
		Options baseOptions = new Options();
		
		OptionGroup vizvalGroup = new OptionGroup();
        Option vizOption = new Option("viz", "visualization", false, "run visualization without GUI in Command Line Interface (CLI) mode.");
        vizOption.setRequired(false);
        vizvalGroup.addOption(vizOption);
        Option valOption = new Option("val", "validation", false, "run validation without GUI in Command Line Interface (CLI) mode.");
        valOption.setRequired(false);
        vizvalGroup.addOption(valOption);
        Option convOption = new Option("con", "conversion", false, "run conversion from CII to UBL without GUI in Command Line Interface (CLI) mode.");
        convOption.setRequired(false);
        vizvalGroup.addOption(convOption);
        baseOptions.addOptionGroup(vizvalGroup);

        Option vizInputOption = new Option("i", "input", true, "input invoice file path for cli.");
        vizInputOption.setRequired(false);
        baseOptions.addOption(vizInputOption);
        Option vizOutputOption = new Option("o", "output", true, "output file path for cli (either validation report or visualization file).");
        vizOutputOption.setRequired(false);
        baseOptions.addOption(vizOutputOption);
        Option vizPdfOption = new Option("p", "pdf", false, "visualization as pdf (instead of html) for cli visualization.");
        vizPdfOption.setRequired(false);
        baseOptions.addOption(vizPdfOption);                
        Option valValiVersionOption = new Option("v", "valiversion", true, "version of XRechnung to validate against for cli validation, e.g. 3.0.2. Must be in list of version of config file.");
        valValiVersionOption.setRequired(false);
        baseOptions.addOption(valValiVersionOption);
        Option configOption = new Option("c", "config", true, "config file path.");
        configOption.setRequired(false);
        baseOptions.addOption(configOption);

        org.apache.commons.cli.CommandLineParser parser = new org.apache.commons.cli.DefaultParser();
        HelpFormatter help = new HelpFormatter();

        try {
        	CommandLine cmd = parser.parse(baseOptions, args);

        	if (cmd.hasOption("config")) {
	            String alternativeConfig = cmd.getOptionValue("config");
	            if (alternativeConfig != null) {
	            	if (alternativeConfig.length() > 0) {
	                	File configFile = new File(alternativeConfig);
	                	if (configFile.exists()) {
	                		config = alternativeConfig;
	                	} else {
	                		throw new ParseException("config file not found at: "+alternativeConfig);
	                	}
	                }
	            }  
        	}
        	
        	if (cmd.hasOption("visualization") || cmd.hasOption("validation") || cmd.hasOption("conversion")) {
	        	// CLI mode
        		if (cmd.hasOption("visualization")) {
            		if (cmd.hasOption("input") & cmd.hasOption("output")) {
            			CLIVisualization visualization = new CLIVisualization();
            			visualization.cliVisualization(cmd.getOptionValue("input"), cmd.getOptionValue("output"), cmd.hasOption("pdf"), config);
            		}
            		else {
            			throw new ParseException("not enough arguments for cli visualition");
            		}
        		}
        		if (cmd.hasOption("validation")) {
            		if (cmd.hasOption("input") & cmd.hasOption("output") & cmd.hasOption("valiversion")) {
            			CLIValidation validation = new CLIValidation();
            			validation.cliValidation(cmd.getOptionValue("input"), cmd.getOptionValue("output"), cmd.getOptionValue("valiversion"), config);            			
            		}
            		else {
            			throw new ParseException("not enough arguments for cli validation");
            		}            		
        		}
        		if (cmd.hasOption("conversion")) {
        			if (cmd.hasOption("input") & cmd.hasOption("output")) {
        				CLICii2ubl conversion = new CLICii2ubl();
        				conversion.cliCii2ubl(cmd.getOptionValue("input"), cmd.getOptionValue("output"), config);
        			}
            		else {
            			throw new ParseException("not enough arguments for cli conversion");
            		}          			
        		}
	        } 
	        else {
	        	// GUI mode
	    		AppProperties.initializeProperties(config);
	    		if (AppProperties.prop == null) {
	    			Display display = new Display();
	    			Shell shell = new Shell(display);
	    			MessageBox messageBox = new MessageBox(shell, SWT.ICON_WARNING | SWT.OK);				        
	    	        messageBox.setText("Error");
	    	        messageBox.setMessage("Properties file not found.");
	    	        messageBox.open();
	    		}
	    		
	    		new AppWindow();	        	
	        }
        } catch (ParseException e) {
	        System.out.println(e.getMessage());
	        help.printHelp("\n"
	        		+ "Gui mode: java -Dlog4j.configuration=./resources/log4j2.xml -jar OpenXRechnungToolbox.jar --config <path to config file> \n"
	        		+ "CLI mode validation: java -Dlog4j.configuration=./resources/log4j2.xml -jar OpenXRechnungToolbox.jar --validation --input <path to invoice file> --output <path of report file> --valiVersion <version of XRechnung to validate against> \n"
	        		+ "CLI mode visualization: java -Dlog4j.configuration=./resources/log4j2.xml -jar OpenXRechnungToolbox.jar --visualization --input <path to invoice file> --output <path of visualization file> --type <pdf or html>", baseOptions);
	        System.exit(1);
	    }
        				
	}

}
