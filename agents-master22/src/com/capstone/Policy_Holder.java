package com.capstone;

public class Policy_Holder {
	private int PH_key;
	private int state_key;
	private String firstName;
	private String middleName;
	private String lastName;
	private String DOB;
	private String password;
	private String emailAddress;
	private int policy_key;
	private String type;
	private String statePicture;
	
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
 
    public Policy_Holder(int PH_key,int state_key, String firstName,String middleName,String lastName, String DOB, String password, String emailAddress,int policy_key) {
        this(state_key,firstName,middleName,lastName,DOB, password, emailAddress, policy_key);
        this.PH_key = PH_key;
    }
    
     
    public Policy_Holder(int state_key,String firstName, String middleName, String lastName, String DOB, String password,  String emailAddress,int policy_key) {
        this.state_key = state_key;
    	this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.DOB = DOB;
        this.password = password;
        this.emailAddress = emailAddress;
        this.policy_key = policy_key;

    }
    
    public Policy_Holder(int PH_key,String statePicture, String firstName,String middleName,String lastName, String DOB, String password, String emailAddress,String type) {
        this(statePicture,firstName,middleName,lastName,DOB, password, emailAddress, type);
        this.PH_key = PH_key;
    }
    public Policy_Holder(String statePicture,String firstName, String middleName, String lastName, String DOB, String password,  String emailAddress,String type) {
        this.statePicture=statePicture;
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
	
	public int getState_key() {
		return state_key;
	}

	public void setState_key(int state_key) {
		this.state_key = state_key;
	}

	public String getStatePicture() {
		return statePicture;
	}

	public void setStatePicture(String statePicture) {
		this.statePicture = statePicture;
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
