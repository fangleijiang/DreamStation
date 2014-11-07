package com.ds.dao;

import java.util.List;

import com.ds.bean.Member;
import com.ds.bean.Message;
import com.ds.bean.Project;
import com.ds.bean.Thesis;



public interface Page_DAO {
	/*
	 * 分页查询
	 * hql查询条件
	 * offset开始记录
	 * length一次性查询几条记录
	 */
	public List<Project> queryForPage(final String hql,final int offset,final int length);
	public List<Message> queryForPage_Message(final String hql,final int offset,final int length);
	public List<Message> queryForPage_Message_for_client(final String hql,final int offset,final int length);
	public List<Thesis>  queryForPage_Thesis(final String hql, final int offset,final int length);
	public List<Member>  queryForPage_forblackMember(final String hql,final int offset,final int length);
	
	/**
	 * 查询所有的记录数
	 */
	
	public int getAllRowCount(String sql);

	public Thesis find_thesis_by_id(int id);
	/*科技前沿的上一篇下一篇*/
	public Thesis front_page(int id);
	public Thesis next_page(int id);
}
