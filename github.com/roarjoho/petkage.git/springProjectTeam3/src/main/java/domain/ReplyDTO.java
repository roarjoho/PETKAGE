package domain;

import java.sql.Timestamp;

public class ReplyDTO {

	private int reply_number;
	private int board_numberID;
	private String user_id;
	private String reply_contents;
	private Timestamp reply_createDate;
	private Timestamp reply_deleteDate;
	private int reply_originNumber;
	private int reply_order;
	private int reply_depth;
	private String reply_deleteCheck;
	
	public int getReply_number() {
		return reply_number;
	}
	public void setReply_number(int reply_number) {
		this.reply_number = reply_number;
	}
	public int getBoard_numberID() {
		return board_numberID;
	}
	public void setBoard_numberID(int board_numberID) {
		this.board_numberID = board_numberID;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getReply_contents() {
		return reply_contents;
	}
	public void setReply_contents(String reply_contents) {
		this.reply_contents = reply_contents;
	}
	public Timestamp getReply_createDate() {
		return reply_createDate;
	}
	public void setReply_createDate(Timestamp reply_createDate) {
		this.reply_createDate = reply_createDate;
	}
	public Timestamp getReply_deleteDate() {
		return reply_deleteDate;
	}
	public void setReply_deleteDate(Timestamp reply_deleteDate) {
		this.reply_deleteDate = reply_deleteDate;
	}
	public int getReply_originNumber() {
		return reply_originNumber;
	}
	public void setReply_originNumber(int reply_originNumber) {
		this.reply_originNumber = reply_originNumber;
	}
	public int getReply_order() {
		return reply_order;
	}
	public void setReply_order(int reply_order) {
		this.reply_order = reply_order;
	}
	public int getReply_depth() {
		return reply_depth;
	}
	public void setReply_depth(int reply_depth) {
		this.reply_depth = reply_depth;
	}
	public String getReply_deleteCheck() {
		return reply_deleteCheck;
	}
	public void setReply_deleteCheck(String reply_deleteCheck) {
		this.reply_deleteCheck = reply_deleteCheck;
	}
	
	
	
}
