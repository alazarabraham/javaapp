<%@page import="com.capstone.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<meta charset="ISO-8859-1">
<title>Cook Ried Insurance Agency</title>
<style>
a,
a:focus,
a:hover {
  color: #fff;
}

/* Custom default button */


/*
 * Base structure
 */

html,
body {
  height: 100%;
  background-color: #fff;
}
body {
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 3px rgba(0,0,0,.5);
}

/* Extra markup and styles for table-esque vertical and horizontal centering */
.site-wrapper {
  display: table;
  width: 100%;
  height: 100vh;
  background-color: #333;
  /*height: 100%; */
  /*min-height: 100%;*/
}
.site-wrapper-inner {
  display: table-cell;
  vertical-align: top;
}
input {
color: black;
}
.cover-container {
  margin-right: auto;
  margin-left: auto;
}

/* Padding for spacing */
.inner {
  padding: 30px;
}


/*
 * Header
 */
.masthead-brand {
  margin-top: 10px;
  margin-bottom: 10px;
}

.masthead-nav > li {
  display: inline-block;
}
.masthead-nav > li + li {
  margin-left: 20px;
}
.masthead-nav > li > a {
  padding-right: 0;
  padding-left: 0;
  font-size: 16px;
  font-weight: bold;
  color: #fff; /* IE8 proofing */
  color: rgba(255,255,255,.75);
  border-bottom: 2px solid transparent;
}
.masthead-nav > li > a:hover,
.masthead-nav > li > a:focus {
  background-color: transparent;
  border-bottom-color: red;
  border-bottom-color: red;
}
.masthead-nav > .active > a,
.masthead-nav > .active > a:hover,
.masthead-nav > .active > a:focus {
  color: #fff;
  border-bottom-color: red;
}

@media (min-width: 768px) {
  .masthead-brand {
    float: left;
  }
  .masthead-nav {
    float: right;
  }
}


/*
 * Cover
 */

.cover {
  padding: 0 20px;
}
.cover .btn-lg {
  padding: 10px 20px;
  font-weight: bold;
}

/*
 * Affix and center
 */

@media (min-width: 768px) {
  /* Pull out the header and footer */
  .masthead {
    position: fixed;
    top: 0;
  }
  /* Start the vertical centering */
  .site-wrapper-inner {
    vertical-align: middle;
  }

}
#home{
text-decoration: none;
}
</style>
</head>
<body>

    <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="container">

          <div class="masthead clearfix">
            <div class="container inner">
              <h3 class="masthead-brand"><a id="home" href="agentloggedinpage.jsp">Cook Reid Insurance Agency</a></h3>
              <nav>
                <ul class="nav masthead-nav">
                  <li><a href="agentpolicyholderlist">Policy Holders</a></li>
                  <li><a href="agentnewpolicyholder">Add Policy Holder</a></li>

                  
                </ul>
              </nav>
            </div>
          </div>
          
          
  <h1>Policy Holder Manager</h1>
     
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
                <th>Date of Birth (mm/dd/yyyy): </th>
                <td>
                    <input  name="DOB" size="45" required="required" 
                            value="<c:out value='${policy_holder.DOB}' />"
                        />
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
                <td colspan="2" align="center">
                <input class="btn tn btn-danger" type="submit" value="Save" />
                
                </td>
            </tr>
        </table>
        </form>
          <div class="inner cover">
         
          </div>

        </div>

      </div>

    </div>
</body>