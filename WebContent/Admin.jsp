<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Admins</title>
<style>
body{
	background : #ecf3f3;
	padding : 0px;
	margin : 0px;
	font-family: 'Nunito',sans-serif;
	font-size: 16px;
}

ul.topnav {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

ul.topnav li {float: left;}

ul.topnav li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

ul.topnav li a:hover:not(.active) {background-color: #111;}

ul.topnav li a.active {background-color: #4CAF50;}

ul.topnav li.right {float: right;}

@media screen and (max-width: 600px) {
  ul.topnav li.right, 
  ul.topnav li {float: none;}
}

input,button{
	font-family: 'Nunito',sans-serif;
	font-weight: 700;
}

@keyframes move_wave {
    0% {
        transform: translateX(0) translateZ(0) scaleY(1)
    }
    50% {
        transform: translateX(-25%) translateZ(0) scaleY(0.55)
    }
    100% {
        transform: translateX(-50%) translateZ(0) scaleY(1)
    }
}
.waveWrapper {
    overflow: hidden;
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    top: 0;
	z-index:-100;
    margin: auto;
}
.waveWrapperInner {
    position: absolute;
    width: 100%;
    overflow: hidden;
    height: 100%;
    bottom: -1px;
    background-image: linear-gradient(to top, #86377b 20%, #27273c 80%);
}
.bgTop {
    z-index: 15;
    opacity: 0.5;
}
.bgMiddle {
    z-index: 10;
    opacity: 0.75;
}
.bgBottom {
    z-index: 5;
}
.wave {
    position: absolute;
    left: 0;
    width: 200%;
    height: 100%;
    background-repeat: repeat no-repeat;
    background-position: 0 bottom;
    transform-origin: center bottom;
}
.waveTop {
    background-size: 50% 100px;
}
.waveAnimation .waveTop {
  animation: move-wave 3s;
   -webkit-animation: move-wave 3s;
   -webkit-animation-delay: 1s;
   animation-delay: 1s;
}
.waveMiddle {
    background-size: 50% 120px;
}
.waveAnimation .waveMiddle {
    animation: move_wave 10s linear infinite;
}
.waveBottom {
    background-size: 50% 100px;
}
.waveAnimation .waveBottom {
    animation: move_wave 15s linear infinite;
}


.main-div{
	box-shadow: 0 4px 8px 0 rgba(0,0,0,1);
	border: 1px solid #5d8ffc;
	position: relative;
	width:20%;
	background: #fff;
	border-radius: 5px;
	margin:0px auto;
	margin-top:150px;
	padding:20px;
}
.main-div:hover{
  box-shadow: 0 8px 16px 0 rgba(0,0,0,1);
}
.main-div input{
	display: block;
	border: 1px solid #ccc;
	border-radius: 5px;
	background: #fff;
	padding:10px;
	outline:none;
	width:90%;
	margin-bottom:20px;
	transition: 0.3s;
	-webkit-transition:0.3s;
	-moz-transition:0.3s;
}

.main-div input:focus{
	border:1px solid #5d8ffc;
}
.main-div button{
  display:block;
  width: 100%;
  padding: 15px;
  font-weight: 700;
  margin: 5px;
  color: #fff;
  background: #5d8ffc;
  border: 1px solid #5d8ffc;
  border-radius: 5px;
  text-transform: uppercase;
  cursor: pointer;
  transition:         0.08s ease-in;
  -moz-transition:    0.08s ease-in;
  -webkit-transition: 0.08s ease-in;
}

.main-div button:hover{
	background: #fff;
	color: #5d8ffc;
	border: 1px solid #5d8ffc;
}
</style>
</head>
<body>
<div class="waveWrapper waveAnimation">
	<div class="waveWrapperInner bgTop">
    <div class="wave waveTop" style="background-image: url('http://front-end-noobs.com/jecko/img/wave-top.png')"></div>
	</div>
	<div class="waveWrapperInner bgMiddle">
    <div class="wave waveMiddle" style="background-image: url('http://front-end-noobs.com/jecko/img/wave-mid.png')"></div>
	</div>
	<div class="waveWrapperInner bgBottom">
    <div class="wave waveBottom" style="background-image: url('http://front-end-noobs.com/jecko/img/wave-bot.png')"></div>
	</div>
	</div>
	<ul class="topnav">
  		<li><a href="index.jsp">Home</a></li>
  		<li><a href="ReportGen.jsp">Report Gen</a></li>
  		<li><a class="active" href="Admin.jsp">Admin</a></li>
  		<li class="right"><a href="#about">About</a></li>
	</ul>
	 <div id="login-div" class="main-div">
	 	<h3> Admin Login</h3>
	 	<form method="get" id="adminform" action="AdminPage.jsp">
	 	<input id="email" name="email" type="email" placeholder="Email.."/>
	 	<input id="password" name="password" type="password" placeholder="Password.."/>
	 	<button type="submit" form="adminform" value="Login">Login</button>
	 	</form>
	 </div>
</body>
</html>