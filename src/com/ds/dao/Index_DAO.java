package com.ds.dao;

import java.util.List;

import com.ds.bean.Index;
import com.ds.bean.News;

public interface Index_DAO {
/*public void save(Index index);*/
public void delete(Index index);
public void update(Index index);
public List<Index> find_All();
public Index find_By_id(Integer id);
public List<News> list_first_five();
}
