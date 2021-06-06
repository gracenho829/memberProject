<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.member.dao.MemberDAO,com.member.bean.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css' rel='stylesheet' type='text/css'>
<style>
body{
background-color:#faf8fd;
}
h1{ 
	font-family: 'Spoqa Han Sans', 'Spoqa Han Sans JP', 'Sans-serif'; 
	text-align:center;
	color:#8177e8;

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
	background-color: white;
	height: 100vh;
	padding-left:50px;
   	padding-right:50px;
}
#right{
	justify-content: center;
	align-items:center;
	display: flex;
	float: center;
	background-color: #3f82ff;
	color: white;
	height: 100vh;
}


input:focus, text:focus{
	outline: #8177e8;
	border-radius:10px;
}

button{
	border:0px;
	padding:10px;
	background-color:#3f82ff;
	border-radius:10px;
	color:white;
	width: 130px;
}

.center {
  margin-left: auto;
  margin-right: auto;
}

</style>
</head>
<body>

<%
	MemberDAO memberDAO = new MemberDAO();
	String id=request.getParameter("id");	
	MemberVO u= memberDAO.getMember(Integer.parseInt(id));
	request.setAttribute("vo",u);
%>
<div id=container>
<h1>Edit Form</h1>
<form action="edit_ok.jsp" method="post" enctype = "multipart/form-data">
<input type="hidden" name="sid" value="<%=u.getSid() %>"/>
<table class = "center">
<tr><td>Name</td><td><input type="text" name="username" value="<%= u.getUsername()%>" style="border-color:#8177e8;border-radius:10px;"/></td></tr>
<tr><td>Email</td><td><input type = "text" name ="email" value="<%=u.getEmail()%>" style="border-color:#8177e8;border-radius:10px;"/></td></tr>
<tr><td>Photo</td><td><input type="file" name="photo" value="${vo.getPhoto()}" style="border-color:#8177e8;border-radius:10px;"/>
<c:if test="${vo.getPhoto() ne ''}" ><br/><img src="${pageContext.request.contextPath}/upload/${vo.getPhoto()}" class = "photo" /></c:if></td></tr>
<tr><td>Affiliation</td><td><input type = "text" name ="affiliation" value="<%=u.getAffiliation()%>" style="border-color:#8177e8;border-radius:10px;"/></td></tr>
<tr><td>Number</td><td><input type="text" name ="number" value = "<%=u.getNumber() %>" style="border-color:#8177e8;border-radius:10px;"/></td></tr>
</table>
<table class = "center" style="margin-top:30px;">
<tr><td colspan="2"><input type="submit" value="Edit" style="width:130px;border:0px;padding:10px;background-color:#8177e8;border-radius:10px;color:white;margin-right:20px;box-shadow: 2px 3px 3px #e2d5ff;"/>
<input type="button" value="Cancel" onclick="history.back()" style="width:130px;border:0px;padding:10px;background-color:#8177e8;border-radius:10px;color:white;box-shadow: 2px 3px 3px #e2d5ff;"/></td></tr>
</table>
</form>
</div>
</body>
</html>