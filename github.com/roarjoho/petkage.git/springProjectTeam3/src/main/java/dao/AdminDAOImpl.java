package dao;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import domain.BoardDTO;
import domain.OrderInfoDTO;
import domain.PageDTO;
import domain.ProductDTO;
import domain.SalesChartDTO;
import domain.UserDTO;

@Repository
public class AdminDAOImpl implements AdminDAO{
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace="mapper.AdminMapper";
	
	
	@Override
	public Timestamp getProductAddDate(ProductDTO productDTO) {
		System.out.println("AdminDAOImpl - getProductAddDate() 호출");
		return sqlSession.selectOne(namespace+".getProductAddDate", productDTO);
	}
	
//1. 매출관리------------------------------------------------------------------
	@Override
	public List<SalesChartDTO> getSalesChart() {
		System.out.println("AjaxDAOImpl - getSalesChart() ");
		return sqlSession.selectList(namespace+".getSalesChart");
	}

//2. 상품관리------------------------------------------------------------------
	@Override
	public void addProduct(ProductDTO productDTO) {
		System.out.println("AdminDAOImpl - addProduct() 호출");
		sqlSession.insert(namespace+".addProduct", productDTO);
	}

	@Override
	public void deleteProduct(ProductDTO productDTO) {
		System.out.println("AdminDAOImpl - deleteProduct() 호출");
		sqlSession.delete(namespace+".deleteProduct", productDTO);
		
	}

	@Override
	public void updateProduct(ProductDTO productDTO) {
		System.out.println("AdminDAOImpl - updateProduct() 호출");
		sqlSession.delete(namespace+".updateProduct", productDTO);
	}


	@Override
	public List<ProductDTO> getProductList(PageDTO pageDTO) {
		System.out.println("AdminDAOImpl - getProductList() 호출");
		return sqlSession.selectList(namespace+".getProductList", pageDTO);
	}
	
	@Override
	public ProductDTO getProductDetail(ProductDTO productDTO) {
		System.out.println("AdminDAOImpl - getProductDetail() 호출");
		return sqlSession.selectOne(namespace+".getProductDetail", productDTO);
	}

	@Override
	public int getProductCount() {
		System.out.println("AdminDAOImpl - getProductCount() 호출");
		return sqlSession.selectOne(namespace+".getProductCount");
	}
	
//3. 회원관리------------------------------------------------------------------
	@Override
	public List<UserDTO> getUserList(PageDTO pageDTO) {
		System.out.println("AdminDAOImpl - getUserList()호출");
		return sqlSession.selectList(namespace+".getUserList", pageDTO);
	}

	@Override
	public int getUserCount() {
		System.out.println("AdminDAOImpl - getUserCount() 호출");
		return sqlSession.selectOne(namespace+".getUserCount");
	}

	@Override
	public void updateUserInfoPro(UserDTO userDTO) {
		System.out.println("AdminDAOImpl - updateUser() 호출");
		sqlSession.selectOne(namespace+".updateUserInfoPro", userDTO);
		
	}
	@Override
	public void deleteUser(String id) {
		System.out.println("AdminDAOImpl - deleteUser() 호출");
		sqlSession.delete(namespace + ".deleteUser", id);
	}

	@Override
	public UserDTO getUserDetail(UserDTO userDTO) {
		System.out.println("AdminDAOImpl - getUserDetail(userDTO) 호출");
		return sqlSession.selectOne(namespace + ".getUserDetail", userDTO);
	}
	
	@Override
	public UserDTO getUserDetail(String user_id) {
		System.out.println("AdminDAOImpl - getUserDetail(user_id) 호출");
		return sqlSession.selectOne(namespace + ".getUserDetail", user_id);
	}


//4. 주문관리------------------------------------------------------------------
	@Override
	public List<OrderInfoDTO> getOrderList(PageDTO pageDTO) {
		System.out.println("AdminDAOImpl - getOrderList() 호출");
		return sqlSession.selectList(namespace+".getOrderList", pageDTO);
	}	

	@Override
	public int getOrderCount() {
		System.out.println("AdminDAOImpl - getOrderCount() 호출");
		return sqlSession.selectOne(namespace+".getOrderCount");
	}

	@Override
	public OrderInfoDTO getOrderDetail(OrderInfoDTO orderInfoDTO) {
		System.out.println("AdminDAOImpl - getOrderDetail() 호출");
		return sqlSession.selectOne(namespace + ".getOrderDetail", orderInfoDTO);
	}

	@Override
	public void updateOrder(OrderInfoDTO orderInfoDTO) {
		System.out.println("AdminDAOImpl - updateOrder() 호출");
		sqlSession.selectOne(namespace+".updateOrder", orderInfoDTO);
		
	}

	@Override
	public void deleteOrder(OrderInfoDTO orderInfoDTO) {
		System.out.println("AdminDAOImpl - deleteOrder() 호출");
		sqlSession.delete(namespace + ".deleteOrder", orderInfoDTO);		
	}

//3. 게시판 관리------------------------------------------------------------------
	
	@Override
	public List<BoardDTO> getAllBoard(PageDTO pageDTO) {
		System.out.println("AdminDAOImpl - getAllBoard");
		return sqlSession.selectList(namespace+".getAllBoard", pageDTO);
	}
	
	@Override
	public List<BoardDTO> filterBoard(PageDTO pageDTO) {
		System.out.println("AdminDAOImpl - filterBoard() 호출");
		return sqlSession.selectList(namespace+".filterBoard", pageDTO);
	}
	@Override
	public int getAllBoardCount() {
		System.out.println("AdminDAOImpl - getAllBoardCount()");
		return sqlSession.selectOne(namespace+".getAllBoardCount");
	}

	@Override
	public int getBoardCount(String categoryNum) {
		System.out.println("AdminDAOImpl - getBoardCount(categoryNum) 호출");
		return sqlSession.selectOne(namespace+".getBoardCount",categoryNum);
	}

	@Override
	public BoardDTO getBoardContent(String selectedPost) {
		System.out.println("AdminDAOImpl - getBoardContent(selectedPost)");
		return sqlSession.selectOne(namespace + ".getBoardContent", selectedPost);
	}

	@Override
	public String getCategoryName(String selectedPost) {
		System.out.println("AdminDAOImpl - getCategoryName(selectedPost)");
		return sqlSession.selectOne(namespace + ".getCategoryName", selectedPost);
	}

	@Override
	public void deleteBoard(String board_numberID) {
		System.out.println("AdminDAOImpl - deleteBoard");
		sqlSession.delete(namespace + ".deleteBoard", board_numberID);
	}



	



	

}
