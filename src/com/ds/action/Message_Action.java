package com.ds.action;

import java.util.Date;
import java.util.Map;

import java.util.List;
import com.ds.bean.Message;
import com.ds.bean.pageBean;
import com.ds.service.Message_Service;
import com.ds.service.Page_Service;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class Message_Action extends ActionSupport{
	private Message message;
	private Message_Service message_service;
	private int page = 1;    //第几页   
	private pageBean pagebean;    //包含分布信息的bean
	private Page_Service page_service;
	private List<Message> list_message;
		  

	public Message getMessage() {
		return message;
	}
	public void setMessage(Message message) {
		this.message = message;
	}
	public Message_Service getMessage_service() {
		return message_service;
	}
	public void setMessage_service(Message_Service message_service) {
		this.message_service = message_service;
	}
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
	
	

	
	public List<Message> getList_message() {
		return list_message;
	}
	public void setList_message(List<Message> list_message) {
		this.list_message = list_message;
	}
	public String saveMessage() throws Exception 
	{
		message.setState(0);
		Date date =  new Date();
		message.setCommentTime(date);
		this.message_service.save(message);
		return SUCCESS;
	}
	public String replyMessage() throws Exception{
		this.message = this.message_service.findById(message.getId());
		return SUCCESS;
	}
	public String updateMessage() throws Exception{
		Date date =  new Date();
		message.setReplyTime(date);
		this.message_service.update(message);
		return SUCCESS;
	}
	public String deleteMessage() throws Exception{
		this.message_service.delete(message);
		return SUCCESS;
		
	}
	@SuppressWarnings("unchecked")
	public String find_allMessages()throws Exception{
		@SuppressWarnings("rawtypes")
		Map  request = (Map) ActionContext.getContext().get("request");
		request.put("list", this.message_service.find_ALL());
		return SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public String find_By_State()throws Exception{
		@SuppressWarnings("rawtypes")
		Map  request = (Map) ActionContext.getContext().get("request");
		request.put("list", this.message_service.find_By_State());
		return SUCCESS;
	}
	
	public String page_action() throws Exception{
	
		this.pagebean = this.page_service.queryForPage_forMessage(5, page);//获取封装了分页信息的pageBean
		System.out.println(this.pagebean);
		this.list_message = this.pagebean.getList_message();//获取数据
		System.out.println("listSize="+list_message.size());
		return SUCCESS;
	}
	
	public String client_page_action() throws Exception{
		
		this.pagebean = this.page_service.queryForPage_forMessage_for_client(3, page);//获取封装了分页信息的pageBean
		System.out.println(this.pagebean);
		this.list_message = this.pagebean.getList_message();//获取数据
		System.out.println("listSize="+list_message.size());
		return SUCCESS;
	}
}
