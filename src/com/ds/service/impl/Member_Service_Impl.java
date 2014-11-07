package com.ds.service.impl;


import java.util.List;


import com.ds.bean.Member;
import com.ds.dao.Member_DAO;
import com.ds.service.Member_Service;

public class Member_Service_Impl implements Member_Service {
	
	private Member_DAO memberDao;

	public Member_DAO getMemberDao() {
		return memberDao;
	}

	public void setMemberDao(Member_DAO memberDao) {
		this.memberDao = memberDao;
	}
	
	
	
	/*--------------------------方法----------------------------------------*/
	public void save(Member member) {
		
		this.memberDao.saveMember(member);   
	}
	
	public void delete(Member member) {
		
		this.memberDao.removeMember(member);
	}
	public void update(Member member) {
		
		this.memberDao.updateMember(member);
	}
	public Member findById(int id) {
		return this.memberDao.findMemberById(id);
	}
	public List<Member> find_front_four_teacher(){
		
		return this.memberDao.find_front_four_teacher();
	}
	public List<Member> find_front_twelve_programmer(){
		
		return this.memberDao.find_front_twelve_programmer();
	}
	public List<Member> find_front_twelve_painting(){
		
		return this.memberDao.find_front_twelve_painting();
	
	}

	public Member queryForName_forMember(String name) {
		final String sql="from Member m where m.name like '%"+name+"%' order by m.id"; 
		/*final String sql="from Member m where m.name=\'" + name + "\' order by m.id";*/
		List<Member> list=memberDao.queryForName(sql);
		Member user=new Member();
		user.setList_members(list);
		return user;
	}
}

