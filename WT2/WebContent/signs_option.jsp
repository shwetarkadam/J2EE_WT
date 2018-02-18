<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
          <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql"
uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title><!-- Animate.css -->
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




</head>
<body>
<c:import url="header.jsp"></c:import>
<br><hr>
<div class="col-md-12">
					<h2 class="ser-title">FOllowing Are the Latest Updates on Signs and Symptoms</h2>
					<hr class="botm-line">
				</div>
				<br><hr>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/wt"
user="root" password="" var="ds" />
<sql:query var="result" dataSource="${ds }">
select * from blog_category where cat_id="3"
</sql:query>

<sql:query var="result1" dataSource="${ds }">
select * from blog_post where cat_id ="3"
</sql:query>

<!-- 
<c:forEach var="row" items="${result.rows }">
<a href="/Controller?action=show_post&cat_id=
<c:out value="${row.cat_id }"/>">
<c:out value="${row.cat_name }"/> </a><hr>
</c:forEach>
 -->

<c:forEach var="row1" items="${result1.rows }">

<font size="+2" color="red"><a href="<%=request.getContextPath()
%>/Controller?action=show_post_by_title&bid=
<c:out value="${row1.bid }"/>
&btitle=
<c:out value="${row1.btitle }"/>"><c:out value="${row1.btitle }"/></a></font> <hr><br>

 </c:forEach>




<c:import url="footer.jsp"></c:import>
</body>
</html>