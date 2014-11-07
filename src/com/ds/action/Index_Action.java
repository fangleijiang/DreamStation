package com.ds.action;

import java.util.Map;

import com.ds.bean.Index;
import com.ds.service.Index_Service;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Index_Action extends ActionSupport {
private Index_Service index_service;
private Index index;
public Index_Service getIndex_service() {
	return index_service;
}
public void setIndex_service(Index_Service index_service) {
	this.index_service = index_service;
}
public Index getIndex() {
	return index;
}
public void setIndex(Index index) {
	this.index = index;
} 
  
public String delete() throws Exception{
	this.index_service.delete(index);
	return SUCCESS;
	}
public String update() throws Exception{
	this.index_service.update(index);
	return SUCCESS;
}

public String find_By_id() throws Exception{
	this.index = this.index_service.find_By_id(index.getId());
	return SUCCESS;
}

public String find_All() throws Exception{
	Map request = (Map) ActionContext.getContext().get("request");
	request.put("list_index", this.index_service.find_All());
	request.put("list_news1", this.index_service.list_first_five());
	return SUCCESS;
}
}
