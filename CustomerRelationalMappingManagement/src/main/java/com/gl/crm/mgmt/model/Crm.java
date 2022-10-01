package com.gl.crm.mgmt.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Crm {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	@Column(name="fname")
	private String fname;
	@Column(name="lname")
	private String lname;
	@Column(name="email")
	private String email;
	
	public Crm() {
		
	}

	public Crm(String fname, String lname, String email) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getfname() {
		return fname;
	}

	public void setfname(String fname) {
		this.fname = fname;
	}

	public String getlname() {
		return lname;
	}

	public void setlname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Crm [id=" + id + ", fname=" + fname + ", lname=" + lname + ", email=" + email + "]";
	}
	
	
	

}
