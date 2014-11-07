package com.ds.service;

import com.ds.bean.News;
import com.ds.bean.Thesis;
import com.ds.bean.pageBean;

public interface NewsService 
{
	public void save(News news);
	public void delete(News news);
	public void update(News news);
	public News findById(int id);
	public pageBean queryForPage(int pageSize,int currentPage);
	
	
	public News front_page(int id);
	public News next_page(int id);
}
