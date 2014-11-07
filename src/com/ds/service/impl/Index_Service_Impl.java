package com.ds.service.impl;

import java.util.List;

import com.ds.bean.Index;
import com.ds.bean.News;
import com.ds.dao.Index_DAO;
import com.ds.service.Index_Service;

public class Index_Service_Impl implements Index_Service {

	private Index_DAO index_dao;
	
	public Index_DAO getIndex_dao() {
		return index_dao;
	}

	public void setIndex_dao(Index_DAO index_dao) {
		this.index_dao = index_dao;
	}

/*	public void save(Index index) {
		this.index_dao.save(index);

	}*/

	public void delete(Index index) {
		this.index_dao.delete(index);
	}

	public void update(Index index) {
		this.index_dao.update(index);
	}

	public List<Index> find_All() {
	
		return this.index_dao.find_All();
	}

	public Index find_By_id(Integer id) {
	
		return this.index_dao.find_By_id(id);
	}

	public List<News> list_first_five() {
	
		return this.index_dao.list_first_five();
	}

}
