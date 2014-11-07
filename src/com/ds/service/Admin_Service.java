package com.ds.service;

import java.util.List;

import com.ds.bean.Admin;


public interface Admin_Service {
	public Admin find(String propertyName,Object value);
	public boolean validate(String adminname,String password);
	public List<Admin> find_all();
	public void Save(Admin admin);
	public void delete_admin(Admin admin);
	public void update(Admin admin);
	public Admin find_admin_by_id(int id);
}
