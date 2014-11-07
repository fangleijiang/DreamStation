package com.ds.service.impl;

import java.util.List;


import com.ds.bean.News;
import com.ds.bean.Thesis;
import com.ds.bean.pageBean;
import com.ds.dao.NewsDAO;
import com.ds.service.NewsService;

public class Newsserviceimpl implements NewsService{
	private NewsDAO newsDao;
	
	public NewsDAO getNewsDao() {
		return newsDao;
	}
	public void setNewsDao(NewsDAO newsDao) {
		this.newsDao = newsDao;
	}
	
	public void save(News news) {
	
		this.newsDao.saveNews(news);   
	}
	
	public void delete(News news) {
		
		this.newsDao.removeNews(news);
	}
	public void update(News news) {
		
		this.newsDao.updateNews(news);
	}
	public News findById(int id) {
		return this.newsDao.findNewsById(id);
	}

	@SuppressWarnings("unchecked")
	public pageBean queryForPage(int pageSize, int page) {

		final String hql = "from News news order by news.id desc";
		int allRow = newsDao.getAllRowCount(hql); 
		int totalPage = pageBean.countTotalPage(pageSize, allRow);
		final int offset = pageBean.currentOffset(pageSize, page);
		final int length = pageSize;
		final int currentPage = pageBean.countCurrentPage(page);
		List<News> list_news = newsDao.queryForPage(hql, offset, length); 

		
		pageBean pageBean = new pageBean();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList_news(list_news);
		pageBean.init();
		return pageBean;
	}
	
	public News front_page(int id) {
		System.out.println("service");
		return this.newsDao.front_page(id);
	}

	public News next_page(int id) {
		
		return this.newsDao.next_page(id);
	}
}
