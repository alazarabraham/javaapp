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
      <br>
      <br>

           <h1>Client Manager</h1>
        
        <table class="table">
  <thead>
    <tr>
      <th scope="col">Client ID</th>
   	  <th scope="col">Client Country</th>
      
      <th scope="col">Client First Name</th>
      <th scope="col">Client Middle Name</th>
      <th scope="col">Client Last Name</th> 
      <th scope="col">Client Date of Birth</th>
      <th scope="col">Client Password</th>
	  <th scope="col">Client Email Address</th>
	  <th scope="col">Client Policy</th>
	  
      
      
      
    </tr>
  </thead>
  <tbody>
           <c:forEach var="policy_holder" items="${listPolicy_Holder}">
                <tr>
           <td><c:out value="${policy_holder.PH_key}" /></a></td>
                    <td><img src="<c:out value="${policy_holder.countryPicture}" />" width="40" height="25"/></td>
           
      				<td><a class="btn btn-light" href="/Capstoneproject2/policyholderprofile?PH_key=<c:out value='${policy_holder.PH_key}' />"><c:out value="${policy_holder.firstName}" /></td>
                    <td><c:out value="${policy_holder.middleName}" /></td>
                    <td><c:out value="${policy_holder.lastName}" /></td>
                    <td><c:out value="${policy_holder.DOB}" /></td>
                    <td><c:out value="${policy_holder.password}" /></td>
                    <td><c:out value="${policy_holder.emailAddress}" /></td>
                    <td><c:out value="${policy_holder.type}" /></td>
                    
      <td>
                        <a href="/Capstoneproject2/editpolicyholder?PH_key=<c:out value='${policy_holder.PH_key}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/Capstoneproject2/deletepolicyholder?PH_key=<c:out value='${policy_holder.PH_key}' />">Delete</a>                     
                    </td>
      
    </tr>
    </c:forEach>
   
  </tbody>
</table>

        
      </div>
    </div>
  </div>
</header>

<!-- Page Content -->

    </body>
    </html>


