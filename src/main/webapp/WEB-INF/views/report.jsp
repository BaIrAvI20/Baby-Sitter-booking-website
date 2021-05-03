<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report</title>
<style>
.bg{
position:absolute;
padding-top:4%;
width:200%;
padding-left:20%;
}
.content {
 width:100%;
 position:relative;
 padding-top:18%;
  }
 p{
 padding-left:28%;
 font-size:20px;
 }
 a{
  padding-left:44%;
 
 } 
 .logout{
padding-left:50%;
}
h1{
padding-left:42%;
}

</style>
</head>
<body>
<h1>KANGAROOS<a href="/filter" class="logout"><span style="font-size:18px">OPT ANOTHER</span></a></h1>
<div class="bg"><img src="images/report.png"></div>
<div class="content">

			<c:forEach items="${ack}" var="cer">
						<p>${cer.certi}</p>
						<p>${cer.comfort}</p>
						<p>${cer.transport}</p>
						<p>${cer.agegrp}</p>
						<p>${cer.hwrk}</p>
						<p>${cer.activ}</p>
						<p>${cer.spec}</p>
				</c:forEach>	<br>
				<a type="button" href="/bookandpay">DO YOU NEED MY HELP</a>				
</div>
  
  

</body>
</html>