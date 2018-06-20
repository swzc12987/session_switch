package com.ericsson.commons.constants;

/**
 * Class Name: ResultCode Description: defines response codes that will be used
 * in AJAX response
 * 
 * @author SC
 * 
 */
public final class ResultCode {

	private ResultCode() {
	}

	public static final String SUCCESS = "SUCCESS";// 请注意，该错误码不会弹出提示

	public static final String ERROR = "ERROR";// 请注意，该错误码不会弹出提示

	public static final String ACK_NO_MESSAGE = "ACK_NO_MESSAGE";

	public static final String ACK = "ACK";

	public static final String NACK = "NACK";

	public static final String REDIRECT = "REDIRECT";

	public static final String VALIDATION_ERROR = "VALIDATION_ERROR";

	public static final String COMMON_ERROR = "COMMON_ERROR";

	public static final String LOGIN_TIME_OUT = "LOGIN_TIME_OUT";

	public static final String BUSINESS_ERROR = "BUSINESS_ERROR";

	public static final String REPECT_COMMIT = "REPECT_COMMIT";

	public static final String DATA_NOT_EXISTS = "DATA_NOT_EXISTS";
}
