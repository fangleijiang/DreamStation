package com.ds.service;

import java.util.List;

import com.ds.bean.Culture;

/**
 * @author flj
 *
 */
public interface Culture_Service {
	public void save(Culture culture);//�洢 
    public void delete(Culture culture);//ɾ��
    public List<Culture> find_all();//���������е����ݣ��ŵ�list��
    public Culture findById(Integer id);//ͨ��id����
    public void update(Culture culture);//����
    
}
