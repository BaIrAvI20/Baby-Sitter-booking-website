<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<style>
		* {
  			box-sizing:border-box;
		}
	
	.sechalf {
  			float: left;
  			width: 66.66666%;
  			padding: 20px;
		}

	.firsthalf {
  			float: left;
			left: 500px;
  			width: 33.33333%;
  			padding: 20px;
		}
	/* Slideshow container */
	.slideshow-container .sechalf {
  		max-width: 1000px;
  		position: relative;
  		margin: auto;
	}

	/* Next & previous buttons */
	.prev, .next {
  		cursor: pointer;
  		position: absolute;
  		padding: 16px;
		z-index:3;
		top:39%;
  		color: black;
  		font-weight: bold;
  		font-size: 18px;
  		transition: 0.6s ease;
  		border-radius: 0 3px 3px 0;
  		user-select: none;
	}

	/* Position the "next button" to the right */
	.next {
  		right: 33%;
	}

	/* On hover, add a black background color with a little bit see-through */
	.prev:hover, .next:hover {
  		background-color: rgba(0,0,0,0.8);
	}

	/* The dots/bullets/indicators */
	.dot {
  		cursor: pointer;
  		height: 15px;
  		width: 15px;
  		margin: 0 2px;
  		background-color: #bbb;
  		border-radius: 50%;
  		display: inline-block;
  		transition: background-color 0.6s ease;
	}

	 .dot:hover {
  		background-color: #717171;
	}
	
	.text{
		text-align:center;
		font-size:20px;
		padding:20px;
		font-type:bold;
		font-color:darkblack;
	}
	
	table{
		padding:35px;
		float:center;		
	}
	
	table.details {
 		margin-top: 38%; 
  		margin-left: 13px;
	}

	tr,td{
		padding:10px;
		font-size:20px
	}

	table.submit {
 		margin-top: -8%; 
  		margin-left: 60px;
		
	}

	/* Fading animation */
	.fade {
  		-webkit-animation-name: fade;
  		-webkit-animation-duration: 1.5s;
  		animation-name: fade;
  		animation-duration: 1.5s;
	}

	@-webkit-keyframes fade {
  		from {opacity: .4} 
  		to {opacity: 1}
	}

	@keyframes fade {
  		from {opacity: .4} 
  		to {opacity: 1}
	}

	img{vertical-align:middle;}
	</style>

</head>

<body>

	<div class="slideshow-container">
		<div class = "arrows">
			<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
			<a class="next" onclick="plusSlides(1)">&#10095;</a>
		</div>	
    		<div class="sechalf">
			

			<div class="mySlides fade">
  				<div class="numbertext"></div>
  				<img src="images/responsibility.jpg" width="100%" height="650" style="padding:12px">
  				<div class="text"><p>YOUR KID IS OUR RESPONSIBILITY!!!</p></div>
			</div>

			<div class="mySlides fade">
  				<div class="numbertext"></div>
  				<img src="images/certificate.jpg" width="100%" height="650" style="padding:12px" >
  				<div class="text">QUALIFIED WE ARE!!!</div>
			</div>

			<div class="mySlides fade">
  				<div class="numbertext"></div>
  				<img src="images/teacher.jpg" width="100%" height="650" style="padding:12px">
  				<div class="text">QUALIFIED TO TRAIN YOUR CHILDREN!!!</div>
			</div>

			<div class="mySlides fade">
  				<div class="numbertext"></div>
  				<img src="images/license.jpg" width="100%" height="650" style="padding:12px">
  				<div class="text">QUALIFIED WITH VERIFIED DOCUMENTS</div>
			</div>
	
			<div class="mySlides fade">
  				<div class="numbertext"></div>
  				<img src="images/discipline.jpg" width="100%" height="650" style="padding:12px">
  				<div class="text">TRAINED TO RAISE CHILDREN</div>
			</div>

			<div style="text-align:center">
  				<span class="dot" onclick="currentSlide(1)"></span> 
  				<span class="dot" onclick="currentSlide(2)"></span> 
  				<span class="dot" onclick="currentSlide(3)"></span> 
				<span class="dot" onclick="currentSlide(4)"></span> 
				<span class="dot" onclick="currentSlide(5)"></span>  
			</div>
    		</div>
		<div class="firsthalf">
			<form:form method="post" action="afterreg" modelAttribute="registration">
				<table class="details">
				<tr>
					<td><form:label path="fathername">FATHER NAME</form:label></td>
					<td><form:input path="fathername" class="fname"></form:input></td>
				</tr>
				<tr>
					<td><form:label path="mothername">MOTHER NAME</form:label></td>	
					<td><form:input path="mothername" class="mname"></form:input></td>
				</tr>
				
				<tr>
					<td><form:label path="childname">CHILD NAME</form:label></td>	
					<td><form:input path="childname" class="cname"></form:input></td>
				</tr>
				
				<tr>
					<td><form:label path="mobilenumber">MOBILE NUMBER</form:label></td>	
					<td><form:input path="mobilenumber" class="mnum"></form:input></td>
				</tr>
				
				<tr>
					<td><form:label path="emailid">EmailID</form:label></td>	
					<td><form:input path="emailid" class="email"></form:input></td>
				</tr>
				
				<tr>
					<td><form:label path="pass">Password</form:label></td>	
					<td><form:input path="pass" class="pass"></form:input></td>
				</tr>
				</table>
				<table class="submit">
				<tr>
					<td>
					<input type="submit" style="font-size:20px" value="WaNnA gIvE a TrY"></input></td>
				</tr>
				</table>
			</form:form>
		</div>
	</div>

	<script>
		var slideIndex = 1;
		showSlides(slideIndex);

		function plusSlides(n) {
  			showSlides(slideIndex += n);
		}

		function currentSlide(n) {
 			 showSlides(slideIndex = n);
		}

		function showSlides(n) {
  			var i;
  			var slides = document.getElementsByClassName("mySlides");
  			var dots = document.getElementsByClassName("dot");
  			if (n > slides.length) {slideIndex = 1}    
  			if (n < 1) {slideIndex = slides.length}
  			for (i = 0; i < slides.length; i++) {
      				slides[i].style.display = "none";  
  			}
  			for (i = 0; i < dots.length; i++) {
      				dots[i].className = dots[i].className.replace(" active", "");
  			}
  			slides[slideIndex-1].style.display = "block";  
  			dots[slideIndex-1].className += " active";
		}
	</script>
</body>