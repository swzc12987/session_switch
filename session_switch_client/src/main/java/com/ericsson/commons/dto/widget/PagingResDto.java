package com.ericsson.commons.dto.widget;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonProperty;

import io.swagger.annotations.ApiModelProperty;

/**
 * Value object for jQuery DataTables JSON response.
 * 
 * @author SC
 * 
 * @param <T>
 */
@SuppressWarnings("serial")
public class PagingResDto<T> implements Serializable {
	
	@ApiModelProperty(value = "状态码；成功：SUCCESS; 失败：ERROR")
	private String code;

	@ApiModelProperty(value = "信息描述")
	private String message;

	@ApiModelProperty(value = "总记录数", required = true)
	@JsonProperty(value = "iTotalRecords")
	private long totalRecords;

	@ApiModelProperty(value = "当页记录数", required = true)
	@JsonProperty(value = "iTotalDisplayRecords")
	private long totalDisplayRecords;

	@ApiModelProperty(value = "数据集", required = true)
	@JsonProperty(value = "aaData")
	private List<T> data = new ArrayList<T>();
	
	@ApiModelProperty(value = "枚举类配置", required = false)
	private Map<String, Object> config;
	
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public long getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(long totalRecords) {
		this.totalRecords = totalRecords;
	}

	public long getTotalDisplayRecords() {
		return totalDisplayRecords;
	}

	public void setTotalDisplayRecords(long totalDisplayRecords) {
		this.totalDisplayRecords = totalDisplayRecords;
	}

	public List<T> getData() {
		return data;
	}

	public void setData(List<T> data) {
		this.data = data;
	}

	public Map<String, Object> getConfig() {
		return config;
	}

	public void setConfig(Map<String, Object> config) {
		this.config = config;
	}
}
