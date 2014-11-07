package com.ds.dao.impl;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.orm.toplink.SessionFactory;

import com.ds.bean.Project;
import com.ds.dao.Project_DAO;
import com.opensymphony.xwork2.ActionContext;

public class Project_DAO_Impl extends HibernateDaoSupport implements
		Project_DAO {

	public void save(Project project) {
		this.getHibernateTemplate().save(project);

	}

	public void delete(Project project) {
		this.getHibernateTemplate().delete(project);

	}

	public void update(Project project) {
		this.getHibernateTemplate().update(project);

	}

	@SuppressWarnings("unchecked")
	public List<Project> find_ALL() {
		String sql = "from Project project order by project.id asc";
		List<Project> list = this.getHibernateTemplate().find(sql);
		return list;
	}

	@SuppressWarnings("unused")
	public Project find_By_Id(Integer id) {
		Project project = (Project) this.getHibernateTemplate().get(
				Project.class, id);
		return project;
	}

	@SuppressWarnings("unchecked")
	public List<Project> find_First_four() {
		Session session = null;
		List<Project> list = null;
		try{
		session=this.getSession();
//		System.out.println("session="+session);
		String sql="from Project";
		Query q = session.createQuery(sql);
		q.setFirstResult(0);
		q.setMaxResults(4);
		list = q.list();
		q = null;
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			if(session!=null){
				session.close();
			}
		}
		return list;
	}
		
	
}
