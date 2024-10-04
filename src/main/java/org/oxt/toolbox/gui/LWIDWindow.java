package org.oxt.toolbox.gui;

import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.oxt.toolbox.helpers.AppProperties;
import org.oxt.toolbox.helpers.CustomHelpSelectionAdapter;
import org.oxt.toolbox.helpers.LogConfigurator;
import org.oxt.toolbox.leitwegcheck.CheckDigitException;
import org.oxt.toolbox.leitwegcheck.LeitwegCheckerImpl;
import org.apache.logging.log4j.Logger;


/**
 * Class to create Leitweg-ID checking/calculation window.
 * @author Dr. Jan C. Thiele
 */
public class LWIDWindow {
	
	Logger logger;
	Display display;
	Shell shell;
	Text grobadress1;
	Text feinadress1;
	Text checksum1;
	Text grobadress1X;
	Text feinadress1X;
	Text checksum1X;
	CLabel checkResult;
	CLabel checkResultImage;
	
	/**
	 * Create menu bar for Leitweg-ID window.
	 * @return menu bar
	 */
	private Menu createMenuBar() {
		Menu menuBar = new Menu(shell, SWT.BAR);
        
        MenuItem cascadeFileMenu = new MenuItem(menuBar, SWT.CASCADE);
        cascadeFileMenu.setText("&Datei");
        
        Menu fileMenu = new Menu(shell, SWT.DROP_DOWN);
        cascadeFileMenu.setMenu(fileMenu);

        MenuItem exitItem = new MenuItem(fileMenu, SWT.PUSH);
        exitItem.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("exit.icon")));
        exitItem.setText(AppWindow.resourceBundle.getString("lwid_exitMenuItem"));
        
        exitItem.addSelectionListener(new SelectionAdapter() {
            public void widgetSelected(SelectionEvent e) {
              shell.close();
            }
          });
        
        MenuItem cascadeHelpMenu = new MenuItem(menuBar, SWT.CASCADE);
        cascadeHelpMenu.setText(AppWindow.resourceBundle.getString("lwid_helpMenu"));
        
        Menu helpMenu = new Menu(shell, SWT.DROP_DOWN);
        cascadeHelpMenu.setMenu(helpMenu);

        MenuItem helpItem= new MenuItem(helpMenu, SWT.PUSH);
        helpItem.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("help.icon")));
        helpItem.setText(AppWindow.resourceBundle.getString("lwid_helpMenuItem"));

        /**
         * Handle selection and open help/manual in a web browser (if installed).
         */
        helpItem.addSelectionListener(new CustomHelpSelectionAdapter(shell, "help_lwidpage"));
        
        return menuBar;
	}
	
	/**
	 * Main class to create and open window.
	 * @param display Display widget
	 */
	public LWIDWindow(Display display) {
			this.logger = LogConfigurator.LogConfig(HTMLWindow.class);
			
			this.display = display;
			this.shell = new Shell(this.display);

			int frameX = shell.getSize().x - shell.getClientArea().width;
	        int frameY = shell.getSize().y - shell.getClientArea().height;
	        shell.setSize(480 + frameX, 440 + frameY);
	        shell.setText(AppWindow.resourceBundle.getString("lwidt_title"));
	        
	        shell.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("app.icon")));
	 
	        shell.setMenuBar(createMenuBar());
	        
	        GridLayout gridLayout = new GridLayout();
	        gridLayout.numColumns = 5;
	        gridLayout.marginHeight = 10;
	        gridLayout.marginWidth = 20;
	        gridLayout.horizontalSpacing = 5;
	        gridLayout.verticalSpacing = 30;
	        shell.setLayout(gridLayout);

	      
	        //************************************************************************      
	        
	        Group calcGroup = new Group(shell, SWT.NULL);
	        Font font = calcGroup.getFont();
	        calcGroup.setFont(new org.eclipse.swt.graphics.Font(null, font.getFontData()[0].getName(), font.getFontData()[0].getHeight(), SWT.BOLD));	        
	        calcGroup.setText(AppWindow.resourceBundle.getString("lwid_calcChecksum"));

	        GridLayout gridLayout2 = new GridLayout();
	        gridLayout2.numColumns = 5;
	        gridLayout2.marginHeight = 20;
	        calcGroup.setLayout(gridLayout2);
	        GridData gridData = new GridData(GridData.HORIZONTAL_ALIGN_FILL);
	        gridData.horizontalSpan = 5;
	        calcGroup.setLayoutData(gridData);	        
	        	        
	        Label grobadress1Label = new Label(calcGroup, SWT.SHADOW_NONE | SWT.CENTER);
	        grobadress1Label.setText(AppWindow.resourceBundle.getString("lwid_roughAdress"));	       
	        
	        Label emptyFill1 = new Label(calcGroup, SWT.SHADOW_NONE);
	        emptyFill1.setText("-");
	        
	        Label feinadress1Label = new Label(calcGroup, SWT.SHADOW_NONE | SWT.CENTER);
	        feinadress1Label.setText(AppWindow.resourceBundle.getString("lwid_fineAdress"));
	        
	        Label emptyFill2 = new Label(calcGroup, SWT.SHADOW_NONE);
	        emptyFill2.setText("-");

	        Label checksum1Label = new Label(calcGroup, SWT.SHADOW_NONE | SWT.CENTER);
	        checksum1Label.setText(AppWindow.resourceBundle.getString("lwid_checksum"));
	        
	        grobadress1 = new Text(calcGroup, SWT.SINGLE | SWT.BORDER);
	        grobadress1.setMessage("<"+AppWindow.resourceBundle.getString("lwid_roughAdress")+">");
	        grobadress1.setTextLimit(12);
	        
	        Label separatorLabel = new Label(calcGroup, SWT.SHADOW_NONE);
	        separatorLabel.setText("-");
	        feinadress1 = new Text(calcGroup, SWT.SINGLE | SWT.BORDER);
	        feinadress1.setMessage("<"+AppWindow.resourceBundle.getString("lwid_fineAdress")+">");
	        feinadress1.setTextLimit(30);
	        
	        Label separatorLabel2 = new Label(calcGroup, SWT.SHADOW_NONE);
	        separatorLabel2.setText("-");
	        checksum1 = new Text(calcGroup, SWT.SINGLE | SWT.BORDER);
	        checksum1.setMessage("<"+AppWindow.resourceBundle.getString("lwid_checksum")+">");
	        checksum1.setEditable(false);
	        checksum1.setTextLimit(2);
	        
	        Button enter = new Button(calcGroup, SWT.PUSH);
	        enter.setText(AppWindow.resourceBundle.getString("lwid_calcChecksum"));
	        GridData gridData3 = new GridData(GridData.HORIZONTAL_ALIGN_END);
	        gridData3.horizontalSpan = 5;
	        enter.setLayoutData(gridData3);

	        enter.addListener(SWT.Selection, new Listener()
	        {
	            @Override
	            public void handleEvent(Event event)
	            {
	                LeitwegCheckerImpl lwid = new LeitwegCheckerImpl();
	                String checkSum;
					try {
						checkSum = lwid.runLeitwegChecksumCalculation(grobadress1.getText()+feinadress1.getText());
		                checksum1.setText(checkSum);
					} catch (CheckDigitException e) {
						logger.error(e.getMessage());
						MessageBox messageBox = new MessageBox(shell, SWT.ICON_WARNING | SWT.OK);				        
				        messageBox.setText(AppWindow.resourceBundle.getString("lwid_calcError"));
				        messageBox.setMessage(e.getMessage());
				        messageBox.open();
					}
	            }
	        });
	        
	       //************************************************************************
	       
	        Group checkGroup = new Group(shell, SWT.NULL);
	        Font font2 = checkGroup.getFont();
	        checkGroup.setFont(new org.eclipse.swt.graphics.Font(null, font2.getFontData()[0].getName(), font2.getFontData()[0].getHeight(), SWT.BOLD));	        
	        checkGroup.setText(AppWindow.resourceBundle.getString("lwid_checkLwid"));
	        
	        GridLayout gridLayout2X = new GridLayout();
	        gridLayout2X.numColumns = 5;
	        gridLayout2X.marginHeight = 20;
	        checkGroup.setLayout(gridLayout2X);
	        GridData gridDataX = new GridData(GridData.HORIZONTAL_ALIGN_FILL);
	        gridDataX.horizontalSpan = 5;
	        checkGroup.setLayoutData(gridDataX);	        	        
	        
	        Label grobadress1LabelX = new Label(checkGroup, SWT.SHADOW_NONE | SWT.CENTER);
	        grobadress1LabelX.setText(AppWindow.resourceBundle.getString("lwid_roughAdress"));

	        Label emptyFill1X = new Label(checkGroup, SWT.SHADOW_NONE);
	        emptyFill1X.setText("-");
	        
	        Label feinadress1LabelX = new Label(checkGroup, SWT.SHADOW_NONE | SWT.CENTER);
	        feinadress1LabelX.setText(AppWindow.resourceBundle.getString("lwid_fineAdress"));
	        
	        Label emptyFill2X = new Label(checkGroup, SWT.SHADOW_NONE);
	        emptyFill2X.setText("-");

	        Label checksum1LabelX = new Label(checkGroup, SWT.SHADOW_NONE | SWT.CENTER);
	        checksum1LabelX.setText(AppWindow.resourceBundle.getString("lwid_checksum"));
	        
	        grobadress1X = new Text(checkGroup, SWT.SINGLE | SWT.BORDER);
	        grobadress1X.setMessage("<"+AppWindow.resourceBundle.getString("lwid_roughAdress")+">");
	        grobadress1X.setTextLimit(12);

	        Label separatorLabelX = new Label(checkGroup, SWT.SHADOW_NONE);
	        separatorLabelX.setText("-");
	        feinadress1X = new Text(checkGroup, SWT.SINGLE | SWT.BORDER);
	        feinadress1X.setMessage("<"+AppWindow.resourceBundle.getString("lwid_fineAdress")+">");
	        feinadress1X.setTextLimit(30);

	        Label separatorLabel2X = new Label(checkGroup, SWT.SHADOW_NONE);
	        separatorLabel2X.setText("-");
	        checksum1X = new Text(checkGroup, SWT.SINGLE | SWT.BORDER);
	        checksum1X.setMessage("<"+AppWindow.resourceBundle.getString("lwid_checksum")+">"); 
	        checksum1X.setTextLimit(2);
	        
	        Button enterX = new Button(checkGroup, SWT.PUSH);
	        enterX.setText(AppWindow.resourceBundle.getString("lwid_checkLwid"));
	        GridData gridData3X = new GridData(GridData.HORIZONTAL_ALIGN_END);
	        gridData3X.horizontalSpan = 5;
	        enterX.setLayoutData(gridData3X);
	        
	        Group resultGroup = new Group(checkGroup, SWT.NULL);
	        resultGroup.setText(AppWindow.resourceBundle.getString("lwid_checkResult"));
	        GridLayout gridLayout4 = new GridLayout();
	        gridLayout4.numColumns = 2;
	        resultGroup.setLayout(gridLayout4);
	        GridData gridData5 = new GridData(GridData.HORIZONTAL_ALIGN_FILL);
	        gridData5.horizontalSpan = 5;
	        resultGroup.setLayoutData(gridData5);	
	        	    
	        checkResultImage = new CLabel(resultGroup, SWT.SHADOW_NONE);
	        Image image = new Image(shell.getDisplay(), AppProperties.prop.getProperty("empty.icon"));
	        checkResultImage.setImage(image);
	        
	        checkResult = new CLabel(resultGroup, SWT.SHADOW_NONE);
	        checkResult.setText("                                          ");
	        
	        
	        enterX.addListener(SWT.Selection, new Listener()
	        {
	            @Override
	            public void handleEvent(Event event)
	            {
	                LeitwegCheckerImpl lwid = new LeitwegCheckerImpl();	                
					try {
						boolean valid = lwid.runLeitwegChecksumCheck(grobadress1X.getText()+feinadress1X.getText()+checksum1X.getText());
		                if (valid) {
		                	Image image = new Image(shell.getDisplay(), AppProperties.prop.getProperty("tick.icon"));
		        	        checkResultImage.setImage(image);		        	        		                	
		                	checkResult.setText(AppWindow.resourceBundle.getString("lwid_valid"));	
		                } else {
		                	Image image = new Image(shell.getDisplay(), AppProperties.prop.getProperty("cross.icon"));
		        	        checkResultImage.setImage(image);		        	        
		                	checkResult.setText(AppWindow.resourceBundle.getString("lwid_nonvalid"));
		                }
					} catch (CheckDigitException e) {
						logger.error(e.getMessage());
						checkResultImage.setImage(null);
	                	checkResult.setText("                                  ");
						MessageBox messageBox = new MessageBox(shell, SWT.ICON_WARNING | SWT.OK);				        
				        messageBox.setText(AppWindow.resourceBundle.getString("lwid_checkError"));
				        messageBox.setMessage(e.getMessage());
				        messageBox.open();
					}
					shell.pack();
	            }
	        });
	        
	        shell.open();
	}

}
