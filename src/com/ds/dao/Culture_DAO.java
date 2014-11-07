package com.ds.dao;

import java.util.List;

import com.ds.bean.Culture;

public interface Culture_DAO {
        public void save(Culture culture);
        public void delete(Culture culture);
        public List<Culture> find_all();
        public Culture findById(Integer id);
        public void update(Culture culture);
        
}
