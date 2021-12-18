package domain;

import java.sql.Timestamp;

public class ProductImageDTO {

	private int productImage_fileNumber;
	private int product_number;
	private String productImage_orginFileName;
	private String productImage_storedFileName;
	private String productImage_thumbNail;
	private int productImage_fileSize;
	private Timestamp productImage_createDate;
	private String productImage_deleteCheck;
	
	public int getProductImage_fileNumber() {
		return productImage_fileNumber;
	}
	public void setProductImage_fileNumber(int productImage_fileNumber) {
		this.productImage_fileNumber = productImage_fileNumber;
	}
	public int getProduct_number() {
		return product_number;
	}
	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}
	public String getProductImage_orginFileName() {
		return productImage_orginFileName;
	}
	public void setProductImage_orginFileName(String productImage_orginFileName) {
		this.productImage_orginFileName = productImage_orginFileName;
	}
	public String getProductImage_storedFileName() {
		return productImage_storedFileName;
	}
	public void setProductImage_storedFileName(String productImage_storedFileName) {
		this.productImage_storedFileName = productImage_storedFileName;
	}
	public String getProductImage_thumbNail() {
		return productImage_thumbNail;
	}
	public void setProductImage_thumbNail(String productImage_thumbNail) {
		this.productImage_thumbNail = productImage_thumbNail;
	}
	public int getProductImage_fileSize() {
		return productImage_fileSize;
	}
	public void setProductImage_fileSize(int productImage_fileSize) {
		this.productImage_fileSize = productImage_fileSize;
	}
	public Timestamp getProductImage_createDate() {
		return productImage_createDate;
	}
	public void setProductImage_createDate(Timestamp productImage_createDate) {
		this.productImage_createDate = productImage_createDate;
	}
	public String getProductImage_deleteCheck() {
		return productImage_deleteCheck;
	}
	public void setProductImage_deleteCheck(String productImage_deleteCheck) {
		this.productImage_deleteCheck = productImage_deleteCheck;
	}
	
	
	
}
