package com.mycompany.webapp.controller.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.RequestParam;

public class Ch03Dto {
	// 필드는 기본값이 있기 때문에 @RequestParam(defaultValue ="0") int param2 하지 않아도 된다.
	private String param1;
	private int param2;
	private double param3;
	private boolean param4;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date param5;
	
	public String getParam1() {
		return param1;
	}
	public void setParam1(String param1) {
		this.param1 = param1;
	}
	public int getParam2() {
		return param2;
	}
	public void setParam2(int param2) {
		this.param2 = param2;
	}
	public double getParam3() {
		return param3;
	}
	public void setParam3(double param3) {
		this.param3 = param3;
	}
	public boolean isParam4() { 
		return param4;
	}
	public void setParam4(boolean param4) {
		this.param4 = param4;
	}
	public Date getParam5() {
		return param5;
	}
	public void setParam5(Date param5) {
		this.param5 = param5;
	}
	
	
}
