package com.ds.dao.impl;

import java.util.List;


import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.ds.bean.Spirit;
import com.ds.dao.Spirit_DAO;

/**
 * 
 * @author flj
 * 
 */
public class Spirit_DAO_Impl extends HibernateDaoSupport implements Spirit_DAO {

	/**
	 * 保存
	 */
	public void save(Spirit spirit) {
		this.getHibernateTemplate().save(spirit);
	}

	/**
	 * 删除
	 */
	public void delete(Spirit spirit) {
		this.getHibernateTemplate().delete(spirit);

	}

	/**
	 * 遍历
	 */
	public List<Spirit> find_all() {
		String sql = "from Spirit spirit order by spirit.id desc";
		@SuppressWarnings("unchecked")
		List<Spirit> list = this.getHibernateTemplate().find(sql);
		return list;
	}

	/**
	 * 通过id查找
	 */
	public Spirit find_By_Id(Integer id) {
		Spirit spirit = (Spirit) this.getHibernateTemplate().get(Spirit.class, id);
		return spirit;
	}

	/**
	 * 更新
	 */
	public void update(Spirit spirit) {
	this.getHibernateTemplate().update(spirit);

	}

}
