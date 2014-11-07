package com.ds.action;


import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.ds.bean.Admin;
import com.ds.service.Admin_Service;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Admin_Action extends ActionSupport {
private Admin admin;
private Admin_Service admin_service;
public Admin getAdmin() {
	return admin;
}
public void setAdmin(Admin admin) {
	this.admin = admin;
}
public Admin_Service getAdmin_service() {
	return admin_service;
}
public void setAdmin_service(Admin_Service admin_service) {
	this.admin_service = admin_service;
}

@SuppressWarnings("deprecation")
public String login() throws Exception {
//	System.out.println("name="+this.admin.getAdminname());
//	System.out.println("password="+this.admin.getPassword());
	System.out.println(admin);
	if(null != admin){
	HttpSession session = ServletActionContext. getRequest().getSession();
	session.putValue("adminname", this.admin.getAdminname());
	
	
	System.out.println("flag="+this.admin_service.validate(this.admin.getAdminname(), this.admin.getPassword()));
	if(this.admin_service.validate(this.admin.getAdminname(), this.admin.getPassword()))
	{
		return SUCCESS;
		
	}
	}
	return INPUT;
}
	
@SuppressWarnings("unchecked")
public String show_all_admin() throws Exception{
	@SuppressWarnings("rawtypes")
	Map map = (Map) ActionContext.getContext().get("request");
	map.put("list_admin", this.admin_service.find_all());
	return SUCCESS;
}

public String save_admin() throws Exception{
	this.admin_service.Save(admin);
	return SUCCESS;
}

public String delete_admin() throws Exception{
	this.admin_service.delete_admin(admin);
	return SUCCESS;
}


public String list_by_id() throws Exception{
	this.admin = this.admin_service.find_admin_by_id(admin.getId());
	return SUCCESS;
}


public String update() throws Exception{
	this.admin_service.update(admin);
	return SUCCESS;
}










}
