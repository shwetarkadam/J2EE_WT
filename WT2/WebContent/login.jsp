<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style2.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    
    
    <!-- Google Login -->

<script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" 
   content="787859535449-e5rvtob4lgv1m7mq5qlbi8bkn4rna95e.apps.googleusercontent.com">
    
   
   

</head>
<body>
 <body class="login-img3-body">

    <div class="container">

      <form class="login-form" action="Controller" method="post"  onsubmit="return Validate()" name="vform">        
        <input type="hidden" name="action" value="login_form">
        
        <div class="login-wrap">
            <p class="login-img"><i class="icon_lock_alt"></i></p>
            <div class="input-group">
              <span class="input-group-addon"><i class="icon_profile"></i></span>
              
<font color="red"><c:out value="${msg }"/></font>
              <input type="text"  name="email"  class="form-control" name="email"  placeholder="Email" value="<c:out value="${email }" />" autofocus>
              <div id="email_error" class="val_error"></div>
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input type="password"  name="password" class="form-control"  name="password" placeholder="Password">
            	<div id="password_error" class="val_error"></div>
	
            </div>
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me
                <span class="pull-right"> <a href="forgot_password.jsp"> Forgot Password?</a></span>
            </label>
            <button class="btn btn-primary btn-lg btn-block" type="submit" >Login</button>
        <button type="button" class="btn btn-warning btn-block" onclick="location.href='option.jsp'">SIGN UP</button>
                        
                        
           <!-- Login with facebook -->
            
            <span class="btn btn-block">
            	<fb:login-button  scope="public_profile,email" onlogin="checkLoginState();">
			</fb:login-button>
            </span>
                    
                    
            <!-- Login with Google -->
		
		      <span class="btn btn-block">
		      <div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
		      <img id="myImg"><br>
		      <p id="name"></p>
		      <div id="status">
		      </span>
                                 
                        
          </div>
      </form>

        
    </div>



<script type="text/javascript">

var email=document.forms["vform"]["email"];
var password=document.forms["vform"]["password"];

var email_error=document.getElementById("email_error");
var password_error=document.getElementById("password_error");

email.addEventListener("blur", emailVerify, true);
password.addEventListener("blur", passwordVerify, true);

function Validate()
{
	if(email.value=="")
	{
		email.style.border="1px solid red";
		email_error.textContent="email is required";
		email.focus();
		return false;
	}
	
	if(password.value=="")
	{
		password.style.border="1px solid red";
		password_error.textContent="password is required";
		password.focus();
		return false;
	}
}

function emailVerify()
{
	if(email.value!="")
	{
		email.style.border="1px solid #5E6E66";
		email_error.innerHTML="";
		return true;
	}
}	
function passwordVerify()
{	
	if(password.value!="")
	{
		password.style.border="1px solid #5E6E66";
		password_error.innerHTML="";
		return true;
	}
	
}


</script>

  <!-- container section end -->
    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
    
    
     <script>
  // This is called with the results from from FB.getLoginStatus().
  function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);
    // The response object is returned with a status field that lets the
    // app know the current login status of the person.
    // Full docs on the response object can be found in the documentation
    // for FB.getLoginStatus().
    if (response.status === 'connected') {
      // Logged into your app and Facebook.
      testAPI();
    } else {
      // The person is not logged into your app or we are unable to tell.
      /* document.getElementById('status').innerHTML = 'Please log ' +
        'into this app.'; */
    }
  }

  // This function is called when someone finishes with the Login
  // Button.  See the onlogin handler attached to it in the sample
  // code below.
  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }

  window.fbAsyncInit = function() {
  FB.init({
    appId      : '1839848882972507',
    cookie     : true,  // enable cookies to allow the server to access 
                        // the session
    xfbml      : true,  // parse social plugins on this page
    version    : 'v2.8' // use graph api version 2.8
  });

  // Now that we've initialized the JavaScript SDK, we call 
  // FB.getLoginStatus().  This function gets the state of the
  // person visiting this page and can return one of three states to
  // the callback you provide.  They can be:
  //
  // 1. Logged into your app ('connected')
  // 2. Logged into Facebook, but not your app ('not_authorized')
  // 3. Not logged into Facebook and can't tell if they are logged into
  //    your app or not.
  //
  // These three cases are handled in the callback function.

  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });

  };

  // Load the SDK asynchronously
  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

  // Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
      console.log('Successful login for: ' + response.name);
      document.getElementById('status').innerHTML =
        'Thanks for logging in, ' + response.name + '!';
    });
  }
</script>
      
      
      
    
      
   <script type="text/javascript">
      function onSignIn(googleUser) {
      // window.location.href='success.jsp';
      var profile = googleUser.getBasicProfile();
      var imagurl=profile.getImageUrl();
      var name=profile.getName();
      var email=profile.getEmail();
      document.getElementById("myImg").src = imagurl;
      document.getElementById("name").innerHTML = name;
      document.getElementById("myP").style.visibility = "hidden";
      document.getElementById("status").innerHTML = 'Welcome '+name+'!<a href=success.jsp?                        email='+email+'&name='+name+'/>Continue with Google login</a></p>'         }  
      </script>
   
   <script>
      function myFunction() {
      gapi.auth2.getAuthInstance().disconnect();
      location.reload();
   }
   </script>
    

</body>
</html>