package com.tutran.common.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.io.IOUtils;
import org.apache.log4j.Logger;

import com.tutran.common.exception.IORuntimeException;
import com.tutran.pattern.PropertiesFactory;

/**
 * Get sql statements from sql.properties file.
 *
 * @author prenagha
 */
public abstract class Properties {
  private static final Logger log = Logger.getLogger(Properties.class);
  private static final String WHITE_SPACE_CHARS = " \t\r\n\f";
  private static Map<String, Properties> cache = new HashMap<String, Properties>();
  protected Map<String, String> props = new HashMap<String, String>();
  private String fileName;
  private boolean watch = false;
  private long loadTime = 0L;
  private long fileTime = 0L;

  protected Properties(String modeDir, String fileName) {
    this.fileName = modeDir + "/" + fileName;
    watch = Boolean.valueOf(System.getProperty("SQLProperties.watch")).booleanValue();
    load();
  }

  /**
   * Get an instance
   *
   * @return instance of SQLProperties
   */
  protected static Properties getInstance(String fileName) {
    Properties instance = (Properties) cache.get(fileName);
    if (instance == null) {
      instance = PropertiesFactory.getProperties(fileName);
      cache.put(fileName, instance);
    }
    return instance;
  }

  protected void watchdog() {
    if (watch) {
      long now = System.currentTimeMillis();
      if (now - loadTime > 2500L) {
        long fTime = getFileModifiedTime();
        if (fTime > fileTime) {
          log.info("Auto refresh, sql file has been modified " + fileName);
          load();
        }
      }
    }
  }

  /**
   * Get a statement
   *
   * @param key of statement
   * @return sql statement, null if not found
   */
  protected abstract String getStatement(String key);
  
  /**
   * Load a property
   *
   * @param key of property
   * @return property, null if not found
   */
  protected abstract String loadProperty(String key);

  /**
   * Get a statement
   *
   * @param key of statement
   * @return true
   */
  public boolean containsKey(String key) {
    watchdog();
    return props.containsKey(key);
  }
  
  /**
   * Clear SQL Properties cache
   */
  public static void refresh() {
    cache.clear();
  }

  private void load() {
    log.info("Refresh fileName=" + fileName + ", watch=" + watch);
    loadTime = System.currentTimeMillis();
    fileTime = getFileModifiedTime();
    props.clear();

    InputStream in = null;
    try {
      in = this.getClass().getClassLoader().getResourceAsStream(fileName);
      if (in == null) {
        throw new RuntimeException("Can't find " + fileName);
      }
      loadStream(in);
    } catch (Exception ex) {
      throw new RuntimeException(ex);
    } finally {
      IOUtils.closeQuietly(in);
    }
  }

  private long getFileModifiedTime() {
    try {
      URL propsURL = getClass().getClassLoader().getResource(fileName);
      File propsFile = new File(propsURL.getPath());
      return propsFile.lastModified();
    } catch (Exception ex) {
      throw new IORuntimeException("Error getting modified time of file " + fileName, ex);
    }
  }

  private void loadStream(InputStream inStream) throws Exception {
    BufferedReader in =
      new BufferedReader(new InputStreamReader(inStream, "8859_1"));
    String key = null;
    String value = null;
    while (true) {
      // Get next line
      String line = in.readLine();
      if (line == null) {
        break;
      }

      if (line.length() > 0) {
        char firstChar = line.charAt(0);
        // skip comments
        if (firstChar == '#' || firstChar == '!' || firstChar == '-') {
          //no-op

        // if line starts with non-whitespace, then its a new key
        } else if (WHITE_SPACE_CHARS.indexOf(firstChar) == -1) {
          if (key != null && value != null)
            props.put(key, value);

          int indx = line.trim().indexOf('=');
          if (indx < 0)
            throw new RuntimeException("Missing = on key line " + line);
          
          key = line.substring(0, indx);
          value = line.substring(indx+1);

        // if line starts with whitespace, its a value
        } else {
          value += line;
        }
      }
    }
    if (key != null && value != null)
      props.put(key, value);
  }
}

