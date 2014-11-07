package com.ds.dao;

import java.util.List;

import com.ds.bean.Admin;

public interface Admin_DAO {
public Admin find_admin_by_name(String propertyName, Object value);
public List<Admin> find_all();
public void Save(Admin admin);
public void delete(Admin admin);
public void update(Admin admin);
public Admin find_by_id(int id);
}
