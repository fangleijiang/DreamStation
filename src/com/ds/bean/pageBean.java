package com.ds.bean;

import java.util.List;

public class pageBean {
private List<Project> list;
private List<Message> list_message;
private List<News> list_news;
private List<Thesis> list_thesis;
private List<Member> list_member;


private int allRow;//总行数
private int totalPage;//总页数
private int currentPage;//当前页数
private int pageSize;//每页显示记录的条数
private boolean isFirstPage;//是否是第一页
private boolean isLastPage;//是否是最后一页
private boolean hasNextPage;//是否有下一页
private boolean hasPreviousPage;//是否有下一页
public List getList() {
	return list;
}
public void setList(List list) {
	this.list = list;
}
public int getAllRow() {
	return allRow;
}
public void setAllRow(int allRow) {
	this.allRow = allRow;
}
public int getTotalPage() {
	return totalPage;
}
public void setTotalPage(int totalPage) {
	this.totalPage = totalPage;
}
public int getCurrentPage() {
	return currentPage;
}
public void setCurrentPage(int currentPage) {
	this.currentPage = currentPage;
}
public int getPageSize() {
	return pageSize;
}
public void setPageSize(int pageSize) {
	this.pageSize = pageSize;
}
public boolean isFirstPage() {
	return isFirstPage;
}
public void setFirstPage(boolean isFirstPage) {
	this.isFirstPage = isFirstPage;
}
public boolean isLastPage() {
	return isLastPage;
}
public void setLastPage(boolean isLastPage) {
	this.isLastPage = isLastPage;
}
public boolean isHasNextPage() {
	return hasNextPage;
}
public void setHasNextPage(boolean hasNextPage) {
	this.hasNextPage = hasNextPage;
}
public boolean isHasPreviousPage() {
	return hasPreviousPage;
}
public void setHasPreviousPage(boolean hasPreviousPage) {
	this.hasPreviousPage = hasPreviousPage;
}
public List<Message> getList_message() {
	return list_message;
}
public void setList_message(List<Message> list_message) {
	this.list_message = list_message;
}

public List<News> getList_news() {
	return list_news;
}
public void setList_news(List<News> list_news) {
	this.list_news = list_news;
}
public List<Member> getList_member() {
	return list_member;
}
public void setList_member(List<Member> list_member) {
	this.list_member = list_member;
}

/*
 * 初始化分页信息
 * 
 */


public void init(){
	this.isFirstPage = isFirstPage;
	this.isLastPage = isLastPage;
	this.hasPreviousPage = hasPreviousPage;
	this.hasNextPage = hasNextPage;
	}

/*
 * 计算总页数
 * pageSize 每页的记录数
 * allRow 总记录数
 * @return 总页数 
 * 
 */
public static int countTotalPage(final int pageSize,final int allRow){
	int total = allRow % pageSize == 0 ? allRow/pageSize : allRow/pageSize + 1;
	return total;
}

/*
 * 计算当前页开始记录
 * pageSize 每页记录数
 * currentPage 当前第几页
 * @return 当前开始记录号
 */

public static int currentOffset(final int pageSize,final int currentPage){
	final int offset = pageSize * ( currentPage - 1);
	return offset;
}

/*
 * 计算当前页
 * 如果为0，则用1代替
 * 
 */

public static int countCurrentPage(int page){
	final int current = (page == 0 ? 1 : page);
	return current;
	
	
}
public List<Thesis> getList_thesis() {
	return list_thesis;
}
public void setList_thesis(List<Thesis> list_thesis) {
	this.list_thesis = list_thesis;
}


}
