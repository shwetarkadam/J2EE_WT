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
<!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- date picker -->
    
    <!-- color picker -->
    
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

<script type="text/javascript">
function fetch(country){
	
	if(country == ""){
		document.getElementById("msg").innerHTML="Please Select option";
	}else{
	
		
	xmlhttp=new XMLHttpRequest();
	url="write.jsp";
	
	xmlhttp.onreadystatechange=fetchDB;
	xmlhttp.open("GET", url,true);
	xmlhttp.send();
	}
	
}
function fetchDB(){
	document.getElementById("city_values").innerHTML=xmlhttp.responsetext;
}
</script>
</head>
<body>



<sql:setDataSource user="root" password="" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/wt" var="ds"/>

<sql:query var="result" dataSource="${ds }">
select * from blog_category
</sql:query>



<c:import url="header.jsp"/>
<font color="red" size="+2">
<c:out value="${msg }"></c:out> </font>
<hr>
 <div class="col-lg-12">
                              <section class="panel">
                                  <header class="panel-heading">
                                      CKEditor                                  </header>
                                  <div class="panel-body">
                                      <div class="form">
                                          <form action="Controller"  method="post" class="form-horizontal" >
<input type="hidden" name="action" value="blog_post">
                                              
                                              <div class="form-group">
                                                 
                                                  Enter Post title: <input type=" text" placeholder=" Enter Post title" name="post_title">
                                                 <br> <br>
                                                 Enter Today's Date: <input type=" text" placeholder=" Enter Today's Date" name="post_date">
                                                 <br><br>
                                                    What Best describes you?:
  
Select Blog Type:<select name="state" onchange="fetch(this.value)">
<option value=""> --Please Select An option-- </option> 
<c:forEach var="c" items="${result.rows }">
<option value="<c:out value="${c.cat_id }"/>">
<c:out value="${c.cat_name}"/>  </option>
</c:forEach>
</select>

<div id="msg" ></div>

        <br><br>
                                                  <div class="col-sm-10">
                                                      <textarea class="form-control ckeditor" name="editor1" rows="6"></textarea>
                                                  </div>
                                              </div>
                                               <div class="form-group">
                                                      <label for="exampleInputFile">File input</label>
                                                      <input type="file" id="exampleInputFile3" name="file">
                                                      <p class="help-block">Example block-level help text here.</p>
                                                  </div>
                                              
                                              <input type="submit" value="Submit Post">
                                          </form>
                                      </div>
                                  </div>
                              </section>
                          </div>
                     
                 <hr>
               


<c:import url="footer.jsp"/>


 <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>

    <!-- jquery ui -->
    <script src="js/jquery-ui-1.9.2.custom.min.js"></script>

    <!--custom checkbox & radio-->
    <script type="text/javascript" src="js/ga.js"></script>
    <!--custom switch-->
    <script src="js/bootstrap-switch.js"></script>
    <!--custom tagsinput-->
    <script src="js/jquery.tagsinput.js"></script>
    
    <!-- colorpicker -->
   
    <!-- bootstrap-wysiwyg -->
    <script src="js/jquery.hotkeys.js"></script>
    <script src="js/bootstrap-wysiwyg.js"></script>
    <script src="js/bootstrap-wysiwyg-custom.js"></script>
    <!-- ck editor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
    <!-- custom form component script for this page-->
    <script src="js/form-component.js"></script>
    <!-- custome script for all page -->
    <script src="js/scripts.js"></script>
  

</body>
</html>