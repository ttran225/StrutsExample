package com.tutran.common.exception;

/**
 * Runtime, non-checked, version of a standard IO exception.
 * 
 * @author Padraic Renaghan
 */
public class IORuntimeException extends RuntimeException {
  private static final long serialVersionUID = 1L;

  public IORuntimeException() {
    super();
  }

  public IORuntimeException(String message) {
    super(message);
  }

  public IORuntimeException(Throwable cause) {
    super(cause);
  }

  public IORuntimeException(String message, Throwable cause) {
    super(message, cause);
  }

}
