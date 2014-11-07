/**
 * 
 */
package com.ds.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.ds.bean.Culture;
import com.ds.dao.Culture_DAO;

/**
 * @author flj
 * 
 */
public class Culture_DAO_Impl extends HibernateDaoSupport implements
		Culture_DAO {

	/**
	 * ��������
	 */
	public void save(Culture culture) {

		this.getHibernateTemplate().save(culture);
	}

	/**
	 * ɾ������
	 */
	public void delete(Culture culture) {
		this.getHibernateTemplate().delete(culture);
	}

	/**
	 * 
	 * ���ҳ����е�����
	 */
	public List<Culture> find_all() {

		String sql = "from Culture culture order by culture.id desc";
		@SuppressWarnings("unchecked")
		List<Culture> list = this.getHibernateTemplate().find(sql);
		return list;
	}

	/**
	 * 
	 * ͨ��id�Ų��ҳ�culture����
	 */
	public Culture findById(Integer id) {
		Culture culture = (Culture) this.getHibernateTemplate().get(Culture.class, id);
		return culture;
	}

	/**
	 * ���ж���
	 */
	public void update(Culture culture) {
		this.getHibernateTemplate().update(culture);

	}

}
