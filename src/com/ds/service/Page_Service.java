package com.ds.service;

import java.util.List;

import com.ds.bean.Thesis;
import com.ds.bean.pageBean;




public interface Page_Service {
	/*
	 * 分页查询
	 * pageSize 每页显示多少条记录
	 * currentPage 当前页
	 * return  封装了显示每页信息的bean 
	 */
	
	public pageBean queryForPage_forProject(int pageSize,int Page);
	public pageBean queryForPage_forMessage(int pageSize,int Page);
	public pageBean queryForPage_forMessage_for_client(int pageSize,int Page);
	public pageBean queryForPage_forThesis(int pageSize,int Page);
	public pageBean queryForPage_forblackMember(int pageSize,int page);
	public pageBean queryForPage_forclientMember(int pageSize, int page,String category);
	public Thesis find_thesis_by_id(int id);
	public Thesis front_page(int id);
	public Thesis next_page(int id);
}
