package com.ds.action;


import java.util.List;

import java.util.Map;

import com.ds.bean.Project;
import com.ds.bean.pageBean;
import com.ds.service.Page_Service;
import com.ds.service.Project_Service;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class Project_Action extends ActionSupport {
	private Project project;
	private Project_Service project_service;
    private pageBean pagebean;
    private Page_Service page_service;
    private List<Project> listProject;
	private int page = 1;
	public pageBean getPagebean() {
		return pagebean;
	}

	public void setPagebean(pageBean pagebean) {
		this.pagebean = pagebean;
	}

	public Page_Service getPage_service() {
		return page_service;
	}

	public void setPage_service(Page_Service page_service) {
		this.page_service = page_service;
	}

	

	public List<Project> getListProject() {
		return listProject;
	}

	public void setListProject(List<Project> listProject) {
		this.listProject = listProject;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public Project_Service getProject_service() {
		return project_service;
	}

	public void setProject_service(Project_Service project_service) {
		this.project_service = project_service;
	}
	
	public String save() throws Exception{
		this.project_service.save(project);
		return SUCCESS;
	}

	public String delete() throws Exception{
		this.project_service.delete(project);
		return SUCCESS;
	}
	
	public String update() throws Exception{
		this.project_service.update(project);
		return SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public String find_all()throws Exception{
		@SuppressWarnings("rawtypes")
		Map  request = (Map) ActionContext.getContext().get("request");
		request.put("list", this.project_service.find_ALL());
		return SUCCESS;
	}
	
	public String find_By_id() throws Exception{
		this.project = this.project_service.find_By_Id(project.getId());
		return SUCCESS;
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public String find_first_four() throws Exception{
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list",this.project_service.find_First_four());
		return SUCCESS;
	}
	
	public String page_action() throws Exception{
		this.pagebean = this.page_service.queryForPage_forProject(5, page);//获取封装了分页信息的pageBean
		this.listProject = this.pagebean.getList();//获取数据
		return SUCCESS;
	}
	
	public String client_page_action() throws Exception{
		this.pagebean = this.page_service.queryForPage_forProject(12, page);//获取封装了分页信息的pageBean
		this.listProject = this.pagebean.getList();//获取数据
		return SUCCESS;
	}
}
