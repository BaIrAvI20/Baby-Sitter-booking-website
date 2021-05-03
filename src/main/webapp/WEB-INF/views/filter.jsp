<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Filter</title>
<style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("images/filter.jpg");

  min-height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position: absolute;
  right: 10%;
top:8%;
  margin: 20px;
  Min-height:50%;
  max-width: 350px;
  padding: 16px;
  background-color: rgba(240,240,240,0.3);;
}

/* Full-width input fields */
Label {
  width: 100%;
  padding: 10px;
  margin: 10%;
	Font-size:18px;

  border: none;
}

Select{
  background-color: #ddd;
	padding:10px;
	Font-size:15px;
	Position:middle;
	Margin:10%;
  	outline: none;
}

/* Set a style for the submit button */
.btn {
	
  background-color: black;
  color: white;
  position:middle;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 70%;
  margin:12%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
</style>
</head>
<body>

<div class="bg-img">
<p style="font-size:25px; color:black; padding-top:25%; padding-left:15%">INFORM US ABOUT YOUR NEED AND <br>WE WILL TRY OUR BEST TO FULFIL <br>YOUR REQUIREMENT</p>
<div class="container">
  <form:form action="afterfilter"  method="post" modelAttribute="filter">
			<form:label path="category">NATURE OF BABYSITTER</form:label>
			<form:select path="category">
			<form:options items="${cate}"></form:options>
			</form:select>
			<br>
			<form:label path="availability">AVAILABILITY</form:label>
			<form:select path="availability">
			<form:options items="${avai}"></form:options>
			</form:select>
			<br>
			
	<br><form:label path='price'>MAX PRICE</form:label><br>
  	<form:select  path="price">
			<form:options items="${prices}"></form:options>
			</form:select>
			<br>
			<input type="submit" class="btn" value="SEARCH"/>
  </form:form>
	</div>		
</div>


</body>
</html>
