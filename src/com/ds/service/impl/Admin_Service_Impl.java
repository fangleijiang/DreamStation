package com.ds.service.impl;

import java.util.List;

import com.ds.bean.Admin;
import com.ds.dao.Admin_DAO;
import com.ds.service.Admin_Service;
import com.opensymphony.xwork2.ActionContext;

public class Admin_Service_Impl implements Admin_Service{

	
	private Admin_DAO admin_dao;
	
	public Admin_DAO getAdmin_dao() {
		return admin_dao;
	}

	public void setAdmin_dao(Admin_DAO admin_dao) {
		this.admin_dao = admin_dao;
	}
	
	/**
	 * 通过用户名查找出admin对象
	 */
	public Admin find(String propertyName, Object value) {
		return this.admin_dao.find_admin_by_name(propertyName, value);
	}
	
	/**
	 * 验证
	 */
	public boolean validate(String adminname,String password){
		//System.out.println("name="+adminname);
		//System.out.println("password="+password);
	boolean	flag = false;
	if(adminname==null||"".equals(adminname)||password==null||"".equals(password)){
		flag=false;
	}else{
		Admin admin = this.find("adminname", adminname);
		if(admin==null){
			flag = false;
		}
		else if(admin.getAdminname().equals(adminname)&&admin.getPassword().equals(password)){
			
			flag=true;
	}
		ActionContext.getContext().getSession().put("adminInfo", adminname);
	}
		return flag;
	}

	public List<Admin> find_all() {
		
		return this.admin_dao.find_all();
	}

	public void Save(Admin admin) {
		this.admin_dao.Save(admin);
		
	}

	public void delete_admin(Admin admin) {
		this.admin_dao.delete(admin);
		
	}

	public void update(Admin admin) {
	this.admin_dao.update(admin);
		
	}

	public Admin find_admin_by_id(int id) {
		
		return this.admin_dao.find_by_id(id);
	}

	

}
