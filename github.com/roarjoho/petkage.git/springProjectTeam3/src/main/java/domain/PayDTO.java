package domain;

import java.sql.Timestamp;

public class PayDTO {

	private int pay_merchantUid;
	private String user_id;
	private String pay_pg;
	private String pay_method;
	private int pay_amount;
	private String pay_name;
	private String pay_phone;
	private String pay_address1;
	private String pay_address2;
	private String pay_address3;
	private Timestamp pay_date;
	
	public int getPay_merchantUid() {
		return pay_merchantUid;
	}
	public void setPay_merchantUid(int pay_merchantUid) {
		this.pay_merchantUid = pay_merchantUid;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPay_pg() {
		return pay_pg;
	}
	public void setPay_pg(String pay_pg) {
		this.pay_pg = pay_pg;
	}
	public String getPay_method() {
		return pay_method;
	}
	public void setPay_method(String pay_method) {
		this.pay_method = pay_method;
	}
	public int getPay_amount() {
		return pay_amount;
	}
	public void setPay_amount(int pay_amount) {
		this.pay_amount = pay_amount;
	}
	public String getPay_name() {
		return pay_name;
	}
	public void setPay_name(String pay_name) {
		this.pay_name = pay_name;
	}
	public String getPay_phone() {
		return pay_phone;
	}
	public void setPay_phone(String pay_phone) {
		this.pay_phone = pay_phone;
	}
	public String getPay_address1() {
		return pay_address1;
	}
	public void setPay_address1(String pay_address1) {
		this.pay_address1 = pay_address1;
	}
	public String getPay_address2() {
		return pay_address2;
	}
	public void setPay_address2(String pay_address2) {
		this.pay_address2 = pay_address2;
	}
	public String getPay_address3() {
		return pay_address3;
	}
	public void setPay_address3(String pay_address3) {
		this.pay_address3 = pay_address3;
	}
	public Timestamp getPay_date() {
		return pay_date;
	}
	public void setPay_date(Timestamp pay_date) {
		this.pay_date = pay_date;
	}
	
	
	
}
