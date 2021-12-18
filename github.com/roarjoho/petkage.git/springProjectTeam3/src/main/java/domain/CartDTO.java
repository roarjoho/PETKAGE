package domain;

public class CartDTO {

	private int cart_number;
	private String product_number;
	private String user_id;
	private String cart_count;
	
	public int getCart_number() {
		return cart_number;
	}
	public void setCart_number(int cart_number) {
		this.cart_number = cart_number;
	}
	public String getProduct_number() {
		return product_number;
	}
	public void setProduct_number(String product_number) {
		this.product_number = product_number;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getCart_count() {
		return cart_count;
	}
	public void setCart_count(String cart_count) {
		this.cart_count = cart_count;
	}
	
	
	
}
