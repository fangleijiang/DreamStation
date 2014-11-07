package com.ds.dao.impl;

import java.util.List;


import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.ds.bean.Linkus;
import com.ds.dao.Linkus_DAO;

public class Linkus_DAO_Impl extends HibernateDaoSupport implements Linkus_DAO {
	/**
	 * 将联系人信息保存进数据库
	 */
	public void save(Linkus linkus) {
		this.getHibernateTemplate().save(linkus);

	}
	/**
	 * 删除数据库
	 */
	public void delete(Linkus linkus) {
		this.getHibernateTemplate().delete(linkus);

	}
	/**
	 *遍历所有信息
	 */
	@SuppressWarnings("unchecked")
	public List<Linkus> find_ALL() {
		String sql = "from Linkus linkus order by linkus.id desc ";
		List<Linkus> list = this.getHibernateTemplate().find(sql);
		return list;
	}
	/**
	 * ͨ通过id号查找
	 */
	public Linkus findById(Integer id) {
		Linkus linkus = (Linkus) this.getHibernateTemplate().get(Linkus.class,
				id);
		return linkus;
	}
	/**
	 * 更新
	 */
	public void Update(Linkus linkus) {
		this.getHibernateTemplate().update(linkus);

	}

}
