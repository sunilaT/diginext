<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" >
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
  
   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/mystyle.css"/>">
  
    <title>Furniture Stop!</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">
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
				
               <!--   <li><a href="prod">Add Product</a></li><br/>           
                <li><a href="quick">Take a Tour!</a></li><br/> -->
               <!--  <li><a href="display">Upload File</a></li><br/>-->
                </li>                
            </ul>
        </div>
       </nav>        
 	</div>       
    
   <div id="section">
<h2>${message}</h2>
  <center><form:form method="POST" action="./userhome" commandName="command">
   <table table="table table-bordered">    
     <tr>
        <td><form:label path="userid">User Id :</form:label></td>
        <td><form:input path="userid" placeholder="Enter UserI"/></td>
        <td><font color="red"><form:errors path="userid" cssClass="error"/></font></td>
        
    </tr>
    <tr>
        <td><form:label path="pwd">Password :</form:label></td>
        <td><form:password path="pwd" placeholder="Your password"/></td>
		<td><font color="red"><form:errors path="pwd" cssClass="error"/></font></td>
   <tr>
        <td colspan="2">
            <input type="submit" value="Login"/>
            <input type="Reset" value="Cancel"/>
                  </td>
    </tr>
    
</table>  
</form:form></center><br/>  
<a href="signup"><h3>New User? SignUp here!</h3></a>

</div>
<div id="footer">
Copyright © Furniture.com
</div>
    </body>
</html>