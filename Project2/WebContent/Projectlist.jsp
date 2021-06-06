<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "com.member.dao.MemberDAO,com.member.bean.MemberVO, java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix ="fn" uri ="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mash-Up Application Form</title>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css' rel='stylesheet' type='text/css'>
<style>
body{
background-color:#f2f6fc;
}
h1{
color: #78718d;
font-family: 'Spoqa Han Sans', 'Spoqa Han Sans JP', 'Sans-serif'; 
text-align:center;
}
#list {
  font-family: 'Spoqa Han Sans', 'Spoqa Han Sans JP', 'Sans-serif'; 
	text-align:center;
  border-collapse: collapse;
  width: 100%;
  margin-left: 10px;
  margin-right:10px;
  box-shadow: 2px 3px 3px #e2d5ff;
}
#list td, #list th {
  border: none;
  padding: 15px;
  text-align:left;
  color:#a0aac2;
}
#list tr{
	background-color: #ffffff;
	margin-bottom: 20px;
 	margin-left: 10px;
	
}

#list tr:hover {
	background-color: #f9fbfe;
}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  background-color:#f2f6fc;
  color: #8177e8;
  margin-left: 10px;
  
}

button, a{
	font-family: 'Spoqa Han Sans', 'Spoqa Han Sans JP', 'Sans-serif'; 
	border:0px;
	padding:10px;
	background-color:#8177e8;
	border-radius:20px;
	color:white;
	width: 80px;
	margin-right:15px;
	box-shadow: 2px 3px 3px #e2d5ff;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='delete_ok.jsp?id=' + id;
	}

	function edit_form(id){
		location.href = 'edit_form.jsp?id='+ id;
		}

	function view(id){
		location.href= 'view.jsp?id='+id;
		}

	function addform(){
		location.href='addform.jsp';
			}
</script>
</head>
<body>
<h1>Member List</h1>

<table id="list" width="90%">
<tr>
	<th>Name</th>
	<th>E-mail</th>
	<th>Affiliation</th>
	<th>Number</th>
	
</tr>
<%
	MemberDAO memberDAO = new MemberDAO();
	List<MemberVO> list = memberDAO.getList();
	request.setAttribute("list",list);
%>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.getUsername()}</td>
		<td>${u.getEmail()}</td>
		<td>${u.getAffiliation()}</td>
		<td>${u.getNumber() }</td>
		<td><button onclick="javascript:view('${u.getSid()}')">View</button></td>
		<td><button onclick="javascript:edit_form('${u.getSid()}')">Edit</button></td>
		<td><button onclick="javascript:delete_ok('${u.getSid()}')">Delete</button></td>
	</tr>
</c:forEach>
</table>

<br/><button onclick="javascript:addform()" style = "margin-left: 10px;width: 150px;">Apply for Mash-Up!</button>
</body>
</html>