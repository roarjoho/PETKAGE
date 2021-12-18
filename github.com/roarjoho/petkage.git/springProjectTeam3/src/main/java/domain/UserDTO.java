package domain;

import java.sql.Timestamp;

public class UserDTO {
	
	private String user_id;
	private String user_pwd;
	private String user_name;
	private String user_phone;
	private String user_email;
	private Timestamp user_createDate;
	private Timestamp user_deleteDate;
	private String user_deleteCheck;
	private int user_adminCheck;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public Timestamp getUser_createDate() {
		return user_createDate;
	}
	public void setUser_createDate(Timestamp user_createDate) {
		this.user_createDate = user_createDate;
	}
	public Timestamp getUser_deleteDate() {
		return user_deleteDate;
	}
	public void setUser_deleteDate(Timestamp user_deleteDate) {
		this.user_deleteDate = user_deleteDate;
	}
	public String getUser_deleteCheck() {
		return user_deleteCheck;
	}
	public void setUser_deleteCheck(String user_deleteCheck) {
		this.user_deleteCheck = user_deleteCheck;
	}
	public int getUser_adminCheck() {
		return user_adminCheck;
	}
	public void setUser_adminCheck(int user_adminCheck) {
		this.user_adminCheck = user_adminCheck;
	}
	
	
}
