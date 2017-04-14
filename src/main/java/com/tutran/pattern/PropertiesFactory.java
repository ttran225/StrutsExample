package com.tutran.pattern;

import com.tutran.common.util.Properties;
import com.tutran.common.util.ReadProperties;
import com.tutran.common.util.SQLProperties;

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
