package com.ds.dao.impl;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


import com.ds.bean.Member;

import com.ds.dao.Member_DAO;

public class Member_DAO_Impl extends HibernateDaoSupport implements Member_DAO {
	public void saveMember(Member member) {

		this.getHibernateTemplate().save(member);

	}

	public void removeMember(Member member) {
		this.getHibernateTemplate().delete(member);
	}

	public void updateMember(Member member) {
		this.getHibernateTemplate().update(member);
	}

	public Member findMemberById(int id) {
		Member member = (Member) this.getHibernateTemplate().get(Member.class, id);
		
		return member;
	}
	

	
	/*查找前四条老师的信息*/
	@SuppressWarnings("unchecked")
	public List<Member> find_front_four_teacher() {
		Session session = null;
		List<Member> list_teacher = null;
		try{
		session=this.getSession();
	
		String sql="from Member m where m.category='teacher'";
		Query q = session.createQuery(sql);
		q.setFirstResult(0);
		q.setMaxResults(5);
		list_teacher = q.list();
		q = null;
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			if(session!=null){
				session.close();
			}
		}
		return list_teacher;
	}
	
	
	/*查找前十二条程序员的信息*/
	@SuppressWarnings("unchecked")
	public List<Member> find_front_twelve_programmer() {
		Session session = null;
		List<Member> list_programmer = null;
		try{
		session=this.getSession();

		String sql="from Member m where m.category='programmer'";
		Query q = session.createQuery(sql);
		q.setFirstResult(0);
		q.setMaxResults(10);
		list_programmer = q.list();
		q = null;
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			if(session!=null){
				session.close();
			}
		}
		return list_programmer;
	}
	
	
	
	
	/*查找前十二条美工的信息*/
	@SuppressWarnings("unchecked")
	public List<Member> find_front_twelve_painting() {
		Session session = null;
		List<Member> list_painting = null;
		try{
		session=this.getSession();

		String sql="from Member m where m.category='painting'";
		Query q = session.createQuery(sql);
		q.setFirstResult(0);
		q.setMaxResults(10);
		list_painting = q.list();
		q = null;
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			if(session!=null){
				session.close();
			}
		}
		return list_painting;
	}

	public List<Member> queryForName(String hql) {
		Session session = this.getSession();
		Query q = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Member> list = q.list();
		session.close();
		return list;
	
	}
	
}
