<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.member.dao.MemberDAO"%>
<%@page import = "com.member.common.FileUpload" %>
<%@page import = "com.member.bean.MemberVO" %>


<%
	request.setCharacterEncoding("utf-8");
	MemberDAO memberDAO = new MemberDAO();
	FileUpload upload = new FileUpload();
	MemberVO u = upload.uploadPhoto(request);
	
	int i=memberDAO.updateMember(u);
	String message = "데이터 수정 성공!";
	if (i==0) message = "데이터 수정 실패";
%>
<script>
alert('<%=message%>');
location.href = 'Projectlist.jsp';
</script>