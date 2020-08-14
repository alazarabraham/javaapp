package com.capstone;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;



public class PolicyDao {
    private String jdbcURL;
    private String jdbcUsername;
    private String jdbcPassword;
    private Connection jdbcConnection;
     
    public PolicyDao(String jdbcURL, String jdbcUsername, String jdbcPassword) {
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
	     
	    public boolean insertPolicy(Policy policy) throws SQLException {
	        String sql = "INSERT INTO policy (type, time_period) VALUES (?, ? )";
	        connect();
	         
	        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
	        statement.setString(1, policy.getType());
	        statement.setString(2, policy.getTime_period());
	        System.out.println("id " + policy.getPolicy_key());
	        boolean rowInserted = statement.executeUpdate() > 0;
	        statement.close();
	        disconnect();
	        return rowInserted;
	    }
	     
	    public List<Policy> listAllPolicy() throws SQLException {
	        List<Policy> listPolicy = new ArrayList<>();
	         
	        String sql = "SELECT * from policy";
	         
	        connect();
	         
	        Statement statement = jdbcConnection.createStatement();
	        ResultSet resultSet = statement.executeQuery(sql);
	         
	        while (resultSet.next()) {
	            int policy_key = resultSet.getInt("policy_key");
	            String type = resultSet.getString("type");
	            String time_period = resultSet.getString("time_period");
	           
	             
	            Policy policy = new Policy(policy_key,type,time_period);
	            listPolicy.add(policy);
	        }

	        resultSet.close();
	        statement.close();
	         
	        disconnect();
	         
	        return listPolicy;
	    }
	     
	    public boolean deletePolicy(Policy policy) throws SQLException {
	        String sql = "DELETE FROM Policy where policy__key = ?";
	         
	        connect();
	         
	        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
	        statement.setInt(1, policy.getPolicy_key());
	         
	        boolean rowDeleted = statement.executeUpdate() > 0;
	        statement.close();
	        disconnect();
	        return rowDeleted;     
	    }
	     
	    public boolean updatePolicy(Policy policy) throws SQLException {
	        String sql = "UPDATE policy SET type = ?, time_period = ? where type = ?";
	        connect();
	         
	        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
	        statement.setString(1, policy.getType());
	        statement.setString(2, policy.getTime_period());
	        statement.setString(3, policy.getType());

	    
	        boolean rowUpdated = statement.executeUpdate() > 0;
	        statement.close();
	        disconnect();
	        return rowUpdated;     
	    }
	     
	    public Policy getPolicy(int policy_key) throws SQLException {
	        Policy policy = null;
	        String sql = "SELECT * FROM policy WHERE policy_key = ?";
	         
	        connect();
	         
	        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
	        statement.setInt(1, policy_key);
	         
	        ResultSet resultSet = statement.executeQuery();
	         
	        if (resultSet.next()) {
	        	String type = resultSet.getString("type");
	            String time_period = resultSet.getString("time_period");
	            
	            policy = new Policy(type,time_period);
	        }
	         
	        resultSet.close();
	        statement.close();
	         
	        return policy;
	    }





}
