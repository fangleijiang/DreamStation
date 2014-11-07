package com.ds.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.ds.bean.Thesis;
import com.ds.dao.Thesis_DAO;

public class Thesis_DAO_Impl  extends HibernateDaoSupport implements Thesis_DAO {

	public void saveThesis(Thesis thesis) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(thesis);
	}
	public void deleteThesis(Thesis thesis) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(thesis);
	}
	public void updateThesis(Thesis thesis) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(thesis);
	}
	public Thesis findById(int id)
	{
		Thesis thesis = (Thesis) this.getHibernateTemplate().get(Thesis.class, id);
		return thesis;
	}
	@SuppressWarnings("unchecked")
	public int find_ALL() {
		// TODO Auto-generated method stub
		String sql = "from Thesis thesis order by thesis.id desc";
		List<Thesis> list = this.getHibernateTemplate().find(sql);
		return list.size();
	}
	
	
	
	

	
	
}
