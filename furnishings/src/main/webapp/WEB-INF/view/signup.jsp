<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/mystyle.css"/>">

</head>
<body>

<div id="header">
<center><h3>Welcome to Furniture Stop!</h3></center>
</div>

<div>
	<!-- Sidebar -->
	<div id="nav">  
	<nav class="navbar navbar-default">      
        <div class="container-fluid">
            <ul class="nav navbar-nav">
                <li class="active">
                <li><a href="./">Home</a></li><br/>
				
                <li><a href="aboutus">About</a></li><br/>
                <li><a href="contact">Contact</a></li><br/>        
                </li>                
            </ul>
        </div>
       </nav>        
 	</div>       


<div id=section>
<center> <form:form method="POST" action="./reg" commandName="cmd">
 
   <table table="table table-bordered">
    <tr>
        <td><form:label path="name">Name :</form:label></td>
        <td><form:input path="name" placeholder="Enter name"/></td>
        <td><font color="red"><form:errors path="name" cssClass="error"/></font></td>
        
    </tr>
    <tr>
        <td><form:label path="pwd">Password :</form:label></td>
        <td><form:password path="pwd" placeholder="Your password"/></td>
		<td><font color="red"><form:errors path="pwd" cssClass="error"/></font></td>
    </tr>
    <tr>
        <td><form:label path="phno"> Phone No. :</form:label></td>
        <td><form:input path="phno" placeholder="Mobile number"/></td>
		<td><font color="red"><form:errors path="phno" cssClass="error"/></font></td>
    </tr>
    
        <tr>
        <td><form:label path="emailid">Email-id</form:label></td>
        <td><form:input path="emailid" placeholder="Enter mailid"/></td>
		<td><font color="red"><form:errors path="emailid" cssClass="error"/></font></td>
    </tr>
    <tr><td></td><td></td></tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Register"/>
            <input type="Reset" value="Cancel"/>
                  </td>
    </tr>
</table>  
</form:form></center>
</div></div>
<div id="footer">
Copyright © Furniture.com
</div>        


</body>
</html>