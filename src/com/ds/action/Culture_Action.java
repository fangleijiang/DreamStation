package com.ds.action;


import java.util.Date;
import java.util.Map;



import com.ds.bean.Culture;
import com.ds.service.Culture_Service;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class Culture_Action extends ActionSupport {
	private Culture culture;
	private Culture_Service culture_service;

	public Culture getCulture() {
		return culture;
	}

	public void setCulture(Culture culture) {
		this.culture = culture;
	}

	public Culture_Service getCulture_service() {
		return culture_service;
	}

	public void setCulture_service(Culture_Service culture_service) {
		this.culture_service = culture_service;
	}

	
	public String save_culture() throws Exception{
		Date time =  new Date();
		culture.setTime(time);
		this.culture_service.save(culture);
		return SUCCESS;
	}
	
	public String delete_culture() throws Exception{
		this.culture_service.delete(culture);
		return SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public String List_ALL() throws Exception{
		
		@SuppressWarnings("rawtypes")
		Map request = (Map) ActionContext.getContext().get("request");  
		request.put("list", this.culture_service.find_all());
		return SUCCESS;
	}
	
	public String List_by_id() throws Exception{
		this.culture = this.culture_service.findById(culture.getId());
		return SUCCESS;
	}
	
	public String update() throws Exception{
		Date time =  new Date();
		culture.setTime(time);
		this.culture_service.update(culture);
		return SUCCESS;
	}
}
