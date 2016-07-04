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
                <li><a href="login">Login</a></li><br/>
                <li><a href="signup">Sign Up</a></li><br/>
               
                <li><a href="aboutus">About</a></li><br/>
                <li><a href="contact">Contact</a></li><br/>        
                </li>                
            </ul>
        </div>
       </nav>        
 	</div>       


 <div>
      <a href="pinfo?pname=sofa&pcost=2000">
        <img src="<c:url value="/resources/images/sofa.jpg"/>" alt="SOFA" width="300" height="200"/>
      </a>

	  <a href="pinfo?pname=tv&pcost=12000">
        <img src="<c:url value="/resources/images/tv.jpg"/>" alt="TV" width="300" height="200"/>
  	  </a>
    
  	  <a href="pinfo?pname=dressing&pcost=3000">
          <img src="<c:url value="/resources/images/dressing.jpg"/>" alt="Dressing Table" width="300" height="200"/>
  	  </a>
 	  <a href="pinfo?pname=Double cot&pcost=4000">
         <img src="<c:url value="/resources/images/cot.jpg"/>" alt="Double Cot" width="300" height="200"/>
      </a>
 </div>
 </div>
<div id="footer">
Copyright © Furniture.com
</div>        
     


</body>
</html>