package com.ds.bean;
/**
 * @author flj
 *
 */
public class Project {
private int id;//主键id
private String title;//项目名称
private String developers;//项目开发者
private String picsite;
private String technology;//技术简介
private String link;//项目链接
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getDevelopers() {
	return developers;
}
public void setDevelopers(String developers) {
	this.developers = developers;
}
public String getTechnology() {
	return technology;
}
public void setTechnology(String technology) {
	this.technology = technology;
}
public String getLink() {
	return link;
}
public void setLink(String link) {
	this.link = link;
}
public String getPicsite() {
	return picsite;
}
public void setPicsite(String picsite) {
	this.picsite = picsite;
}

}
