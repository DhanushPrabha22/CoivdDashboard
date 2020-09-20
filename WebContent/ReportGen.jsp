<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login and SignUp</title>
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


.main-div,.loggedin-div{
	box-shadow: 0 4px 8px 0 rgba(0,0,0,1);
	border: 1px solid #5d8ffc;
	position: relative;
	width:20%;
	background: #fff;
	border-radius: 5px;
	margin:0px auto;
	margin-top:150px;
	padding:20px;
	display:none;
}

.select-dist{
	box-shadow: 0 4px 8px 0 rgba(0,0,0,1);
  	transition: 0.3s;
	position: relative;
	background: #fff;
	border-radius: 5px;
	width:20%;
	border: 1px solid #5d8ffc;
	margin:0px auto;
	margin-top:150px;
	padding:20px;
	display:none;
}

.select-dist:hover,.main-div:hover,.loggedin-div:hover{
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

.select-dist button{
display:block;
  width: 80%;
  padding: 15px;
  font-weight: 700;
  margin: 5px;
  margin-top:20px;
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

.main-div button, .loggedin-div button {
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

.main-div button:hover, .loggedin-div button:hover, .select-dist button:hover{
	background: #fff;
	color: #5d8ffc;
	border: 1px solid #5d8ffc;
}
	</style>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
  		<li><a class="active" href="ReportGen.jsp">Report Gen</a></li>
  		<li><a href="Admin.jsp">Admin</a></li>
  		<li class="right"><a href="#about">About</a></li>
	</ul>
	 <div id="login-div" class="main-div">
	 	<h3> User Login and SignUp</h3>
	 	<input  type="email" placeholder="Email.." id="email_field"/>
	 	<input type="password" placeholder="Password.." id="password_field"/>
	 	<button onclick="login()" class="slide">Login</button>
	 	<button onclick="create_account()" class="slide">Create a new Account</button>
	 </div>

	 <div id="user-div" class="loggedin-div">
	    <h2>Please Verify your Email to continue </h2>
	 	<p id="user_para">Welcome to the firebase web login. You are logged in now.</p>
	 	<button onclick="logout()">Log Out</button>
	 	<button onclick="send_verification()">Send Verification</button>
	 </div>
	 
	 <div id="report-gen" class="select-dist">
	 			<form method="get" action="selectdistrict.jsp">
	 					<h3 style="color:#000000;">Please Select a District</h3>
            			<select id="value" name="value">
  							<option value="Ariyalur">Ariyalur</option>
  							<option value="Chengalpattu">Chengalpattu</option>
  							<option value="Chennai">Chennai</option>
  							<option value="Coimbatore">Coimbatore</option>
  							<option value="Cuddalore">Cuddalore</option>
  							<option value="Dharmapuri">Dharmapuri</option>
  							<option value="Dindigul">Dindigul</option>
  							<option value="Erode">Erode</option>
  							<option value="Kancheepuram">Kancheepuram</option>
  							<option value="Kanniyakumari">Kanniyakumari</option>
  							<option value="Karur">Karur</option>
  							<option value="Krishnagiri">Krishnagiri</option>
  							<option value="Madurai">Madurai</option>
  							<option value="Nagapattinam">Nagapattinam</option>
  							<option value="Namakkal">Namakkal</option>
  							<option value="Perambalur">Perambalur</option>
  							<option value="Pudukkottai">Pudukkottai</option>
  							<option value="Ramanathapuram">Ramanathapuram</option>
  							<option value="Ranippettai">Ranippettai</option>
  							<option value="Salem">Salem</option>
  							<option value="Sivaganga">Sivaganga</option>
  							<option value="Thanjavur">Thanjavur</option>
  							<option value="The Nilgiris">The Nilgiris</option>
  							<option value="Theni">Theni</option>
  							<option value="Thiruvallur">Thiruvallur</option>
  							<option value="Thiruvarur">Thiruvarur</option>
  							<option value="Thoothukkudi">Thoothukkudi</option>
  							<option value="Tiruchirappalli">Tiruchirappalli</option>
  							<option value="Tirunelveli">Tirunelveli</option>
  							<option value="Tiruppur">Tiruppur</option>
  							<option value="Tiruvannamalai">Tiruvannamalai</option>
  							<option value="Vellore">Vellore</option>
  							<option value="Viluppuram">Viluppuram</option>
  							<option value="Virudhunagar">Virudhunagar</option>
  						</select>
					    <input type="submit" value="GO" />
                       <input type="reset" value="Reset" />
        		</form>
        		<p id="rprt-p"></p>
        		<button onclick="logout()">Log Out</button>
	 </div>
	 

<script src="https://www.gstatic.com/firebasejs/7.16.0/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-auth.js"></script>

<script>
  var firebaseConfig = {
    apiKey: "AIzaSyB2md5D69I84bfYUJ62OLNygfbOypMTvoE",
    authDomain: "coviddashboard-61e9f.firebaseapp.com",
    databaseURL: "https://coviddashboard-61e9f.firebaseio.com",
    projectId: "coviddashboard-61e9f",
    storageBucket: "coviddashboard-61e9f.appspot.com",
    messagingSenderId: "843465209262",
    appId: "1:843465209262:web:c6f51ee333209a46ae043f",
    measurementId: "G-9ZNBM8FDE5"
  };
  firebase.initializeApp(firebaseConfig);
  firebase.auth();
</script>
<script src="rptjs.js"></script>
</body>
</html>