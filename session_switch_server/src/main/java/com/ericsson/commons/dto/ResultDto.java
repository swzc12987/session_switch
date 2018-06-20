package com.ericsson.commons.dto;

import java.io.Serializable;

/**
 * Class Name: ResultDto
 * 
 * @author SC
 *
 */
// @ApiModel(description = "通用结果")
public class ResultDto implements Serializable {

	private static final long serialVersionUID = 1L;

	// @ApiModelProperty(value = "状态码；成功：SUCCESS,ACK; 失败：NACK,ERROR, 其他：REDIRECT-重定向")
	private String code;

	// @ApiModelProperty(value = "信息描述")
	private String message;

	// @ApiModelProperty(value = "附带数据")
	private Object data;

	/**
	 * ResultDto Constructor
	 *
	 */
	public ResultDto() {

	}

	/**
	 * ResultDto Constructor
	 *
	 * @param code
	 * @param message
	 * @param data
	 */
	public ResultDto(String code, String message, Object data) {
		this.code = code;
		this.message = message;
		this.data = data;
	}

	/**
	 * Description: whether this is non business error
	 *
	 * @return
	 */
	/*public boolean isNonBizError() {
		return ResultCode.LOGIN_TIME_OUT.equals(code) || ResultCode.COMMON_ERROR.equals(code);
	}*/

	public String getCode() {
		return code;
	}

	public ResultDto setCode(String code) {
		this.code = code;
		return this;
	}

	public String getMessage() {
		return message;
	}

	public ResultDto setMessage(String message) {
		this.message = message;
		return this;
	}

	public Object getData() {
		return data;
	}

	public ResultDto setData(Object data) {
		this.data = data;
		return this;
	}
}
