package com.ds.dao;


import java.util.List;

import com.ds.bean.Thesis;

public interface Thesis_DAO {

	public void saveThesis(Thesis thesis);
	public void deleteThesis(Thesis thesis);
	public void updateThesis(Thesis thesis);
	public Thesis findById(int id);
	public int find_ALL();
	
	
	
}
