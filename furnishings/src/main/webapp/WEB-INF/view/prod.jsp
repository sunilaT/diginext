
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">

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
<center><h3>Welcome to the Administrator!</h3></center>
</div>

<div>
	<!-- Sidebar -->
	<div id="nav">  
	<nav class="navbar navbar-default">      
        <div class="container-fluid">
            <ul class="nav navbar-nav">
                <li class="active">
                <li><a href="./">Home</a></li><br/>
				<li><a href="product">View Products</a></li><br/>
				<li><a href="logout">Logout</a></li><br/>
                <!-- <li><a href="ad">Add Product</a></li><br/>          
                <li><a href="quick">Take a Tour!</a></li><br/> -->
               <!--  <li><a href="display">Upload File</a></li><br/>  -->
                </li>                
            </ul>
        </div>
       </nav>        
 	</div>       

<!-- Wrapper for slides -->
<div id="section">
<form:form method="POST" action="./addprod" enctype="multipart/form-data">
   <table class="table table-bordered">
   
    <tr>
        <td><form:label path="pname">Product Name :</form:label></td>
        <td><form:input path="pname" placeholder="Enter name"/></td>
        <td><font color="red"><form:errors path="pname" cssClass="error"></form:errors></font></td>
    </tr>
    <tr>
        <td><form:label path="pcost">Product Cost :</form:label></td>
        <td><form:input path="pcost" placeholder="Enter Cost"/></td>
        <td><font color="red"><form:errors path="pcost" cssClass="error"></form:errors></font></td>    </tr>
   	<tr><td> Upload Image? <input type="file" name="file"/></td></tr> 
    <tr><td> File Name: <input type="text" name="fname"/></td></tr> 
       
    <tr>
        <td colspan="2">
            <input type="submit" value="Add"/>
            <input type="Reset" value="Cancel"/>
                  </td>
                  
    </tr>
</table>  
</form:form><br/><br/>


</div>

</div>

<div id="footer">
Copyright © Furniture.com
</div>        
</body>
</html>        
  <form:form method="POST" action="./addprod" >
   <table>
   
    
    <tr>
        <td><form:label path="pname">Product Name</form:label></td>
        <td><form:input path="pname" /></td>
    </tr>
    <tr>
        <td><form:label path="pcost">Product Cost</form:label></td>
        <td><form:input path="pcost" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Add"/>
            <input type="Reset" value="Cancel"/>
                  </td>
    </tr>
</table>  
</form:form>




</body>
</html>