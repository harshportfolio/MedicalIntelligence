package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Xray")
public class XrayVO {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="xrayId")
	private int xrayId;
	
	@Column(name="patientsName")
	private String patientsName;
	
	@Column(name="age")
	private String age;
	
	public int getXrayId() {
		return xrayId;
	}

	public void setXrayId(int xrayId) {
		this.xrayId = xrayId;
	}

	public String getPatientsName() {
		return patientsName;
	}

	public void setPatientsName(String patientsName) {
		this.patientsName = patientsName;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getXrayFileName() {
		return xrayFileName;
	}

	public void setXrayFileName(String xrayFileName) {
		this.xrayFileName = xrayFileName;
	}

	public String getXrayFilePath() {
		return xrayFilePath;
	}

	public void setXrayFilePath(String xrayFilePath) {
		this.xrayFilePath = xrayFilePath;
	}

	@Column(name="xrayFileName")
	private String xrayFileName;
	
	@Column(name="xrayFilePath")
	private String xrayFilePath;
	
}
