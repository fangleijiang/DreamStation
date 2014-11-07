package com.ds.action;

import java.util.Date;
import java.util.Map;

import java.util.List;

import com.ds.bean.Thesis;
import com.ds.bean.pageBean;
import com.ds.service.Page_Service;
import com.ds.service.Thesis_Service;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class Thesis_Action extends ActionSupport {
	private Thesis thesis;
	private Thesis_Service thesis_service;
	
	private int page = 1;    //第几页   
	private pageBean pagebean;    //包含分布信息的bean
	private Page_Service page_service;
	private List<Thesis> list_thesis;
	
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
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
	public List<Thesis> getList_thesis() {
		return list_thesis;
	}
	public void setList_thesis(List<Thesis> list_thesis) {
		this.list_thesis = list_thesis;
	}


	public Thesis getThesis() {
		return thesis;
	}
	public void setThesis(Thesis thesis) {
		this.thesis = thesis;
	}
	public Thesis_Service getThesis_service() {
		return thesis_service;
	}
	public void setThesis_service(Thesis_Service thesis_service) {
		this.thesis_service = thesis_service;
	}

	
	public String saveThesis() throws Exception{
		Date datetime =  new Date();
		thesis.setDatetime(datetime);
		this.thesis_service.save(thesis);
		return SUCCESS;
	}
	public String deleteThesis() throws Exception{
		 this.thesis_service.delete(thesis);
		return SUCCESS;
	}
	public String reviseThesis() throws Exception{
		this.thesis = this.thesis_service.findById(thesis.getId());
		return SUCCESS;
	}
	public String updateThesis() throws Exception{
		this.thesis_service.update(thesis);
		return SUCCESS;
	}
	public String findById() throws Exception{
		this.thesis = this.thesis_service.findById(thesis.getId());
		
		return SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public String find_all_thesis() throws Exception
	{
		
		this.thesis = this.page_service.find_thesis_by_id(thesis.getId());
		this.pagebean=this.page_service.queryForPage_forThesis(1, page);
		/*this.page_front_next();*/
		Map request=(Map)ActionContext.getContext().get("request");
		System.out.println("当前的id"+thesis.getId());
		request.put("list1", this.page_service.front_page(thesis.getId()));//上一篇		
		
		request.put("list2", this.page_service.next_page(thesis.getId()));//下一篇
		System.out.println("***");
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public String page_front_next() throws Exception{
		
		return SUCCESS;
		
	}
	
	public String thesis_page_action() throws Exception{
		this.pagebean = this.page_service.queryForPage_forThesis(5, page);//获取封装了分页信息的pageBean
		this.list_thesis = this.pagebean.getList_thesis();//获取数据
		return SUCCESS;
	}
	public String client_page_action() throws Exception{
		this.pagebean = this.page_service.queryForPage_forThesis(12, page);//获取封装了分页信息的pageBean
		this.list_thesis=this.pagebean.getList_thesis();//获取数据
		return SUCCESS;
	}
	
}
