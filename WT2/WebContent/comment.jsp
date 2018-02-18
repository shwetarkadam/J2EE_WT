<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  
<%@ page import="java.sql.*" %>  
<%  
String comment=request.getParameter("comment");  
String email=request.getParameter("email");  
if(comment==null||email==null||comment.trim().equals("")||email.trim().equals("")){  
out.print("<p>Please write comment</p>");  
}else{  
  
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wt","root","");  
PreparedStatement ps=con.prepareStatement("insert into comment(ccomment,uemail) values(?,?)");  
ps.setString(1,comment);  
ps.setString(2,email);  
int i=ps.executeUpdate();  
  
PreparedStatement ps2=con.prepareStatement("select * from comment");  
ResultSet rs=ps2.executeQuery();  
  
out.print("<hr/><h2>Comments:</h2>");  
while(rs.next()){  
out.print("<div class='box'>");  
out.print("<p>"+rs.getString(2)+"</p>");  
out.print("<p><strong>By: "+rs.getString(3)+"</strong></p>");  
out.print("</div>");  
}  
  
con.close();  
}catch(Exception e){out.print(e);}  
  
}//end of else  
%>  
</body>
</html>