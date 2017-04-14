package com.tutran.pattern;

import com.tutran.common.Properties;
import com.tutran.common.ReadProperties;
import com.tutran.common.SQLProperties;

public class PropertiesFactory {
	
	public static Properties getProperties(String fileName) {
		if (fileName == null) {
			return null;
		}
		if (fileName.endsWith(".sql")) {
			return new SQLProperties(fileName);
		} else if (fileName.endsWith(".properties")) {
			return new ReadProperties(fileName);
		}
		return null;
	}

}
