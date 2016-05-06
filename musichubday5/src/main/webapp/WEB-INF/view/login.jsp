<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
    
      width: 70%;
      margin: auto;
  }
  </style>
</head>
<body>
<div class="container">
  <h3></h3>
  <ul class="list-inline">
    <li><a href="./">Home</a></li>
    <li><a href="login">Login</a></li>
    <li><a href="signup">SignUp</a></li>
    <li><a href="product">All Categories</a></li>
    <li><a href="aboutus">About us</a></li>
  </ul>
</div>

<div class="container">
  <h2></h2>
  <form role="form">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email">
          </div><div></div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
    </div>
    <!-- <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>-->
    <button type="submit" class="btn btn-default">Submit</button></table>
  </form>
</div>


</body>
</html>