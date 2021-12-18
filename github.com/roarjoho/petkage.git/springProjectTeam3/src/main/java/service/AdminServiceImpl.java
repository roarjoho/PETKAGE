package service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import dao.AdminDAO;
import domain.BoardDTO;
import domain.OrderInfoDTO;
import domain.PageDTO;
import domain.ProductDTO;
import domain.SalesChartDTO;
import domain.UserDTO;

@Service
public class AdminServiceImpl implements AdminService{

	@Inject
	private AdminDAO adminDAO;
	
//1. 매출관리--------------------------------------------------------------------------------------------------------
	@Override
	public List<SalesChartDTO> getSalesChart() {
		System.out.println("AdminServiceImpl - getSalesChart");
		return adminDAO.getSalesChart();
	}
	
//2. 상품관리--------------------------------------------------------------------------------------------------------
	@Override
	public Timestamp getProductAddDate(ProductDTO productDTO) {
		System.out.println("AdminServiceImpl - getProductAddDate()호출");
		return adminDAO.getProductAddDate(productDTO);
	}

	@Override
	public void addProduct(ProductDTO productDTO) {
		System.out.println("AdminServiceImpl - addProduct()호출");
		adminDAO.addProduct(productDTO);
	}

	@Override
	public void deleteProduct(ProductDTO productDTO) {
		System.out.println("AdminServiceImpl - deleteProduct()호출");
		adminDAO.deleteProduct(productDTO);
	}

	@Override
	public void updateProduct(ProductDTO productDTO) {
		System.out.println("AdminServiceImpl - updateProduct()호출");
		adminDAO.updateProduct(productDTO);
	}

	@Override
	public List<ProductDTO> getProductList(PageDTO pageDTO) {
		System.out.println("AdminServiceImpl - getProductList");
	      // pageSize, pageNum 담아옴
	      // currentPage startRow endRow 
	      int currentPage=Integer.parseInt(pageDTO.getPageNum());
	      int startRow=(currentPage-1)*pageDTO.getPageSize()+1;
	      int endRow=startRow+pageDTO.getPageSize()-1;
	      
	      pageDTO.setCurrentPage(currentPage);
	      pageDTO.setStartRow(startRow-1); // 디비 startRow-1
	      pageDTO.setEndRow(endRow);
		
		return adminDAO.getProductList(pageDTO);
	}
	
	@Override
	public ProductDTO getProductDetail(ProductDTO productDTO) {
		System.out.println("AdminServiceImpl - getProductDetail");
		return adminDAO.getProductDetail(productDTO);
	}

	@Override
	public int getProductCount() {
		System.out.println("AdminServiceImpl - getProductCount");
		return adminDAO.getProductCount();
	}

//3. 회원관리--------------------------------------------------------------------------------------------------------
	@Override
	public List<UserDTO> getUserList(PageDTO pageDTO) {
		System.out.println("AdminServiceImpl - getUserList");
	      // pageSize, pageNum 담아옴
	      // currentPage startRow endRow 
	      int currentPage=Integer.parseInt(pageDTO.getPageNum());
	      int startRow=(currentPage-1)*pageDTO.getPageSize()+1;
	      int endRow=startRow+pageDTO.getPageSize()-1;
	      
	      pageDTO.setCurrentPage(currentPage);
	      pageDTO.setStartRow(startRow-1); // 디비 startRow-1
	      pageDTO.setEndRow(endRow);
		return adminDAO.getUserList(pageDTO);
	}

	@Override
	public int getUserCount() {
		System.out.println("AdminServiceImpl - getUserCount");
		return adminDAO.getUserCount();
	}
	
	@Override
	public void updateUserInfoPro(UserDTO userDTO) {
		System.out.println("AdminServiceImpl - updateUser");
		adminDAO.updateUserInfoPro(userDTO);
	}

	@Override
	public void deleteUser(String id) {
		System.out.println("AdminServiceImpl - deleteUser");
		adminDAO.deleteUser(id);
	}

	@Override
	public UserDTO getUserDetail(UserDTO userDTO) {
		System.out.println("AdminServiceImpl - getUserDetail(userDTO)");
		return adminDAO.getUserDetail(userDTO);
	}
	
	@Override
	public UserDTO getUserDetail(String user_id) {
		System.out.println("AdminServiceImpl - getUserDetail(user_id)");
		return adminDAO.getUserDetail(user_id);
	}

//4. 주문관리--------------------------------------------------------------------------------------------------------
	
	@Override
	public List<OrderInfoDTO> getOrderList(PageDTO pageDTO) {
		System.out.println("AdminServiceImpl - getOrderList");		
	      // pageSize, pageNum 담아옴
	      // currentPage startRow endRow 
	      int currentPage=Integer.parseInt(pageDTO.getPageNum());
	      int startRow=(currentPage-1)*pageDTO.getPageSize()+1;
	      int endRow=startRow+pageDTO.getPageSize()-1;
	      
	      pageDTO.setCurrentPage(currentPage);
	      pageDTO.setStartRow(startRow-1); // 디비 startRow-1
	      pageDTO.setEndRow(endRow);
		
		return adminDAO.getOrderList(pageDTO);
	}

	@Override
	public int getOrderCount() {
		System.out.println("AdminServiceImpl - getOrderCount");
		return adminDAO.getOrderCount();
	}

	@Override
	public OrderInfoDTO getOrderDetail(OrderInfoDTO orderInfoDTO) {
		System.out.println("AdminServiceImpl - getOrderDetail");
		return adminDAO.getOrderDetail(orderInfoDTO);
	}

	@Override
	public void updateOrder(OrderInfoDTO orderInfoDTO) {
		System.out.println("AdminServiceImpl - updateOrder");
		adminDAO.updateOrder(orderInfoDTO);
		
	}

	@Override
	public void deleteOrder(OrderInfoDTO orderInfoDTO) {
		System.out.println("AdminServiceImpl - deleteOrder");
		adminDAO.deleteOrder(orderInfoDTO);
	}

//5. 게시판 관리--------------------------------------------------------------------------------------------------------
	
	@Override
	public List<BoardDTO> filterBoard(PageDTO pageDTO) {
		System.out.println("AdminServiceImpl - filterBoard");
	      // pageSize, pageNum 담아옴
	      // currentPage startRow endRow 
	      int currentPage=Integer.parseInt(pageDTO.getPageNum());
	      int startRow=(currentPage-1)*pageDTO.getPageSize()+1;
	      int endRow=startRow+pageDTO.getPageSize()-1;
	      
	      pageDTO.setCurrentPage(currentPage);
	      pageDTO.setStartRow(startRow-1); // 디비 startRow-1
	      pageDTO.setEndRow(endRow);
		return adminDAO.filterBoard(pageDTO);
	}

	@Override
	public int getBoardCount(String categoryNum) {
		System.out.println("AdminServiceImpl - getBoardCount(categoryNum)");
		return adminDAO.getBoardCount(categoryNum);
	}

	@Override
	public BoardDTO getBoardContent(String selectedPost) {
		System.out.println("AdminServiceImpl - getBoardContent(selectedPost)");
		return adminDAO.getBoardContent(selectedPost);
	}

	@Override
	public String getCategoryName(String selectedPost) {
		System.out.println("AdminServiceImpl - gatCategoryName(selectedPost)");
		return adminDAO.getCategoryName(selectedPost);
	}

	@Override
	public void deleteBoard(String board_numberID) {
		System.out.println("AdminServiceImpl - deleterBoard(board_numberID)");
		adminDAO.deleteBoard(board_numberID);
		
	}

	

	


	

	

}
