package com.Entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;




@Entity
public class Note_Taker {
	
	@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int nid;
	private String title;
	@Column(length = 2000)
	private String content;
	private Date addedDate;
	
	public Note_Taker( String title, String content, Date addedDate) {
		this.title = title;
		this.content = content;
		this.addedDate = addedDate;
	}
	
	public Note_Taker() {
		// TODO Auto-generated constructor stub
	}

	public int getNid() {
		return nid;
	}

	public void setNid(int nid) {
		this.nid = nid;
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

	public Date getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	
	
	
	

}
