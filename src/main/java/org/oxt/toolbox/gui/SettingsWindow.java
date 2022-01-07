package org.oxt.toolbox.gui;

import java.util.Arrays;
import java.util.List;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.oxt.toolbox.helpers.AppProperties;
import org.oxt.toolbox.helpers.CustomSettingsSaveListener;

/**
 * Class to create settings window.
 * @author Dr. Jan C. Thiele
 */
public class SettingsWindow {

	Display display;
	Shell shell;

	/**
	 * GUI language selection combo box.
	 */
	Combo languageCombo;

	/**
	 * GUI viz language selection combo box.
	 */
	Combo vizLanguageCombo;

	/**
	 * Combo box for validation configuration version selection.
	 */
	Combo valiVersionCombo;
	
	/**
	 * Button/check box for selection whether codelists in visualization should be resolved.
	 */
	Button resolveCodelists;

	/**
	 * Method to get the viz language selection combo box.
	 * @return combo box
	 */
	public Combo getVizLanguageCombo() {
		return vizLanguageCombo;
	}

	/**
	 * Method to get the language selection combo box.
	 * @return combo box
	 */
	public Combo getLanguageCombo() {
		return languageCombo;
	}

	/**
	 * Method to get the combo box of validation configuration version selection.
	 * @return combo box 
	 */
	public Combo getValiVersionCombo() {
		return valiVersionCombo;
	}

	/**
	 * Method to get the check box for selection, if codelists in visualization should be resolved.
	 * @return button/check box
	 */
	public Button getResolveCodelists() {
		return resolveCodelists;
	}

	public Shell getShell() {
		return shell;
	}

	
	/** 
	 * Method to create settings window.
	 * @param display Display widget
	 */
	public SettingsWindow(Display display) {
		this.display = display;
		this.shell = new Shell(this.display, SWT.SHELL_TRIM); // & (~SWT.RESIZE) & (~SWT.MAX));

		int frameX = shell.getSize().x - shell.getClientArea().width;
        int frameY = shell.getSize().y - shell.getClientArea().height;
        shell.setSize(430 + frameX, 450 + frameY);
        shell.setText(AppWindow.resourceBundle.getString("settings_title"));
      
        shell.setImage(new Image(shell.getDisplay(), AppProperties.prop.getProperty("app.icon")));
 
        //shell.setMenuBar(createMenuBar());
        
        GridLayout gridLayout = new GridLayout();
        gridLayout.numColumns = 1;
        gridLayout.marginHeight = 10;
        gridLayout.marginWidth = 20;
        gridLayout.horizontalSpacing = 5;
        gridLayout.verticalSpacing = 30;
        shell.setLayout(gridLayout);
        
        // add language selection
        Group languageGroup = new Group(shell, SWT.NULL);
        languageGroup.setLayoutData(new GridData(SWT.FILL, SWT.BEGINNING, true, false));
        Font font = languageGroup.getFont();
        languageGroup.setFont(new org.eclipse.swt.graphics.Font(null, font.getFontData()[0].getName(), font.getFontData()[0].getHeight(), SWT.BOLD));	        
        languageGroup.setText(AppWindow.resourceBundle.getString("settingsgroup_language"));
        
        GridLayout gridLayout2 = new GridLayout();
        gridLayout2.numColumns = 2;
        gridLayout2.marginHeight = 20;
        languageGroup.setLayout(gridLayout2);
        
        Label languageLabel = new Label(languageGroup, SWT.SHADOW_NONE | SWT.CENTER);
        languageLabel.setText(AppWindow.resourceBundle.getString("settingsgroup_languageLabel"));	       
        
        this.languageCombo = new Combo(languageGroup, SWT.READ_ONLY);        
        languageCombo.setBounds(50, 50, 150, 65);
        //String items[] = { "DE", "EN" };
        
        String langs = AppProperties.prop.getProperty("available_languages");
        String[] languages = langs.split(",");

        languageCombo.setItems(languages);
        
        List<String> languagesList = Arrays.asList(languages);
        
        int index = languagesList.indexOf(AppProperties.prop.getProperty("language"));
        if (index >= 0) {
        	languageCombo.select(index);
        }

        languageCombo.addSelectionListener(new SelectionAdapter() {	
	        @Override
	        public void widgetSelected(SelectionEvent event) {
	        		//Combo combo = (Combo) event.getSource();
	            }
        });

        
        // add viz language selection
        Label vizLanguageLabel = new Label(languageGroup, SWT.SHADOW_NONE | SWT.CENTER);
        vizLanguageLabel.setText(AppWindow.resourceBundle.getString("settingsgroup_vizLanguageLabel"));	       
        
        this.vizLanguageCombo = new Combo(languageGroup, SWT.READ_ONLY);        
        vizLanguageCombo.setBounds(50, 50, 150, 65);
        //String items[] = { "de", "en" };
        
        String vizLangs = AppProperties.prop.getProperty("available_vizLanguages");
        String[] vizLanguages = vizLangs.split(",");

        vizLanguageCombo.setItems(vizLanguages);
        
        List<String> vizLanguagesList = Arrays.asList(vizLanguages);
        
        int vizIndex = vizLanguagesList.indexOf(AppProperties.prop.getProperty("viz.language"));
        if (vizIndex >= 0) {
        	vizLanguageCombo.select(vizIndex);
        }

        vizLanguageCombo.addSelectionListener(new SelectionAdapter() {	
	        @Override
	        public void widgetSelected(SelectionEvent event) {
	        		//Combo combo = (Combo) event.getSource();
	            }
        });


        // add visualization - code list resolve - selection
        Group vizGroup = new Group(shell, SWT.NULL);
        vizGroup.setLayoutData(new GridData(SWT.FILL, SWT.BEGINNING, true, false));
        vizGroup.setFont(new org.eclipse.swt.graphics.Font(null, font.getFontData()[0].getName(), font.getFontData()[0].getHeight(), SWT.BOLD));	        
        vizGroup.setText(AppWindow.resourceBundle.getString("settingsgroup_viz"));
   
        GridLayout gridLayout3 = new GridLayout();
        gridLayout3.numColumns = 2;
        gridLayout3.marginHeight = 20;
        vizGroup.setLayout(gridLayout3);
        
        this.resolveCodelists = new Button(vizGroup, SWT.CHECK);
        resolveCodelists.setText(AppWindow.resourceBundle.getString("settingsgroup_vizCodelist"));
        GridData gridData3 = new GridData(GridData.HORIZONTAL_ALIGN_END);
        gridData3.horizontalSpan = 2;
        resolveCodelists.setLayoutData(gridData3);
                
        resolveCodelists.setSelection(Boolean.valueOf(AppProperties.prop.getProperty("viz.codelistresolve", "false")));
        
        resolveCodelists.addSelectionListener(new SelectionAdapter() {	
	        @Override
	        public void widgetSelected(SelectionEvent event) {
	                //Button btn = (Button) event.getSource();
	            }
        });

        
        // add prueftool configuration version selection
        Group valiGroup = new Group(shell, SWT.NULL);
        valiGroup.setLayoutData(new GridData(SWT.FILL, SWT.BEGINNING, true, false));
        valiGroup.setFont(new org.eclipse.swt.graphics.Font(null, font.getFontData()[0].getName(), font.getFontData()[0].getHeight(), SWT.BOLD));	        
        valiGroup.setText(AppWindow.resourceBundle.getString("settingsgroup_vali"));
   
        GridLayout gridLayout5 = new GridLayout();
        gridLayout5.numColumns = 2;
        gridLayout5.marginHeight = 20;
        valiGroup.setLayout(gridLayout5);

        Label valiVersionLabel = new Label(valiGroup, SWT.SHADOW_NONE | SWT.CENTER);
        valiVersionLabel.setText(AppWindow.resourceBundle.getString("settingsgroup_valiVersionLabel"));	       

        this.valiVersionCombo = new Combo(valiGroup, SWT.READ_ONLY);        
        valiVersionCombo.setBounds(50, 50, 250, 65);
        
        String valiVersions = AppProperties.prop.getProperty("available_valiVersions");
        String[] valis = valiVersions.split(",");

        valiVersionCombo.setItems(valis);
        
        List<String> valisList = Arrays.asList(valis);
        
        int valiIndex = valisList.indexOf(AppProperties.prop.getProperty("valiVersion"));
        if (valiIndex >= 0) {
        	valiVersionCombo.select(valiIndex);
        }
        
        valiVersionCombo.addSelectionListener(new SelectionAdapter() {	
	        @Override
	        public void widgetSelected(SelectionEvent event) {
	        		//Combo combo = (Combo) event.getSource();
	            }
        });
        
        
        
        // add save and cancel buttons
        Composite buttonGroup = new Composite(shell, SWT.SHADOW_NONE & SWT.NO_BACKGROUND & SWT.DRAW_TRANSPARENT);
        buttonGroup.setLayoutData(new GridData(SWT.RIGHT, SWT.BEGINNING, true, false));

        GridLayout gridLayout6 = new GridLayout();
        gridLayout6.numColumns = 2;
        gridLayout6.marginHeight = 20;
        buttonGroup.setLayout(gridLayout6);
                
        final Button buttonCancel = new Button(buttonGroup, SWT.PUSH);
        buttonCancel.setText(AppWindow.resourceBundle.getString("settings_cancel"));

        final Button buttonSave = new Button(buttonGroup, SWT.PUSH);
        buttonSave.setText(AppWindow.resourceBundle.getString("settings_save"));


        buttonSave.addListener(SWT.Selection, new CustomSettingsSaveListener(this));
        
        buttonCancel.addListener(SWT.Selection, new Listener()
        {
            @Override
            public void handleEvent(Event event)
            {
            	shell.close();
            }
        });
            
        
        shell.open();        
        
	}
}
