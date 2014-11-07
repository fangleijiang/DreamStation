package com.ds.service.impl;

import java.util.List;

import com.ds.bean.Culture;
import com.ds.dao.Culture_DAO;
import com.ds.service.Culture_Service;
/**
 * @author flj
 *
 */
public class Culture_Service_Impl implements Culture_Service {
	private Culture_DAO culture_dao;

	public Culture_DAO getCulture_dao() {
		return culture_dao;
	}

	public void setCulture_dao(Culture_DAO culture_dao) {
		this.culture_dao = culture_dao;
	}

	public void save(Culture culture) {
	this.culture_dao.save(culture);
		
	}

	public void delete(Culture culture) {
		this.culture_dao.delete(culture);
		
	}

	public List<Culture> find_all() {
		
		return this.culture_dao.find_all();
	}

	public Culture findById(Integer id) {
	
		return this.culture_dao.findById(id);
	}

	public void update(Culture culture) {
		this.culture_dao.update(culture);
		
	}

}
