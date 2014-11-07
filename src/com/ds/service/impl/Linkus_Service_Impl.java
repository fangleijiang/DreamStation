package com.ds.service.impl;

import java.util.List;

import com.ds.bean.Linkus;
import com.ds.dao.Linkus_DAO;
import com.ds.service.Linkus_Service;

public class Linkus_Service_Impl implements Linkus_Service {
	private Linkus_DAO linkus_dao;

	public Linkus_DAO getLinkus_dao() {
		return linkus_dao;
	}

	public void setLinkus_dao(Linkus_DAO linkus_dao) {
		this.linkus_dao = linkus_dao;
	}

	public void save(Linkus linkus) {

		this.linkus_dao.save(linkus);
	}

	public void delete(Linkus linkus) {
		this.linkus_dao.delete(linkus);
	}

	public List<Linkus> find_ALL() {
		return this.linkus_dao.find_ALL();
	}

	public Linkus findById(Integer id) {
		return this.linkus_dao.findById(id);
	}

	public void Update(Linkus linkus) {
	this.linkus_dao.Update(linkus);

	}

}
