package com.ds.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.ds.bean.Index;
import com.ds.bean.News;
import com.ds.bean.Project;
import com.ds.dao.Index_DAO;

public class Index_DAO_Impl extends HibernateDaoSupport implements Index_DAO {

/*	public void save(Index index) {
		this.getHibernateTemplate().save(index);

	}*/

	public void delete(Index index) {
		this.getHibernateTemplate().delete(index);

	}

	public void update(Index index) {
	this.getHibernateTemplate().update(index);

	}

	public List<Index> find_All() {
		String sql = "from Index";
		List<Index> list_index  = this.getHibernateTemplate().find(sql);
		return list_index;
	}

	public Index find_By_id(Integer id) {
	Index index = (Index)this.getHibernateTemplate().get(Index.class, id);
		return index;
	}

	public List<News> list_first_five() {
		Session session = null;
		List<News> list_news1 = null;
		try{
		session=this.getSession();
//		System.out.println("session="+session);
		String sql="from News";
		Query q = session.createQuery(sql);
		q.setFirstResult(0);
		q.setMaxResults(8);
		list_news1 = q.list();
		q = null;
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			if(session!=null){
				session.close();
			}
		}
		return list_news1;
	}

}
