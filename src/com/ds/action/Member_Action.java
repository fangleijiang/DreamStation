package com.ds.action;

import java.util.List;
import java.util.Map;

import com.ds.bean.Member;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ds.bean.pageBean;
import com.ds.service.Member_Service;
import com.ds.service.Page_Service;

@SuppressWarnings("serial")
public class Member_Action extends ActionSupport {
	private Member member;
	private Member_Service member_service;
	private Page_Service page_service;
	private List<Member> listMember;
	private List<Member> list_teacher;
	private List<Member> list_programmer;
	private List<Member> list_painting;

	
	private int page=1;
	private pageBean pagebean;

	public List<Member> getList_teacher() {
		return list_teacher;
	}

	public void setList_teacher(List<Member> list_teacher) {
		this.list_teacher = list_teacher;
	}

	public List<Member> getList_programmer() {
		return list_programmer;
	}

	public void setList_programmer(List<Member> list_programmer) {
		this.list_programmer = list_programmer;
	}

	public List<Member> getList_painting() {
		return list_painting;
	}

	public void setList_painting(List<Member> list_painting) {
		this.list_painting = list_painting;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	

	public Member_Service getMember_service() {
		return member_service;
	}

	public void setMember_service(Member_Service member_service) {
		this.member_service = member_service;
	}

	public pageBean getPagebean() {
		return pagebean;
	}

	public void setPagebean(pageBean pagebean) {
		this.pagebean = pagebean;
	}

	public String RemoveMember() throws Exception {
		this.member_service.delete(member);
		return SUCCESS;
	}

	public String SaveMember() throws Exception {

		this.member_service.save(member);

		return SUCCESS;
	}

	public String UpdateMember() throws Exception {

		this.member_service.update(member);
		return SUCCESS;
	}


/*	public String black_page_action() throws Exception{
		this.pagebean = this.page_service.queryForPage_forblackMember(5, page);//获取封装了分页信息的pageBean
		this.listMember = this.pagebean.getList();//获取数据
		return SUCCESS;
	}*/

	public Page_Service getPage_service() {
		return page_service;
	}

	public void setPage_service(Page_Service page_service) {
		this.page_service = page_service;
	}

	public List<Member> getListMember() {
		return listMember;
	}

	public void setListMember(List<Member> listMember) {
		this.listMember = listMember;
	}

	public String find_black_first_four() throws Exception{		
		this.pagebean = this.page_service.queryForPage_forblackMember(5, page);//获取封装了分页信息的pageBean
		this.listMember = this.pagebean.getList_member();//获取数据
		return SUCCESS;
	}
	public String client_list_all_member() throws Exception{
		this.pagebean = this.page_service.queryForPage_forclientMember(15, page,member.getCategory());//获取封装了分页信息的pageBean
		this.listMember = this.pagebean.getList_member();//获取数据
		return SUCCESS;
	}
	public String Find_Member_By_Id() throws Exception {
		/* this.pageBean = service.queryForPage(1, getPage()); */
		this.member = this.member_service.findById(member.getId());
		return SUCCESS;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public String list_front_image() throws Exception{
		Map request = (Map) ActionContext.getContext().get("request");
		
		request.put("list_teacher",this.member_service.find_front_four_teacher());
		request.put("list_programmer",this.member_service.find_front_twelve_programmer());
		request.put("list_painting",this.member_service.find_front_twelve_painting());
		return SUCCESS;
	}
	public String findUserByName() throws Exception{
		this.member=this.member_service.queryForName_forMember(member.getName());
		this.listMember=this.member.getList_members();
		if(listMember.toString().equals("[]"))
		{
			return LOGIN;
		}
		else return SUCCESS;
	}
	
}
