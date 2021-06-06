package com.myapp.dao;
import java.sql.Connection;
import java.sql.ResultSet;

public class MemberDAO {
	private Connection conn = null;
	ResultSet rs = null;
	
	private final String M_INSERT = "insert into member(userid, password, username, email, photo, detail)" + " values(?,sha1(?),?,?,?,?)";
	private final String M_UPDATE = "update member set username=?, email=?, photo=?, detail=?" + "where sid=?";
	private final String M_DELETE = "delete from member where sid=?";
	private final String M_SELECT = "select * from member where sid=?";
	private final String M_LIST = "select * from member order by regdate desc";
}
