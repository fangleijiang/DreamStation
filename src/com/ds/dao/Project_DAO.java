package com.ds.dao;

import java.util.List;

import com.ds.bean.Project;

public interface Project_DAO {
	public void save(Project project);//添加项目
	public void delete(Project project);//删除项目
	public void update(Project project);//更新项目
	public List<Project> find_ALL();//遍历
	public Project find_By_Id(Integer id);//通过id查找
	public List<Project> find_First_four();//查询前四条
}
