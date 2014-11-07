package com.ds.dao;

import java.util.List;

import com.ds.bean.News;
import com.ds.bean.Thesis;

public interface NewsDAO {
	public void saveNews(News news);
	public void removeNews(News news);
	public void updateNews(News news);
	public News findNewsById(int id);

    @SuppressWarnings("rawtypes")
	public List queryForPage(final String hql,final int offset,final int length);
    public int getAllRowCount(String hql);

    
    public News front_page(int id);
	public News next_page(int id);
}
