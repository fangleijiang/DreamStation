package com.ds.bean;

import java.util.Date;

public class Spirit {
private int id;
private String title;

private String spirit;
private Date time;
public int getId() {
	return id;
}

public Date getTime() {
	return time;
}

public void setTime(Date time) {
	this.time = time;
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

public String getSpirit() {
	return spirit;
}

public void setSpirit(String spirit) {
	this.spirit = spirit;
}

}
