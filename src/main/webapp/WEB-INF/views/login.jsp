<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

.fcontainer {
  position: relative;
  text-align: center;
}
/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.pos1 {
  position: absolute;
  top: 20%;
  left: 50%;
  color:black;
  Font-size:40px;
  transform: translate(-50%, -50%);
}

.pos2 {
  position: absolute;
  top:35%;
  left: 50%;
  color:black;
  Font-size:25px;
  transform: translate(-50%, -50%);
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 15%;
  border-radius: 30%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 50%; /* Could be more or less, depending on screen size */
}

/* The Close Button*/
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>
	<div class="fcontainer">
		<img src="images/login.jpg" style="width:100%; filter:blur(4px)"></img>
		<div class="pos1">WELCOME TO KANGAROOS</div>
		<div class="pos2">JUST ONE MORE STEP TO PROVIDE YOUR IN SAFE HANDS</div>
			
		
		<button onclick="document.getElementById('id01').style.display='block'" style="width:auto; position:absolute; top:50%; left:50%;   transform: translate(-50%, -50%); value="${Error}">Login</button>
	</div>
<div id="id01" class="modal">
  
  <form:form class="modal-content animate" action="afterlogin" method="post" modelAttribute="login">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="images/loginlogo.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <form:label path="emailid"><b>EMAILID</b></form:label>
      <form:input path="emailid" placeholder="Enter MailID"></form:input>
		
      <form:label path="pass"><b>PASSWORD</b></form:label>
      <form:input path="pass" type="password" placeholder="Enter Password"></form:input>
		
      <button onclick=check(${Error}) type="submit">Login</button>
      
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      
    </div>
  </form:form>
</div>
</body>
<script>
function check(int f){
	var ch=f;
alert(ch);
alert("hi");
	if(ch===1){
		document.getElementById('disp').innerHTML='INAVALID USER NAME OR PASSWORD';
	}
}


</script>
</html>
