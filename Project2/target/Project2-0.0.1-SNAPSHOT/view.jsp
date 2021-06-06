<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.member.dao.MemberDAO,com.member.bean.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Member</title>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css' rel='stylesheet' type='text/css'>
<style>
body{
background-color:#faf8fd
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
	MemberVO u = memberDAO.getMember(Integer.parseInt(id));
%>
<h1>View</h1>
<table class="center">
<tr><td>Name:</td><td><%= u.getUsername()%></td></tr>
<tr><td>Photo:</td><td><c:if test="${vo.getPhoto() ne ''}" ><br/>
<img src="${pageContext.request.contextPath}/upload/${vo.getPhoto()}" class = "photo"/></c:if></td></tr>
<tr><td>Email:</td><td><%= u.getEmail() %></td></tr>
<tr><td>Affiliation:</td><td><%= u.getAffiliation() %></td></tr>
<tr><td>Number:</td><td><%=u.getNumber()%></td></tr>
<tr><td colspan="2"><a href="edit_form.jsp?id=<%=u.getSid() %>">Edit</a></td></tr>
</table>
</body>
</html>