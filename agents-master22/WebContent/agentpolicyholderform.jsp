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
      <br><br>
           <h1>Agent Client Manager</h1>
        
<c:if test="${policy_holder != null}">
            <form action="/Capstoneproject2/agentupdatepolicyholder" method="post">
        </c:if>
        <c:if test="${policy_holder == null}">
            <form action="/Capstoneproject2/agentinsertpolicyholder" method="post">
        </c:if>
        <table class="table table-bordered" border="1" cellpadding="5">
        
            <caption>
                <h2>
                    <c:if test="${policy_holder != null}">
                    </c:if>
                    <c:if test="${policy_holder == null}">
                        
                    </c:if>
                </h2>
            </caption>
                <c:if test="${policy_holder != null}">
                    <input type="hidden" name="PH_key" value="<c:out value='${policy_holder.PH_key}' />" />
                </c:if> 
                          
            <tr>
                <th scope="col">First Name: </th>
                <td>
                    <input type="text" name="firstName" size="45" required="required"
                            value="<c:out value='${policy_holder.firstName}' />"
                        />
                </td>
            </tr>
              <tr>
                <th>Middle Name: </th>
                <td>
                    <input type="text" name="middleName" size="45" required="required"
                            value="<c:out value='${policy_holder.middleName}' />"
                        />
                </td>
            </tr>
              <tr>
                <th>Last Name: </th>
                <td>
                    <input type="text" name="lastName" size="45" required="required"
                            value="<c:out value='${policy_holder.lastName}' />"
                        />
                </td>
            </tr>
             <tr>
                <th>Date of Birth: </th>
                <td>
                <div class="container center_div form-group col-md-6" style="text-align:center;">
                <input class="form-control" type="date" id="start" name="DOB"
       			 value="<c:out value='${policy_holder.DOB}' />"
      			 min="1920-01-01" max="2020-12-31">
                 </div>   
                </td>
               
                
            </tr>
          <tr>
                <th>Password: </th>
                <td>
                    <input type="password" name="password" size="45" required="required"
                            value="<c:out value='${policy_holder.password}' />"
                        />
                </td>
            </tr>
              
              <tr>
                <th>Email Address: </th>
                <td>
                    <input type="email" name="emailAddress" size="45" required="required"
                            value="<c:out value='${policy_holder.emailAddress}' />"
                        />
                </td>
            </tr>
            <tr>
                <th>Policy Key: </th>
                <td>
                    <input type="text" name="policy_key" size="45" required="required"
                            value="<c:out value='${policy_holder.policy_key}' />"
                        />
                </td>
            </tr>
              <tr>
                <th scope="col">State: </th>
                <td>
                 <div class="container center_div form-group col-md-6" style="text-align:center;">
                  <select id="inputState" class="form-control" name="state_key" value="<c:out value='${policy_holder.state_key}' />" />
  					<optgroup label="States">
  					<option value="none" selected disabled hidden> 
          				Select a State
    					<option value="11">Alabama</option>
  						<option value="2">Florida</option>
    					<option value="1">Georgia</option>
    					<option value="17">Illinois</option>
    					<option value="16">Indiana</option>
    					<option value="13">Kentucky</option>
    					<option value="15">Michigan</option>
    					<option value="9">New Mexico</option>
    					<option value="7">New York</option>
    					<option value="4">North Carolina</option>
    					<option value="14">Ohio</option>
    					<option value="6">Pennyslvania</option>
    					<option value="3">South Carolina</option>
    					<option value="12">Tennessee</option>
    					<option value="8">Texas</option>
    					<option value="10">West Virginia</option>
    					<option value="5">Virginia</option>
    					
    					
					  </optgroup>

				</select>
				</div>
                </td>
            </tr>  
            
            
          
            <tr>
                <td colspan="2" align="center">
                <input class="btn tn btn-danger" type="submit" value="Save" />
                
                </td>
            </tr>
        </table>
        </form></div>
    </div>
  </div>
</header>

<!-- Page Content -->

    </body>
    </html>
