package com.ds.dao;

import java.util.List;

import com.ds.bean.Linkus;

public interface Linkus_DAO {
	public void save(Linkus linkus);
	public void delete(Linkus linkus);
	public List<Linkus> find_ALL();
	public Linkus findById(Integer id);
	public void Update(Linkus linkus);
		
}
