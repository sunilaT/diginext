<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/mystyle.css"/>">
</head>
<body>
<div id="header">
<center><h3>Welcome to Login!</h3></center>
</div>
<div id="nav">  
	<nav class="navbar navbar-default">      
        <div class="container-fluid">
            <ul class="nav navbar-nav">
                <li class="active">
                <li><a href="./">Home</a></li><br/>
				<li><a href="login">Login</a></li><br/>
                <li><a href="signup">Sign Up</a></li><br/>
                <li><a href="product">All Categories</a></li><br/>
                <li><a href="aboutus">About</a></li><br/>
                <li><a href="contact">Contact</a></li><br/>                 
                <li><a href="quick">Take a Tour!</a></li><br/>
                </li>                
            </ul>
        </div>
       </nav>        
 	</div>

<div class="section">
  
  <form align="center" action="./adminhome">
  <table><tr><td>
      Email  :&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp</td><td>
      <input type="text"  id="email" placeholder="Enter email" size="35"></td></tr>
    
      <tr><td>Password :</td>
      <td><input type="password" id="pwd" placeholder="Enter password" size="35"></td></tr>
       
    <!-- <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>-->
 <tr><td></td></tr><tr><td>   <button type="submit" class="btn btn-default">Submit</button></td>
 <td><button type="reset" class="btn btn-default">Cancel</button></td></tr></table>
 </table> </form>
</div>

<div id="footer">
Copyright © Furnitures.com
</div>        
</body>
</html>