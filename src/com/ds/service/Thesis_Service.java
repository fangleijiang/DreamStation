package com.ds.service;

import java.util.List;

import com.ds.bean.Thesis;

public interface Thesis_Service {

	public void save(Thesis thesis);
	public void delete(Thesis thesis);
	public void update(Thesis thesis);
	public Thesis findById(int id);
	public int find_ALL();

	
}
