package com.ds.dao;

import java.util.List;

import com.ds.bean.Member;




public interface Member_DAO {
	public void saveMember(Member member);
	public void removeMember(Member member);
	public void updateMember(Member member);
	public Member findMemberById(int id);
	public List<Member> find_front_four_teacher();
	public List<Member> find_front_twelve_programmer();
	public List<Member> find_front_twelve_painting();
	public List<Member> queryForName(String sql);
  
    
   

}
