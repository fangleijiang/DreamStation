package com.ds.service;

import java.util.List;

import com.ds.bean.Linkus;

public interface Linkus_Service {
	public void save(Linkus linkus);//����
	public void delete(Linkus linkus);//ɾ��
	public List<Linkus> find_ALL();//����
	public Linkus findById(Integer id);//ͨ��id����
	public void Update(Linkus linkus);//����
}
