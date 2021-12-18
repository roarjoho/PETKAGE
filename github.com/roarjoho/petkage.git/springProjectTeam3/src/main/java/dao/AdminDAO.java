package dao;

import java.sql.Timestamp;
import java.util.List;

import domain.BoardDTO;
import domain.OrderInfoDTO;
import domain.PageDTO;
import domain.ProductDTO;
import domain.SalesChartDTO;
import domain.UserDTO;

public interface AdminDAO {
	
//추가된 날짜 조회하기	
	public Timestamp getProductAddDate(ProductDTO productDTO);
	
//매출관리
	public List<SalesChartDTO> getSalesChart();
	
//상품관리
	public List<ProductDTO> getProductList(PageDTO pageDTO);
	public ProductDTO getProductDetail(ProductDTO productDTO);
	public int getProductCount();
	public void addProduct(ProductDTO productDTO);
	public void updateProduct(ProductDTO productDTO);
	public void deleteProduct(ProductDTO producDTO);
		
//회원관리
	public List<UserDTO> getUserList(PageDTO pageDTO);
	public UserDTO getUserDetail(UserDTO userDTO);
	public UserDTO getUserDetail(String user_id);
	public int getUserCount();
	public void updateUserInfoPro(UserDTO userDTO);
	public void deleteUser(String id);
	
//주문관리
	
	public List<OrderInfoDTO> getOrderList(PageDTO pageDTO);
	public int getOrderCount();
	public OrderInfoDTO getOrderDetail(OrderInfoDTO orderInfoDTO);
	public void updateOrder(OrderInfoDTO orderInfoDTO);
	public void deleteOrder(OrderInfoDTO orderInfoDTO);

//게시판 관리
	public List<BoardDTO> filterBoard(PageDTO pageDTO);
	public int getBoardCount(String categoryNum);
	public BoardDTO getBoardContent(String selectedPost);
	public String getCategoryName(String selectedPost);
	public void deleteBoard(String board_numberID);
}
