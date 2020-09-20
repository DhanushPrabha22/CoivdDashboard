
firebase.auth().onAuthStateChanged(function(user) {
  if (user) {
    // User is signed in.
    var user = firebase.auth().currentUser;
    if(user!=null){
    	var email_id=user.email;
    	var email_verified = user.emailVerified;
		if(email_verified==false){
			document.getElementById("user-div").style.display = "block";
			document.getElementById("login-div").style.display = "none";
			document.getElementById("report-gen").style.display = "none";
			document.getElementById("user_para").innerHTML = "<b>Welcome user : </b>"+email_id +
    	                                                 "<br><br><b>Verified :</b>" + email_verified;
		}else{
			document.getElementById("user-div").style.display = "none";
			document.getElementById("login-div").style.display = "none";
			document.getElementById("report-gen").style.display = "block";
			document.getElementById("rprt-p").innerHTML = "<b>Hello user : </b>"+email_id;
		}
    }
  } else {
    // No user is signed in.
    document.getElementById("user-div").style.display = "none";
    document.getElementById("login-div").style.display = "block";
	document.getElementById("report-gen").style.display = "none";
  }
});

function create_account(){
	var email = document.getElementById("email_field").value;
	var pass = document.getElementById("password_field").value;
	
	firebase.auth().createUserWithEmailAndPassword(email, pass).catch(function(error) {
		  // Handle Errors here.
		  var errorCode = error.code;
		  var errorMessage = error.message;
		  // ...
		  
		  window.alert("Error : "+errorMessage);
		});
	
}

function send_verification(){
	var user = firebase.auth().currentUser;

	user.sendEmailVerification().then(function() {
		window.alert("Verification Sent");
		// Email sent.
	}).catch(function(error) {
		// An error happened.
		window.alert("Error : "+error.message);
	});
}


function login(){
	var email = document.getElementById("email_field").value;
	var pass = document.getElementById("password_field").value;


	firebase.auth().signInWithEmailAndPassword(email, pass).catch(function(error) {
		  // Handle Errors here.
		  var errorCode = error.code;
		  var errorMessage = error.message;
		  // ...
		  
		  window.alert("Error : "+errorMessage);
		});
	
}

function logout(){
	firebase.auth().signOut().then(function() {
		  // Sign-out successful.
		}).catch(function(error) {
		  // An error happened.
		window.alert("Error : "+error);
		});
}

