package com.ds.service.impl;

import java.util.List;




import com.ds.bean.Spirit;
import com.ds.dao.Spirit_DAO;
import com.ds.service.Spirit_Service;

public class Spirit_Service_Impl implements Spirit_Service {

	private Spirit_DAO spirit_dao;
	
	
	
	public Spirit_DAO getSpirit_dao() {
		return spirit_dao;
	}

	public void setSpirit_dao(Spirit_DAO spirit_dao) {
		this.spirit_dao = spirit_dao;
	}

	public void save(Spirit spirit) {
	this.spirit_dao.save(spirit);

	}

	public void delete(Spirit spirit) {
		this.spirit_dao.delete(spirit);

	}

	public List<Spirit> find_all() {
		
		return this.spirit_dao.find_all();
	}

	public Spirit find_By_Id(Integer id) {
	
		return this.spirit_dao.find_By_Id(id);
	}

	public void update(Spirit spirit) {
	this.spirit_dao.update(spirit);

	}

}
