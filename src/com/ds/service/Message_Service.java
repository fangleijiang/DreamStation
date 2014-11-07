package com.ds.service;

import java.util.List;

import com.ds.bean.Message;

public interface Message_Service {
	public void save(Message message);
	public Message findById(int id);
	public void update(Message message);
	public void delete(Message message);
	public List<Message> find_ALL();	//遍历
	public List<Message> find_By_State();
	
	
}
