package com.myapp.member;
import java.util.Date;

public class MemberVO {
	private int sid;
	private String userid;
	private String username;
	private String password;
	private String email;
	private String blogurl;
	private String photo;
	private String detail;
	private Date regdate;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getUserid() {
		return userid;
	}
}
