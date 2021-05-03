<!DOCTYPE html>
<html>
<title>KANGAROOS</title>
<head>
	<style>
		* {
  			box-sizing:border-box;
		}
		
		video {
      			position: absolute;
      			z-index: 9999;
      			right: 227.5px;
      			top: 220px;
				min-height:22%;
				width:16%;
    		}

		img {
				right:50px;
    		}

		.sidebar {
  			height: 100%;
  			width: 0;
  			position: fixed;
  			z-index: 1;
  			top: 0;
  			left: 0;
  			background-color: #111;
  			overflow-x: hidden;
  			transition: 0.5s;
  			padding-top: 60px;
		}

		.sidebar a {
  			padding: 8px 8px 8px 32px;
  			font-size: 25px;
  			color: #818181;
  			display: block;
		}

		.sidebar a:hover {
  			color: #f1f1f1;
		}

		.sidebar .closebtn {
  			position: absolute;
  			top: 0;
  			right: 25px;
  			font-size: 36px;  			
		}

		.openbtn {
  			font-size: 20px;
  			background-color: #111;
  			color: white;
  			padding: 10px 15px;
		}

		.openbtn:hover {
  			background-color: #444;
		}

		
		body {
  			font-family: Arial, Helvetica, sans-serif;
		}

		.page1 {
  			padding: 64px;
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

		.button {
  			border: none;
  			color: white;
  			padding: 10px 28px;
  			cursor: pointer;
  			background-color: #4CAF50;
		}

		.tablink {
  			background-color: #555;
  			color: white;
  			float: left;
  			border: none;
  			outline:none;
  			padding: 14px 16px;
  			font-size: 17px;
  			width: 25%;
		}

		.tablink:hover {
  			background-color: #777;
		}

		.tabcontent {
  			color: white;
  			display: none;
  			padding: 50px;
  			text-align: center;
		}

		#t1 {background-color:red;}
		#t2 {background-color:green;}
		#t3 {background-color:blue;}
		#t4 {background-color:orange;}

		#popfromside p {
  			position: absolute;
  			left: -150px;
  			transition: 0.3s;
  			padding: 15px;
			width: 270px;
  			text-decoration: none;
  			font-size: 16px;
  			color: white;
  			border-radius: 0 5px 5px 0;
		}

		#verticaltext p {
  			writing-mode: vertical-rl;
  			text-orientation: upright;
		}
		#popfromside p:hover {
  			left: 0;
		}

		#m1 {
  			top: 75%;
 			background-color: #4CAF50;
		}

		#m2 {
  			top: 85%;
  			background-color: #2196F3;
		}

		#m3 {
  			top: 95%;
  			background-color: #f44336;
		}

		#m4 {
  			top: 105%;
  			background-color: #555
		}
	</style>
</head>

<body>

	<div class="page1">
			<div id="mySidebar" class="sidebar">
  				<a href="#" class="closebtn" onclick="closeNav()">x</a>
  				<a href="/login">Login</a>
  				<a href="/registration">Sign Up</a>
  			</div>
    			<div class="sechalf">
				<button class="openbtn" onclick="openNav()">Lets get started</button>  
      				<h1><b>KANGAROOS</b></h1>
      				<h1 style="color:MediumSeaGreen"><b>Why us?</b></h1>
      				<p><span style="font-size:36px">Trusted by families. Loved by care-takers.</span> </p>
    			</div>
    			<div class="firsthalf">
				<img src="images/phframe.png" style="width:275px;height:450px">
				<video autoplay muted loop id="myVideo" height="50">
  					<source src="images/v1.mp4" type="video/mp4">
				</video>	
			</div>
	</div>

	<div class="page1" style="background-color:#f1f1f1">
  		<div class="row">
    			<div class="firsthalf">
      				<div id="popfromside">
  					<p id="m1">Fixed Babysitter</p>
  					<p id="m2">After school Babysitter</p>
  					<p id="m3">Flexible Babysitter</p>
  					<p id="m4">Last-minute Babysitter</p>
				</div>

				<div id="verticaltext" style="margin-left:90px;font-size:20px"><br><br>
  					<p>FOR EVERY MOMENT</p>
				</div>    			
			</div>
    			<div class="sechalf">
				<p><span style="font-size:25px">WHAT'S</span> <span style="font-size:18px"> AWAITING FOR YOU!! </span> </p>
      				
				<div id="t1" class="tabcontent">
  					<h1>NEWBIE</h1>
  					<p>This sitter is brand new to the game. They might be a little younger than most, but they have got a ton to offer especially when it comes to their energy level. They might be a little nervous, but they are general well intentioned and thankful for the experience.</p>
				</div>

				<div id="t2" class="tabcontent">
  					<h1>COOL SIBLING</h1>
  					<p>This sitter does all of the awesome things that the kids cannot do with their parents. Maybe they let the kids stay up ten extra minutes for good behavior, but they are generally awesome with children. They have probably got younger siblings at home, so they know the game pretty well and are prepared for anything. Kids love them.</p> 
				</div>

				<div id="t3" class="tabcontent">
  					<h1>THE COUCH POTATO</h1>
  					<p>This sitter does exactly what you think they would: they sit on the couch, eat all the snacks, and are generally disinterested in babysitting. They are rather inattentive to the children and they probably let the kids do whatever they want, as long as they leave the sitter alone.This sitter does exactly what you think they would: they sit on the couch, eat all the snacks, and are generally disinterested in babysitting. They are rather inattentive to the children and they probably let the kids do whatever they want, as long as they leave the sitter alone.</p>
				</div>

				<div id="t4" class="tabcontent">
  					<h1>THE MARY POPPINS</h1>
  					<p>Oh, Mary Poppins. What can I say about this sitter? They are basically pure magic. They have endless activities to entertain kids with, and they never fail to get them to cleaned up at the end of the day. Every. Single.Time.</p><br>
					<p>They love to entertain the kids with everything from songs to books to science experiments. And quiet time? It’s a breeze for this sitter.They have seen it all, they’ve done it all, and they clearly love every second of it.</p>
				</div>

				<button class="tablink" onclick="openCate('t1', this, 'red')" id="defaultOpen">THE NEWBEE</button>
				<button class="tablink" onclick="openCate('t2', this, 'green')">COOL SIBLING</button>
				<button class="tablink" onclick="openCate('t3', this, 'blue')">THE COUCH POTATO</button>
				<button class="tablink" onclick="openCate('t4', this, 'orange')">THE MARY POPPINS</button>
			</div>
  		</div>
	</div>

	
	<script>
		function openNav() {
  			document.getElementById("mySidebar").style.width = "250px";
  			document.getElementById("main").style.marginLeft = "250px";
		}

		function closeNav() {
  			document.getElementById("mySidebar").style.width = "0";
  			document.getElementById("main").style.marginLeft= "0";
		}
		function openCate(category,elmnt,color) {
  			var i, tabcontent, tablinks;
  			tabcontent = document.getElementsByClassName("tabcontent");
  			for (i = 0; i < tabcontent.length; i++) {
    				tabcontent[i].style.display = "none";
  			}
  			tablinks = document.getElementsByClassName("tablink");
  			for (i = 0; i < tablinks.length; i++) {
    				tablinks[i].style.backgroundColor = "";
  			}
  			document.getElementById(category).style.display = "block";
  			elmnt.style.backgroundColor = color;

		}
		document.getElementById("defaultOpen").click();
	</script>
	
</body>
</html>
