<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql"
uri="http://java.sun.com/jsp/jstl/sql"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="css/superfish.css">

	<link rel="stylesheet" href="css/style1.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js">
        </script>
	
	<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="fonts/font-awesome.min.css">
<link rel="stylesheet" href="js/bootstrap.min.js">
<link rel="stylesheet" href="js/jquery-1.9.1.min.js">
<script type="text/javascript">

function search(title){
	
	xmlhttp=new XMLHttpRequest();//object
	//go to fetch
	
 url="Controller?action=search&title="+title;
	xmlhttp.onreadystatechange=fetchDB;

	//shd be in one line o/w doesnt work
	
	xmlhttp.open("GET", url, true);

	document.getElementById("result").innerHTML=
		'<i class="fa fa-circle-o-notch fa-spin fa-3x fa-fw"></i><span class="sr-only">Loading...</span>';
	//loading image.... write on one line or doesnt work
	xmlhttp.send();

	
}
function fetchDB(){
	var res=xmlhttp.responseText;
	document.getElementById("result").innerHTML=res;
}

</script>
	
</head>
<body>
	<script>
    $(document).ready(function() {
        function disableBack() { window.history.forward() }

        window.onload = disableBack();
        window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
    });
</script>  



Welcome <font color="red"><select>
<option><%=session.getAttribute("email") %></option>
<option>LOGOUT</option>



</select></font>

<header id="fh5co-header-section" class="sticky-banner">
			<div class="container">
				<div class="nav-header">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
					<h1 id="fh5co-logo"><a href="index.jsp">KNS</a></h1>
					<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li class="active">
								<a href="index.jsp">Home</a>
							</li>
							
						
							<li>
								<a href="#" class="fh5co-sub-ddown">What is Autism ? &darr;</a>
								<ul class="fh5co-sub-menu">
									<li><a href="signs_option.jsp">Signs And Symptoms</a></li>
									<li><a href="famous.jsp">Famous Autistic People</a></li>
									<li><a href="inspire_option.jsp">Inspiratonal Stories</a></li>
								</ul>
							</li>
							<li>
								<a href="#" class="fh5co-sub-ddown"> Living With Autism &darr;</a>
								 <ul class="fh5co-sub-menu">
								 	<li><a href="research_option.jsp">Reasearch</a></li>
								 	<li><a href="write.jsp">Write Your Experience</a></li>
								</ul>
							</li>
							<li><a href="<%=request.getContextPath()%>/Controller?action=logout">Logout</a></li>
											
							<li>
							<li><a href="reset_password.jsp">RESET Password</a></li>
											
							<li>
							<input type="text" name="search" id="search"  onkeyup="search(this.value)">
							<button>SEARCH</button>
							<br><br>
						
						<a href="Controller?action=titlefound&&
						hiddenTitle="><div id="result"></div></a>
						
							</li>
								</ul>
							</li>
							</ul>
							
			
					</nav>
				</div>
			</div>
		</header>
		<script>
    $(document).ready(function() {
        function disableBack() { window.history.forward() }

        window.onload = disableBack();
        window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
    });
</script>  
		
		<!-- jQuery -->


	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/sticky.js"></script>

	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Superfish -->
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.js"></script>
	
	<!-- Main JS -->
	<script src="js/main.js"></script>
</body>
</html>