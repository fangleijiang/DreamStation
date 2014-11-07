package com.ds.dao.impl;


import java.util.List;


import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.ds.bean.Message;
import com.ds.dao.Message_DAO;


public class Message_DAO_Impl extends HibernateDaoSupport implements Message_DAO {

	public void saveMessage(Message message) {
		this.getHibernateTemplate().save(message);
	}
	public Message findMessageById(int id) {
		Message message = (Message) this.getHibernateTemplate().get(Message.class, id);
		return message;
	}
	public void updateMessage(Message message) {
		this.getHibernateTemplate().update(message);

	}

	public void deleteMessage(Message message) {
		this.getHibernateTemplate().delete(message);
	}
	@SuppressWarnings("unchecked")
	public List<Message> find_ALL() {
		String sql = "from Message message order by message.id desc";
		List<Message> list = this.getHibernateTemplate().find(sql);
		return list;
	}

	public List<Message> find_By_State() {
		String sql = "from Message message where message.state = 1 ";
		List<Message> list = this.getHibernateTemplate().find(sql);
		return list;
	}

}
