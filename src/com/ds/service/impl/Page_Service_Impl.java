package com.ds.service.impl;

import java.util.List;


import com.ds.bean.Member;
import com.ds.bean.Project;
import com.ds.bean.Message;
import com.ds.bean.Thesis;
import com.ds.bean.pageBean;
import com.ds.dao.Page_DAO;
import com.ds.service.Page_Service;

public class Page_Service_Impl implements Page_Service {
	private Page_DAO page_dao;           

	public Page_DAO getPage_dao() {
		return page_dao;
	}

	public void setPage_dao(Page_DAO page_dao) {
		this.page_dao = page_dao;
	}

	public pageBean queryForPage_forProject(int pageSize, int Page) {
		final String  sql = "from Project project order by project.id";
		int allRow = page_dao.getAllRowCount(sql);//总行数
		int totalPage = pageBean.countTotalPage(pageSize, allRow);//总页数
		final int currentoffset = pageBean.currentOffset(pageSize, Page);//当前页的开始记录
		final int length = pageSize;
		final int currentPage = pageBean.countCurrentPage(Page);
		List<Project> list  = page_dao.queryForPage(sql, currentoffset, length);
		//把分页信息保存到bean中
		pageBean pagebean = new pageBean();
		pagebean.setPageSize(pageSize);
		pagebean.setAllRow(allRow);
		pagebean.setCurrentPage(currentPage);
		pagebean.setTotalPage(totalPage);
		pagebean.setList(list);
		pagebean.init();
		return pagebean;
	}

	public pageBean queryForPage_forMessage(int pageSize, int Page) {
		final String  sql = "from Message message order by message.id desc";
		int allRow = page_dao.getAllRowCount(sql);//总行数
		System.out.println("allrow="+allRow);
		int totalPage = pageBean.countTotalPage(pageSize, allRow);//总页数
		final int currentoffset = pageBean.currentOffset(pageSize, Page);//当前页的开始记录
		final int length = pageSize;
		final int currentPage = pageBean.countCurrentPage(Page);
		List<Message> list_message  = page_dao.queryForPage_Message(sql, currentoffset, length);
		//把分页信息保存到bean中
		pageBean pagebean = new pageBean();
		pagebean.setPageSize(pageSize);
		pagebean.setAllRow(allRow);
		pagebean.setCurrentPage(currentPage);
		pagebean.setTotalPage(totalPage);
		pagebean.setList_message(list_message);
		pagebean.init();
		return pagebean;
	}

	public pageBean queryForPage_forMessage_for_client(int pageSize, int Page) {
		final String  sql = "from Message message where message.state = 1 order by message.id desc";
		int allRow = page_dao.getAllRowCount(sql);//总行数
		System.out.println("allrow="+allRow);
		int totalPage = pageBean.countTotalPage(pageSize, allRow);//总页数
		final int currentoffset = pageBean.currentOffset(pageSize, Page);//当前页的开始记录
		final int length = pageSize;
		final int currentPage = pageBean.countCurrentPage(Page);
		List<Message> list_message  = page_dao.queryForPage_Message(sql, currentoffset, length);
		//把分页信息保存到bean中
		pageBean pagebean = new pageBean();
		pagebean.setPageSize(pageSize);
		pagebean.setAllRow(allRow);
		pagebean.setCurrentPage(currentPage);
		pagebean.setTotalPage(totalPage);
		pagebean.setList_message(list_message);
		pagebean.init();
		return pagebean;
	}
	public pageBean queryForPage_forThesis(int pageSize, int Page) {
		final String sql = "from Thesis thesis order by thesis.id desc";
		int allRow = page_dao.getAllRowCount(sql);	//总行数
		System.out.println("allRow="+allRow);
		int totalPage = pageBean.countTotalPage(pageSize, allRow);//总页数
		final int currentoffset = pageBean.currentOffset(pageSize, Page);//当前页的开始记录
		final int length = pageSize;
		final int currentPage = pageBean.countCurrentPage(Page);
		List<Thesis> list_thesis  = page_dao.queryForPage_Thesis(sql, currentoffset, length);
		//把分页信息保存到bean中
		pageBean pagebean = new pageBean();
		pagebean.setPageSize(pageSize);
		pagebean.setAllRow(allRow);
		pagebean.setCurrentPage(currentPage);
		pagebean.setTotalPage(totalPage);
		pagebean.setList_thesis(list_thesis);
		pagebean.init();
		return pagebean;
	}
	public pageBean queryForPage_forblackMember(int pageSize, int page) {
		final String sql = "from Member p order by p.id desc";
		int allRow = page_dao.getAllRowCount(sql);// 总行数
		int totalPage = pageBean.countTotalPage(pageSize, allRow);// 总页数
		final int currentoffset = pageBean.currentOffset(pageSize, page);// 当前页的开始记录
		final int length = pageSize;
		final int currentPage = pageBean.countCurrentPage(page);
		List<Member> list_member = page_dao.queryForPage_forblackMember(sql,
				currentoffset, length);
		// 把分页信息保存到bean中
		pageBean pagebean = new pageBean();
		pagebean.setPageSize(pageSize);
		pagebean.setAllRow(allRow);
		pagebean.setCurrentPage(currentPage);
		pagebean.setTotalPage(totalPage);
		pagebean.setList_member(list_member);
		pagebean.init();
		return pagebean;

	}
	public pageBean queryForPage_forclientMember(int pageSize, int page,String category) {

		final String sql = "from Member p where p.category ="+category;
		int allRow = page_dao.getAllRowCount(sql);// 总行数
		int totalPage = pageBean.countTotalPage(pageSize, allRow);// 总页数
		final int currentoffset = pageBean.currentOffset(pageSize, page);// 当前页的开始记录
		final int length = pageSize;
		final int currentPage = pageBean.countCurrentPage(page);
		List<Member> list_member = page_dao.queryForPage_forblackMember(sql,
				currentoffset, length);
		// 把分页信息保存到bean中
		pageBean pagebean = new pageBean();
		pagebean.setPageSize(pageSize);
		pagebean.setAllRow(allRow);
		pagebean.setCurrentPage(currentPage);
		pagebean.setTotalPage(totalPage);
		pagebean.setList_member(list_member);
		pagebean.init();
		return pagebean;

	}
	public Thesis find_thesis_by_id(int id) {	
		// TODO Auto-generated method stub
		return page_dao.find_thesis_by_id(id);
	}
	
	public Thesis front_page(int id) {
		System.out.println("service");
		return this.page_dao.front_page(id);
	}

	public Thesis next_page(int id) {
		
		return this.page_dao.next_page(id);
	}

}
