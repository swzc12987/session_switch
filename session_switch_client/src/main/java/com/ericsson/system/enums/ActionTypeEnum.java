package com.ericsson.system.enums;

public enum ActionTypeEnum {
    
    Start(1, "开启session"), Stop(0, "关闭session")
    ;
    

	private Integer value;
	
	private String desc;

	ActionTypeEnum(Integer value, String desc) {
		this.value = value;
		this.desc = desc;
	}

	public Integer getValue() {
		return value;
	}

	public void setValue(Integer value) {
		this.value = value;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}
    

}
