 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Member</title>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css' rel='stylesheet' type='text/css'>
<style>
h1{ 
	font-family: 'Spoqa Han Sans', 'Spoqa Han Sans JP', 'Sans-serif'; 
	text-align:center;
}

h2{ 
	font-family: 'Spoqa Han Sans', 'Spoqa Han Sans JP', 'Sans-serif'; 
	text-align:center;
}
h3{
	font-family: 'Spoqa Han Sans', 'Spoqa Han Sans JP', 'Sans-serif'; 
	text-align:center;
}

td{
	font-family: 'Spoqa Han Sans', 'Spoqa Han Sans JP', 'Sans-serif';
}
#container{
	margin:auto;
}

#left{
	float: left;
	align-items:center;
	background-color: #faf8fd;
	height: 100vh;
	padding-left:50px;
   	padding-right:50px;
}
#right{
	justify-content: center;
	align-items:center;
	display: flex;
	float: center;
	background-color: #8177e8;
	color: white;
	height: 100vh;
}


input:focus, text:focus{
	outline: none;
}

button{
	border:0px;
	padding:10px;
	background-color:#8177e8;
	border-radius:10px;
	color:white;
	width: 130px;
	margin-right:15px;
	box-shadow: 2px 3px 3px #e2d5ff;
}


</style>
</head>
<body>
<div id = container>
	<div id = left > 
		<h2><br><br>Add New Member<br></h2>
		<form action ="add_ok.jsp" method="post" enctype = "multipart/form-data">
		<table >
		<tr><td>Name  </td><td><input type="text" name="username"/></td></tr>
		<tr><td>Email  </td><td><input type="text" name="email"/></td></tr>
		<tr><td>Photo  </td><td><input type="file" name="photo"/></td></tr>
		<tr><td>Affiliation  </td><td><input type="text" name="affiliation"/></td></tr>
		<tr><td>Number  </td><td><input type = "text" name = "number"/></td></tr>
		</table>
		<table style="margin-top:30px;">
		<tr><td><button onclick="Projectlist.jsp">View All Applications</button></td><td align = "right"><input type="submit" value = "Add Member" style="box-shadow: 2px 3px 3px #e2d5ff;width:130px;border:0px;padding:10px;background-color:#8177e8;border-radius:10px;color:white;"/></td></tr>
		</table>
		</form>
	</div>
	<div id = right>
		<h3>Become a member of our club!</h3>
	</div>
</div>
</body>
</html>