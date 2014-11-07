package com.ds.service;

import java.util.List;

import com.ds.bean.Culture;

/**
 * @author flj
 *
 */
public interface Culture_Service {
	public void save(Culture culture);//存储 
    public void delete(Culture culture);//删除
    public List<Culture> find_all();//遍历出所有的内容，放到list中
    public Culture findById(Integer id);//通过id查找
    public void update(Culture culture);//更新
    
}
