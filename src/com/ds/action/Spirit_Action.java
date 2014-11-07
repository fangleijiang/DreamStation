package com.ds.action;

import java.util.Date;
import java.util.Map;

import com.ds.bean.Spirit;
import com.ds.service.Spirit_Service;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Spirit_Action extends ActionSupport {
private Spirit spirit;
private Spirit_Service spirit_service;
public Spirit getSpirit() {
	return spirit;
}
public void setSpirit(Spirit spirit) {
	this.spirit = spirit;
}
public Spirit_Service getSpirit_service() {
	return spirit_service;
}
public void setSpirit_service(Spirit_Service spirit_service) {
	this.spirit_service = spirit_service;
}

public String save() throws Exception{
	Date time =  new Date();
	spirit.setTime(time);
	this.spirit_service.save(spirit);
	return SUCCESS;
}

public String delete() throws Exception{
	this.spirit_service.delete(spirit);
	return SUCCESS;
}

public String update() throws Exception{
	Date time =  new Date();
	spirit.setTime(time);
	this.spirit_service.update(spirit);
	return SUCCESS;
}

@SuppressWarnings("unchecked")
public String List_all() throws Exception{
	@SuppressWarnings("rawtypes")
	Map request = (Map) ActionContext.getContext().get("request");
	request.put("list", this.spirit_service.find_all());
	System.out.println("SUCCESS");
	return SUCCESS;
}
	public String find_By_id() throws Exception{
		this.spirit = this.spirit_service.find_By_Id(spirit.getId());
		return SUCCESS;
	}
}
