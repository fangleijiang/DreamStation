package com.ds.bean;

import java.util.Date;

public class Thesis {
	private int id;
	private String title;
	private String content;
	private Date datetime;
	private String author;
	private int clickRate;
	private int hasNextPeice;
	

	public int getHasNextPeice() {
		return hasNextPeice;
	}
	public void setHasNextPeice(int hasNextPeice) {
		this.hasNextPeice = hasNextPeice;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
	public int getClickRate() {
		return clickRate;
	}
	public void setClickRate(int clickRate) {
		this.clickRate = clickRate;
	}
	
	
	
}
