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
    <a class="navbar-brand" href="agentloggedinpage.jsp">Cook Ried Insurance Agency</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
          <a class="nav-link" href="agentpolicyholderlist">Policy Holders</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="agentnewpolicyholder">Add Policy Holder</a>
        </li>
        </li>
       <li class="nav-item">
          <a class="nav-link" href="agentpolicylist">Policies</a>
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
           <h1>Agent Policy List</h1>
        
         <table class="table">
  <thead>
    <tr>
      <th scope="col">Policy ID</th>
      <th scope="col">Policy Type</th>
      <th scope="col">Policy Time Period</th>
     
      
      
      
    </tr>
  </thead>
  <tbody>
           <c:forEach var="policy" items="${AgentlistPolicy}">
                <tr>
           <td><c:out value="${policy.policy_key}" /></td>
      				<td><c:out value="${policy.type}" /></td>
                    <td><c:out value="${policy.time_period}" /></td>
                   
                    
     
    </tr>
    </c:forEach>
   
  </tbody>
</table>      </div>
    </div>
  </div>
</header>

<!-- Page Content -->

    </body>
    </html>

