package com.project.model;

import javax.persistence.*;

@Entity
@Table(name="staff")
public class staff {

	@Id
	@GeneratedValue
	@Column(name="sid")
	int sid;
	@Column(name="sname")
	String sname;
	@Column(name="salary")
	double salary;
	@Column(name="desig")
	String designation;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	
	
}
