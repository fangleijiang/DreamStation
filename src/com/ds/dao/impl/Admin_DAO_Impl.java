package com.ds.dao.impl;

import java.util.List;


import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.ds.bean.Admin;
import com.ds.dao.Admin_DAO;

public class Admin_DAO_Impl extends HibernateDaoSupport implements Admin_DAO {

	

	public Admin find_admin_by_name(String propertyName, Object value) {
		String sql = "from Admin admin where admin."+propertyName+"=?";
		@SuppressWarnings("unchecked")
		List<Admin> list = this.getHibernateTemplate().find(sql, value);
		if(list!=null&&list.size()==1)
		{
			return list.get(0);
		}
		return null;
	}

	public List<Admin> find_all() {
		String sql = "from Admin admin order by admin.id desc";
		List<Admin> list = this.getHibernateTemplate().find(sql);
		return list;
	}

	public void Save(Admin admin) {
		this.getHibernateTemplate().save(admin);
		
	}

	public void delete(Admin admin) {
		this.getHibernateTemplate().delete(admin);
		
	}

	public void update(Admin admin) {
	this.getHibernateTemplate().update(admin);
	}

	public Admin find_by_id(int id) {
		
		Admin admin = (Admin) this.getHibernateTemplate().get(Admin.class, id);
		return admin;
	}

}
