package com.ds.service;

import java.util.List;

import com.ds.bean.Spirit;

public interface Spirit_Service {
	public void save(Spirit spirit);
	public void delete(Spirit spirit);
	public List<Spirit> find_all();
	public Spirit find_By_Id(Integer id);
	public void update(Spirit spirit);
}
