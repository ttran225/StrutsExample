package com.tutran.common.util;

import java.util.NoSuchElementException;

public class ReadProperties extends Properties {
	private static final String PATH_PREFIX = "prop";

	public ReadProperties(String fileName) {
		super(PATH_PREFIX, fileName);
	}
	
	@Override
	protected String loadProperty(String key) {
		watchdog();
	    String val = (String) props.get(key);
	    if (val == null) {
	      throw new NoSuchElementException("No key '" + key + "' found");
	    }
	    return val;
	}

	@Override
	protected String getStatement(String key) {
		return null;
	}
}
