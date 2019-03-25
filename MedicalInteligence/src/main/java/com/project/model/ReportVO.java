package com.project.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="imagemaster")
public class ReportVO {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int image_id;
	
	private String image_name;
	
	private String image_path;
	
	private String image_status;
	
	private String image_Date;

	private String image_Time;
	
	private String userName;
	
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getImage_id() {
		return image_id;
	}
	public void setImage_id(int image_id) {
		this.image_id = image_id;
	}
	public String getImage_name() {
		return image_name;
	}
	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}
	public String getImage_path() {
		return image_path;
	}
	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}
	public String getImage_status() {
		return image_status;
	}
	public void setImage_status(String image_status) {
		this.image_status = image_status;
	}
	public String getImage_Date() {
		return image_Date;
	}
	public void setImage_Date(String image_Date) {
		this.image_Date = image_Date;
	}
	public String getImage_Time() {
		return image_Time;
	}
	public void setImage_Time(String image_Time) {
		this.image_Time = image_Time;
	}
	

		
}
