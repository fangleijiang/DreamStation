package com.ds.service;

import java.util.List;

import com.ds.bean.Member;


public interface Member_Service {

	public void save(Member member);
	public void delete(Member member);
	public void update(Member member);
	public Member findById(int id);
	public List<Member> find_front_four_teacher();//查询导师前四张图片
	public List<Member> find_front_twelve_programmer();//查找前程序员
	public List<Member> find_front_twelve_painting();//美工
	public Member queryForName_forMember(String name);
}
