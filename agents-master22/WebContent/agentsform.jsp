<%@page import="com.capstone.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Cook Ried Insurance Agency</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	<style>
	.masthead {
  height: 100vh;
  min-height: 100vh;
  background-image: url('https://iili.io/d60Jta.jpg');
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}
h1{
text-align: center;}
	</style>



</head>
<body data-spy="scroll" data-target="#pb-navbar" data-offset="200">
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow fixed-top">
  <div class="container">
    <a class="navbar-brand" href="loggedinpage.jsp">Cook Ried Insurance Agency</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="listagent">Agents</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="newagent">Add Agent</a>
        </li>
       <li class="nav-item">
          <a class="nav-link" href="policyholderlist">Policy Holders</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="newpolicyholder">Add Policy Holder</a>
        </li>
        </li>
       <li class="nav-item">
          <a class="nav-link" href="policylist">Policies</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="newpolicy">Add Policies</a>
        </li>
       
      </ul>
    </div>
  </div>
</nav>

<!-- Full Page Image Header with Vertically Centered Content -->
<header class="masthead">
  <div class="container h-100">
    <div class="row h-100 align-items-center">
      
      <div class="col-12 text-center">
           <h1>Agent Manager</h1>
                <c:if test="${agent != null}">
            <form action="updateagent" method="post">
        </c:if>
        <c:if test="${agent == null}">
            <form action="insertagent" method="post">
        </c:if>
        <table class="table table-bordered" border="1" cellpadding="5">
        
            <caption>
                <h2>
                    <c:if test="${agent != null}">
                    	<form action="updateagent" method="post">
                    
                    </c:if>
                    <c:if test="${agent == null}">
                       <form action="insertagent" method="post">
                    
                        
                    </c:if>
                </h2>
            </caption>
                <c:if test="${agent != null}">
                    <input type="hidden" name="agent_id" value="<c:out value='${agent.agent_id}' />" />
                </c:if> 
                          
            <tr>
                <th scope="col">First Name: </th>
                <td>
                    <input type="text" name="firstName" size="45" required="required"
                            value="<c:out value='${agent.firstName}' />"
                        />
                </td>
            </tr>
              <tr>
                <th>Middle Name: </th>
                <td>
                    <input type="text" name="middleName" size="45" required="required"
                            value="<c:out value='${agent.middleName}' />"
                        />
                </td>
            </tr>
              <tr>
                <th>Last Name: </th>
                <td>
                    <input type="text" name="lastName" size="45" required="required"
                            value="<c:out value='${agent.lastName}' />"
                        />
                </td>
            </tr>
          <tr>
                <th>Password: </th>
                <td>
                    <input type="password" name="password" size="45" required="required"
                            value="<c:out value='${agent.password}' />"
                        />
                </td>
            </tr>
              <tr>
                <th>Phone Number: </th>
                <td>
                    <input type="phone" name="phone" size="45" required="required"
                            value="<c:out value='${agent.phone}' />"
                        />
                </td>
            </tr>
              <tr>
                <th>Email Address: </th>
                <td>
                    <input type="email" name="emailAddress" size="45" required="required"
                            value="<c:out value='${agent.emailAddress}' />"
                        />
                </td>
            </tr>
          
            <tr>
                <td colspan="2" align="center">
                <input class="btn btn-danger" placeholder="Enter email" type="submit" value="Save" />
                
                </td>
            </tr>
        </table>
        </form>
        
      
        
      </div>
    </div>
  </div>
</header>

<!-- Page Content -->

    </body>
    </html>
