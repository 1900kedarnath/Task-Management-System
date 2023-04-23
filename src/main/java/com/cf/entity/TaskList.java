package com.cf.entity;



import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
public class TaskList {
	
	@Id      //id attribute its id for table
	private int id;
	private String name;
	private Date startDate;
	private Date endDate;
	private String status;
	private String note;
	
	
	
	public TaskList() {
		super();
	}
	public TaskList(int id, String name, Date startDate, Date endDate, String status, String note) {
		super();
		this.id = id;
		this.name = name;
		this.startDate = startDate;
		this.endDate = endDate;
		this.status = status;
		this.note = note;
	}
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
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	@Override
	public String toString() {
		return "Task [id=" + id + ", name=" + name + ", startDate=" + startDate + ", endDate=" + endDate + ", status="
				+ status + ", note=" + note + "]";
	}
	
	

}
