package com.capstone;
 
import java.sql.*;
 
public class AgentLoginDao {
 
    public Agent checkLogin(String email, String password) throws SQLException,
            ClassNotFoundException {
        String jdbcURL = "jdbc:mysql://localhost:3306/capstone";
        String dbUser = "root";
        String dbPassword = "markos";
 
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
        String sql = "SELECT * FROM agent WHERE emailaddress = ? and password = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, email);
        statement.setString(2, password);
 
        ResultSet result = statement.executeQuery();
 
        Agent agent = null;
 
        if (result.next()) {
            agent = new Agent();
            agent.setFirstName(result.getString("firstName"));
            agent.setEmailAddress(email);
        }
 
        connection.close();
 
        return agent;
    }
}