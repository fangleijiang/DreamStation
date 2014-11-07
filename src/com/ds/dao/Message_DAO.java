package com.ds.dao;

import java.util.List;

import com.ds.bean.Message;

public interface Message_DAO {
	public void saveMessage(Message message);
	public Message findMessageById(int id);
	public void updateMessage(Message message);
	public void deleteMessage(Message message);
	public List<Message> find_ALL();
	public List<Message> find_By_State();
}
