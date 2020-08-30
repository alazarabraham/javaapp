package com.capstone;

public class Policy_Holder {
	private int PH_key;
	private int country_key;
	private String firstName;
	private String middleName;
	private String lastName;
	private String DOB;
	private String password;
	private String emailAddress;
	private int policy_key;
	private String type;
	private String countryPicture;
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	

	public Policy_Holder() {
    }
 
    public Policy_Holder(int PH_key) {
        this.PH_key = PH_key;
    }
 
    public Policy_Holder(int PH_key,int country_key, String firstName,String middleName,String lastName, String DOB, String password, String emailAddress,int policy_key) {
        this(country_key,firstName,middleName,lastName,DOB, password, emailAddress, policy_key);
        this.PH_key = PH_key;
    }
    
     
    public Policy_Holder(int country_key,String firstName, String middleName, String lastName, String DOB, String password,  String emailAddress,int policy_key) {
        this.country_key = country_key;
    	this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.DOB = DOB;
        this.password = password;
        this.emailAddress = emailAddress;
        this.policy_key = policy_key;

    }
    
    public Policy_Holder(int PH_key,String countryPicture, String firstName,String middleName,String lastName, String DOB, String password, String emailAddress,String type) {
        this(countryPicture,firstName,middleName,lastName,DOB, password, emailAddress, type);
        this.PH_key = PH_key;
    }
    public Policy_Holder(String countryPicture,String firstName, String middleName, String lastName, String DOB, String password,  String emailAddress,String type) {
        this.countryPicture=countryPicture;
    	this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.DOB = DOB;
        this.password = password;
        this.emailAddress = emailAddress;
        this.type = type;

    }
    public Policy_Holder(String firstName, String middleName, String lastName, String DOB, String password,  String emailAddress) {
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.DOB = DOB;
        this.password = password;
        this.emailAddress = emailAddress;

    }

    
	public int getPH_key() {
		return PH_key;
	}

	public void setPH_key(int pH_key) {
		PH_key = pH_key;
	}
	
	public int getCountry_key() {
		return country_key;
	}

	public void setCountry_key(int country_key) {
		this.country_key = country_key;
	}

	public String getCountryPicture() {
		return countryPicture;
	}

	public void setCountryPicture(String countryPicture) {
		this.countryPicture = countryPicture;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDOB() {
		return DOB;
	}

	public void setDOB(String dOB) {
		DOB = dOB;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public int getPolicy_key() {
		return policy_key;
	}

	public void setPolicy_key(int policy_key) {
		this.policy_key = policy_key;
	}
    
    
	
}
