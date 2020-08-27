package org.oxt.toolbox.helpers;

import java.io.File;
import java.io.FileNotFoundException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.Locale;
import java.util.ResourceBundle;

public class Internationalization {

	/**
	 * Method to load language files.
	 * @param localeStr Language code
	 * @param path Path to language file folder
	 * @param file Language file name
	 * @return ResourceBundle
	 * @throws MalformedURLException error for malformed URL
	 * @throws FileNotFoundException error for non-existing file
	 */
	public static ResourceBundle loadLanguage(String localeStr, String path, String file) throws MalformedURLException, FileNotFoundException {
		File filepath = new File(path); 
		
		URL[] urls = {filepath.toURI().toURL()};  
		ClassLoader loader = new URLClassLoader(urls);

		Locale locale = new Locale(localeStr);
		return ResourceBundle.getBundle(file, locale, loader, new UTF8Control());   
				
	}

}
