package com.ds.service.impl;

import java.util.List;

import com.ds.bean.Message;

import com.ds.dao.Message_DAO;
import com.ds.service.Message_Service;

public class Message_Service_Impl implements Message_Service {
	private Message_DAO message_dao;

	public Message_DAO getMessage_dao() {
		return message_dao;
	}

	public void setMessage_dao(Message_DAO message_dao) {
		this.message_dao = message_dao;
	}

	public void save(Message message) {
		this.message_dao.saveMessage(message);
	}

	public Message findById(int id) {
		return this.message_dao.findMessageById(id);
	}

	public void update(Message message) {
		this.message_dao.updateMessage(message);
	}

	public void delete(Message message) {
		this.message_dao.deleteMessage(message);
	}

	public List<Message> find_ALL() {
		return this.message_dao.find_ALL();
	}

	public List<Message> find_By_State() {
		
		return this.message_dao.find_By_State();
	}

}
