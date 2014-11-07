package com.ds.service.impl;

import java.util.List;
import java.util.Map;

import com.ds.bean.Project;
import com.ds.dao.Project_DAO;

import com.ds.service.Project_Service;
import com.opensymphony.xwork2.ActionContext;

public class Project_Service_Impl implements Project_Service{
	private Project_DAO project_dao;

	public Project_DAO getProject_dao() {
		return project_dao;
	}

	public void setProject_dao(Project_DAO project_dao) {
		this.project_dao = project_dao;
	}

	public void save(Project project) {
		this.project_dao.save(project);
	}

	public void delete(Project project) {
		this.project_dao.delete(project);
		
	}

	public void update(Project project) {
		this.project_dao.update(project);
		
	}

	public List<Project> find_ALL() {
		
		return this.project_dao.find_ALL();
	}

	public Project find_By_Id(Integer id) {
		
		return this.project_dao.find_By_Id(id);
	}

	public List<Project> find_First_four() {
	
		return this.project_dao.find_First_four();
	}
	
}
