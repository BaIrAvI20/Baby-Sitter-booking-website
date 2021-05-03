<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Filter Result</title>
<style>
img{
position:absolute;
min-width:100%;
filter:blur(3px);
}

p{
padding-top:5%;
text-align:center;
font-size:200%;
}

.flip-card {
  padding-left:30%;
  padding-top:12%;
  width: 50%;
  height: 25%;
  perspective: 1000px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: left;
  transition: transform 0.6s;
  transform-style: preserve-3d;
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: rgba(255,255,255,0.3);
  color: black;
}

.flip-card-back {
  color: black;
  transform: rotateY(180deg);
}

top{
position:relative;
padding-left:90%;
}

td{
padding-left:45%;
padding-bottom:2.5%;
}

th{
padding-left:28%;
padding-bottom:2.5%;
}
a{
padding-left:30%;
font-size:25px;
}
.logout{
padding-left:56%;
}
h1{
padding-left:45%;
}
</style>
</head>
<body>
<h1>KANGAROOS<a href="/logout" class="logout"><span style="font-size:18px">LOGOUT</span></a></h1>
<img src="images/filterresult.jpg" class="bg"></img>
<a type="button" class="top"
							href="filter">BACK</a><div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
    	<p>HERE IS WHAT YOU WANNA KNOW ALL ABOUT ME!! </p>
    	<p>WHERE?</p>
	</div>
	
		<div class="flip-card-back">
			
			<c:forEach items="${infos}" var="info">
			<table class="table table-striped">
				<tr><th>LAST_NAME</th><td>${info.lastname}</td></tr>
					<tr><th>FIRST_NAME</th><td>${info.firstname}</td></tr>
					<tr><th>AGE</th><td>${info.age}</td></tr>
					<tr><th>EMAIL_ID</th><td>${info.emailid}</td></tr>
					<tr><th>ADDRESS</th><td>${info.address}</td></tr>
					<tr><th>AVAILABILTY</th><td>${info.availability}</td></tr>
					<tr><th>CATEGORY</th><td>${info.category}</td></tr>
					<tr><th>PRICE</th><td>${info.price}</td></tr>
					<tr><th>RATING</th><td>${info.rating}</td></tr>
					<tr><th>EXPERIENCE</th>	<td>${info.pastexperience}</td></tr>
					</table>
					<a type="button" class="btn btn-success"
							href="report?id=${info.employeeid}">KNOW MORE?</a>
			</c:forEach>
		
				
							</div>
		</div>
</div>

</body>
</html>