package com.ds.action;

import java.util.Map;

import com.ds.bean.Linkus;
import com.ds.service.Linkus_Service;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class Linkus_Action extends ActionSupport {
	private Linkus linkus;
	private Linkus_Service linkus_service;

	public Linkus getLinkus() {
		return linkus;
	}

	public void setLinkus(Linkus linkus) {
		this.linkus = linkus;
	}

	public Linkus_Service getLinkus_service() {
		return linkus_service;
	}

	public void setLinkus_service(Linkus_Service linkus_service) {
		this.linkus_service = linkus_service;
	}
/**
 * 
 * @param linkus
 * @return
 * @throws Exception
 */
	public String save() throws Exception {
		this.linkus_service.save(linkus);
		return SUCCESS;
	}
	
	
	/**
	 *
	 * @param linkus
	 * @return
	 * @throws Exception
	 */
	public String delete() throws Exception{
		
		this.linkus_service.delete(linkus);
		return SUCCESS;
	}
	
	
	/**
	 * 
	 * @param linkus
	 * @return
	 * @throws Exception
	 */
	public String update() throws Exception{
		this.linkus_service.Update(linkus);
		return SUCCESS;
		
	}
	
	
	/**
	 * 
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public String List_all() throws Exception{
		@SuppressWarnings("rawtypes")
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", this.linkus_service.find_ALL());
		return SUCCESS;
	}
	
	
	/**
	 * 
	 * @return
	 * @throws Exception
	 */
	public String List_By_Id() throws Exception{
		this.linkus = this.linkus_service.findById(linkus.getId());
		return SUCCESS;
	}
}
