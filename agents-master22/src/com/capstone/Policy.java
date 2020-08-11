package com.capstone;


public class Policy {
	private int policy_key;
	private String type;
	private String time_period;
	

	public Policy() {
    }
 
    public Policy(int policy_key) {
        this.policy_key = policy_key;
    }
 
    public Policy(int policy_key, String type,String time_period) {
        this(type, time_period);
        this.policy_key = policy_key;
    }
    
     
    public Policy(String type, String time_period) {
        this.type = type;
        this.time_period = time_period;
 
    }

	public int getPolicy_key() {
		return policy_key;
	}

	public void setPolicy_key(int policy_key) {
		this.policy_key = policy_key;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTime_period() {
		return time_period;
	}

	public void setTime_period(String time_period) {
		this.time_period = time_period;
	}
    
   
    

    
	
}
