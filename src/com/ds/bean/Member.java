package com.ds.bean;

import java.util.List;

/**
 * 
 *
 */
public class Member {
	private int id;
	private String name;
	private String introduction;
	private String image_small;
	private String image_big;
	private String grade_major;
	private String category;
	private List<Member> list_members;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getImage_small() {
		return image_small;
	}
	public void setImage_small(String image_small) {
		this.image_small = image_small;
	}
	public String getImage_big() {
		return image_big;
	}
	public void setImage_big(String image_big) {
		this.image_big = image_big;
	}
	public String getGrade_major() {
		return grade_major;
	}
	public void setGrade_major(String grade_major) {
		this.grade_major = grade_major;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public List<Member> getList_members() {
		return list_members;
	}
	public void setList_members(List<Member> list_members) {
		this.list_members = list_members;
	}

	
}