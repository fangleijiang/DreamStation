package com.ds.service;

import java.util.List;

import com.ds.bean.Linkus;

public interface Linkus_Service {
	public void save(Linkus linkus);//保存
	public void delete(Linkus linkus);//删除
	public List<Linkus> find_ALL();//遍历
	public Linkus findById(Integer id);//通过id查找
	public void Update(Linkus linkus);//更新
}
