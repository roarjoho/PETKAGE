package domain;

import java.sql.Timestamp;

public class ProductDTO {


	private String product_number;
	private String productCategory_number;
	private String product_name;
	private String product_price;
	private String product_stock;
	private String product_desc;
	private Timestamp product_date;
	private String product_sell;
	private String product_imagePath;

	private String orderby;
	private String ascdesc;
	private String cart_count;
	
	
	public String getProduct_number() {
		return product_number;
	}
          
	public void setProduct_number(String product_number) {
		this.product_number = product_number;
	}
	public String getProductCategory_number() {
		return productCategory_number;
	}

	public void setProductCategory_number(String productCategory_number) {
		this.productCategory_number = productCategory_number;
	}
           
	public String getProduct_name() {
		return product_name;
	}
	public String getProduct_price() {
		return product_price;
	}
	public String getProduct_stock() {
		return product_stock;
	}
	public String getProduct_desc() {
		return product_desc;
	}
	public Timestamp getProduct_date() {
		return product_date;
	}
	public String getProduct_sell() {
		return product_sell;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}
	public void setProduct_stock(String product_stock) {
		this.product_stock = product_stock;
	}
	public void setProduct_desc(String product_desc) {
		this.product_desc = product_desc;
	}
	public void setProduct_date(Timestamp product_date) {
		this.product_date = product_date;
	}
	public void setProduct_sell(String product_sell) {
		this.product_sell = product_sell;
	}

	public void setProduct_imagePath(String product_imagePath) {
		this.product_imagePath = product_imagePath;
	}
	
	public String getProduct_imagePath() {
		return product_imagePath;
	}

	
	public String getOrderby() {
		return orderby;
	}
	public void setOrderby(String orderby) {
		this.orderby = orderby;
	}
	public String getAscdesc() {
		return ascdesc;
	}
	public void setAscdesc(String ascdesc) {
		this.ascdesc = ascdesc;
	}
	public String getCart_count() {
		return cart_count;
	}
	public void setCart_count(String cart_count) {
		this.cart_count = cart_count;
	}
	
	
	
	

}
