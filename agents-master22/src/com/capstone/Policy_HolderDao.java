package com.capstone;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;



public class Policy_HolderDao {
    private String jdbcURL;
    private String jdbcUsername;
    private String jdbcPassword;
    private Connection jdbcConnection;
     
    public Policy_HolderDao(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        this.jdbcURL = jdbcURL;
        this.jdbcUsername = jdbcUsername;
        this.jdbcPassword = jdbcPassword;
    }

    protected void connect() throws SQLException {
        if (jdbcConnection == null || jdbcConnection.isClosed()) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            jdbcConnection = DriverManager.getConnection(
                                        jdbcURL, jdbcUsername, jdbcPassword);
        }
    }
	    
	    protected void disconnect() throws SQLException {
	        if (jdbcConnection != null && !jdbcConnection.isClosed()) {
	            jdbcConnection.close();
	        }
	    }
	     
	    public boolean insertPolicy_Holder(Policy_Holder policy_holder) throws SQLException {
	        String sql = "INSERT INTO policy_holder (state_key,firstName, middleName, lastName,DOB, password,emailAddress,policy_key) VALUES (?,?, ? , ? , ? , ? , ?, ?)";
	        connect();
	         
	        PreparedStatement statement = jdbcConnection.prepareStatement(sql);

	        statement.setInt(1, policy_holder.getState_key());
	        statement.setString(2, policy_holder.getFirstName());
	        statement.setString(3, policy_holder.getMiddleName());
	        statement.setString(4, policy_holder.getLastName());
	        statement.setString(5, policy_holder.getDOB());
	        statement.setString(6, policy_holder.getPassword());
	        statement.setString(7, policy_holder.getEmailAddress());
	        statement.setInt(8, policy_holder.getPolicy_key());
	        
	         
	        boolean rowInserted = statement.executeUpdate() > 0;
	        statement.close();
	        disconnect();
	        return rowInserted;
	    }
	     
	    public List<Policy_Holder> listAllPolicy_Holders() throws SQLException {
	        List<Policy_Holder> listPolicy_Holder = new ArrayList<>();
	         
	        String sql = "select ph_key,firstname,middlename,lastname,dob,password,emailaddress,type,statepicture from policy_holder inner join policy using (policy_key) inner join states using (state_key) Order by Ph_key asc ";
	         
	        connect();
	         
	        Statement statement = jdbcConnection.createStatement();
	        ResultSet resultSet = statement.executeQuery(sql);
	         
	        while (resultSet.next()) {
	            int PH_key = resultSet.getInt("PH_key");
	        	String statePicture = resultSet.getString("statePicture");
	            String firstName = resultSet.getString("firstName");
	            String middleName = resultSet.getString("middleName");
	            String lastName = resultSet.getString("lastName");
	            String DOB = resultSet.getString("DOB");
	            String password = resultSet.getString("password");
	            String emailAddress = resultSet.getString("emailAddress");
	            String type = resultSet.getString("type");
	             
	            Policy_Holder policy_holder = new Policy_Holder(PH_key,statePicture,firstName,middleName,lastName,DOB,password,emailAddress,type);
	            listPolicy_Holder.add(policy_holder);
	        }

	        resultSet.close();
	        statement.close();
	         
	        disconnect();
	         
	        return listPolicy_Holder;
	    }
	     
	    public boolean deletePolicy_Holder(Policy_Holder policy_holder) throws SQLException {
	        String sql = "DELETE FROM Policy_holder where ph_key = ?";
	         
	        connect();
	         
	        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
	        statement.setInt(1, policy_holder.getPH_key());
	         
	        boolean rowDeleted = statement.executeUpdate() > 0;
	        statement.close();
	        disconnect();
	        return rowDeleted;     
	    }
	     
	    public boolean updatePolicy_Holder(Policy_Holder policy_holder) throws SQLException {
	        String sql = "UPDATE policy_holder SET state_key = ?, firstName = ?, middleName = ?, lastName = ?,  DOB = ?, password = ?, emailAddress = ?, policy_key= ? WHERE PH_key = ?";
	        connect();
	         
	        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
	        statement.setInt(1, policy_holder.getState_key());

	        statement.setString(2, policy_holder.getFirstName());
	        statement.setString(3, policy_holder.getMiddleName());
	        statement.setString(4, policy_holder.getLastName());
	        statement.setString(5, policy_holder.getDOB());
	        statement.setString(6, policy_holder.getPassword());
	        statement.setString(7, policy_holder.getEmailAddress());
	        statement.setInt(8, policy_holder.getPolicy_key());
	        statement.setInt(9, policy_holder.getPH_key());


	        boolean rowUpdated = statement.executeUpdate() > 0;
	        statement.close();
	        disconnect();
	        return rowUpdated;     
	    }
	     
	    public Policy_Holder getPolicy_Holder(int PH_key) throws SQLException {
	        Policy_Holder policy_holder = null;
	        String sql = "SELECT * FROM policy_holder WHERE ph_key = ?";
	         
	        connect();
	         
	        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
	        statement.setInt(1, PH_key);
	         
	        ResultSet resultSet = statement.executeQuery();
	         
	        if (resultSet.next()) {
	        	int state_key = resultSet.getInt("state_key");
	        	String firstName = resultSet.getString("firstName");
	            String middleName = resultSet.getString("middleName");
	            String lastName = resultSet.getString("lastName");
	            String DOB = resultSet.getString("DOB");

	            String password = resultSet.getString("password");
	            String emailAddress = resultSet.getString("emailAddress");
	            int policy_key = resultSet.getInt("policy_key");

	             
	            policy_holder = new Policy_Holder(PH_key,state_key, firstName,middleName,lastName,DOB,password,emailAddress,policy_key);
	        }
	         
	        resultSet.close();
	        statement.close();
	         
	        return policy_holder;
	    }





}
