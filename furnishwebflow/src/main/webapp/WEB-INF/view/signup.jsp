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
				<li><a href="product">All Categories</a></li><br/>
                <li><a href="aboutus">About</a></li><br/>
                <li><a href="contact">Contact</a></li><br/>        
                </li>                
            </ul>
        </div>
       </nav>        
 	</div>       


<div id=section>
 <form:form method="POST" action="./reg" commandName="cmd">
 <font color="red"><form:errors path="*" cssClass="errorblock" element="div"/></font>
   <table>
    <tr>
        <td><form:label path="name">Name :</form:label></td>
        <td><form:input path="name" /></td>
        <td><form:errors path="name" cssClass="error"/></td>
        
    </tr>
    <tr>
        <td><form:label path="pwd">Password :</form:label></td>
        <td><form:input path="pwd" /></td>
		<td><form:errors path="pwd" cssClass="error"/></td>
    </tr>
    <tr>
        <td><form:label path="phno"> Phone No. :</form:label></td>
        <td><form:input path="phno"/></td>
		<td><form:errors path="phno" cssClass="error"/></td>
    </tr>
    
        <tr>
        <td><form:label path="emailid">Email-id</form:label></td>
        <td><form:input path="emailid" /></td>
		<td><form:errors path="emailid" cssClass="error"/></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Register"/>
            <input type="Reset" value="Cancel"/>
                  </td>
    </tr>
</table>  
</form:form>
</div></div>
<div id="footer">
Copyright © Furniture.com
</div>        


</body>
</html>