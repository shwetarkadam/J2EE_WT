<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Open+Sans:300,400,700);
/* css class for the login generated errors */

.profilepress-reset-status {
  width: 400px;
  text-align: center;
  background-color: #e74c3c;
  color: #ffffff;
  border: medium none;
  border-radius: 4px;
  font-size: 17px;
  font-weight: normal;
  line-height: 1.4;
  padding: 8px 5px;
  margin: auto;
}

.memo-reset-success {
   width: 400px;
  text-align: center;
  background-color: #2ecc71;
  color: #ffffff;
  border: medium none;
  border-radius: 4px;
  font-size: 17px;
  font-weight: normal;
  line-height: 1.4;
  padding: 8px 5px;
  margin: auto;
}

#sc-password {
  background: #f0f0f0;
  width: 400px;
  margin: 0 auto;
  margin-top: 8px;
  margin-bottom: 2%;
  transition: opacity 1s;
  -webkit-transition: opacity 1s;
}

#sc-password h1 {
  background: #3399cc;
  padding: 20px 0;
  font-size: 140%;
  font-weight: 300;
  text-align: center;
  color: #fff;
}

div#sc-password .sc-container {
  background: #f0f0f0;
  padding: 6% 4%;
}

div#sc-password input[type="email"],
div#sc-password input[type="text"],
div#sc-password input[type="password"] {
  width: 92%;
  background: #fff;
  margin-bottom: 4%;
  border: 1px solid #ccc;
  padding: 4%;
  font-family: 'Open Sans', sans-serif;
  font-size: 95%;
  color: #555;
}

div#sc-password input[type="submit"] {
  width: 100%;
  background: #3399cc;
  border: 0;
  padding: 4%;
  font-family: 'Open Sans', sans-serif;
  font-size: 100%;
  color: #fff;
  cursor: pointer;
  transition: background .3s;
  -webkit-transition: background .3s;
}

div#sc-password input[type="submit"]:hover {
  background: #2288bb;
}
.form-gap {
    padding-top: 70px;
}

</style>
</head>

<body>
<form action="Controller" method="post">
<div class="form-gap"></div>
<div id="sc-password">
  <h1>Reset Password</h1>
  <div class="sc-container">
    <input type="email" name="to" placeholder="ENter email">
    <input type="submit" value="Link To RESET Password is sent to your Email" />
  <input type="hidden" name="action" value="sendmail"/>
  </div>
</div>
</form>
</body>
</html>