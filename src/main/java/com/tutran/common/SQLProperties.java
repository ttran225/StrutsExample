package com.tutran.common;

import java.util.NoSuchElementException;

public class SQLProperties extends Properties {
	private static final String PATH_PREFIX = "sql";
	
	public SQLProperties(String fileName) {
		super(PATH_PREFIX, fileName);
	}

	@Override
	public String getStatement(String key) {
		watchdog();
	    String val = (String) props.get(key);
	    if (val == null) {
	      throw new NoSuchElementException("No key '" + key + "' found");
	    }
	    return val;
	}

	@Override
	public String loadProperty(String key) {
		return null;
	}
}
