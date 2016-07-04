<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    
    <div id="section">   <center> <h1 id="banner">Login Page</h1></cemter>  
        <form name="f" action="<c:url value='j_spring_security_check'/>"
                    method="POST">
            <table class="table table-bordered">
                <tr>
                    <td>Username:</td>
                    <td><input type='text' name='j_username' /></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type='password' name='j_password'></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan='2'><input value="login" type="submit">&nbsp;<input name="reset" type="reset"></td>
                </tr>
            </table>
        </form></center>
</div>
<div id="footer">
Copyright © Furniture.com
</div>
    </body>
</html>