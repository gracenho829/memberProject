<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.member.dao.MemberDAO,com.member.bean.MemberVO"%>
<%@page import ="com.member.common.FileUpload" %>
<%
	String sid = request.getParameter("id");
	if (sid != ""){  
		int id = Integer.parseInt(sid);
		MemberDAO memberDAO = new MemberDAO();
		String filename = memberDAO.getPhotoFilename(id);
		if (filename!=null){
			FileUpload.deleteFile(request,filename);
		}
		memberDAO.deleteMember(id);
	}
	response.sendRedirect("Projectlist.jsp");
%>