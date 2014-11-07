package com.ds.bean;

import java.util.Date;

/**
 * @author flj
 *
 */
public class Culture {
private int id ;
private String title;
private String content;
private Date time;
public Date getTime() {
	return time;
}
public void setTime(Date time) {
	this.time = time;
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

}
