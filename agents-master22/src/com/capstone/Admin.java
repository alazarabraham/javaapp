package com.capstone;


public class Admin {
    private int id;
    private String fullname;
    private String email;
    private String password;
 
    public Admin() {
    }
 
    public Admin(int id) {
        this.id = id;
    }
 
    public Admin(int id, String fullname,String email,String password) {
        this(fullname,email,password);
        this.id = id;
    }
     
    public Admin(String fullname, String email, String password) {
        this.fullname = fullname;
        this.email = email;
        this.password = password;
       

    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
 
     
}