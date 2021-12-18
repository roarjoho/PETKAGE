package controller;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import domain.BoardCategoryDTO;
import domain.BoardDTO;
import domain.OrderInfoDTO;
import domain.PageDTO;
import domain.ProductDTO;
import domain.SalesChartDTO;
import domain.UserDTO;
import service.AdminService;

@Controller
public class AdminController {
	
@Inject
private AdminService adminService;	

//이미지 업로드시 파일경로
@Resource(name = "uploadPath")
private String uploadPath;

//1. 관리자 계정--------------------------------------------------------------------------------------------------------------------------
	//1-1. 관리자계정인지 검사한 후  관리자페이지로 접근
	@RequestMapping("/admin/index")
	public String adminMain(HttpSession session) {
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {
			System.out.println("AdminController - adminMain()");
			return "admin/index";
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}
	}
	
	//1-2. 관리자 로그아웃처리
		@RequestMapping("/admin/logout")
		public String adminLogout(HttpSession session) {
			System.out.println("AdminController - adminLogout()");
			session.invalidate();
			return "admin/logout";
		}
	//2. 404에러 페이지에서 홈페이지로 돌아가는 경우.
		@RequestMapping("/backToMain")
		public String backToMain(HttpSession session) {
			String sessionId = (String)session.getAttribute("id");
			if(sessionId != "id") {
				session.invalidate();
			}
			return "redirect:/";
		}
		
//2. 매출관리--------------------------------------------------------------------------------------------------------------------------
	
	//2-1. 매출현황 탭으로 이동
	@RequestMapping("/admin/sellStatus")
	public String sellStatus(HttpSession session) {
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {
			System.out.println("AdminController -sellStatus()");
			return "admin/sellStatus";
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}

	}	
	
	//2-2. 일일 매출관리 차트
	@RequestMapping(value = "/admin/salesChart", method = RequestMethod.GET)
	public ResponseEntity<List<SalesChartDTO>> charData(HttpServletRequest request) {
		
		List<SalesChartDTO> salesChart = adminService.getSalesChart();
				
		ResponseEntity<List<SalesChartDTO>> entity = new ResponseEntity<List<SalesChartDTO>>(salesChart,HttpStatus.OK);
		return entity;
	}
	
	
//3. 주문관리--------------------------------------------------------------------------------------------------------------------------
	
	//3-1. 주문목록으로 이동 & 주문목록 데이터 띄우기
	@RequestMapping(value = "/admin/orderList", method = RequestMethod.GET)
	public String orderList(HttpServletRequest request, Model model,HttpSession session) {
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {

			System.out.println("AdminController - orderList()");
			int pageSize = 10;
			String pageNum = request.getParameter("pageNum");
			if(pageNum == null) {
				pageNum = "1";
			}
			
			PageDTO pageDTO = new PageDTO();
			pageDTO.setPageSize(pageSize);
			pageDTO.setPageNum(pageNum);
			
			List<OrderInfoDTO> orderList = adminService.getOrderList(pageDTO);
			int count = adminService.getOrderCount();
			pageDTO.setCount(count);	
			
			model.addAttribute("pageDTO", pageDTO);
			model.addAttribute("orderList", orderList);
			
			return "admin/orderList";
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}		
	}
	
	//3-2. 주문목록의 각 행 클릭시 세부 주문내역 조회창으로 이동 & 주문 상세내역 띄우기
	@RequestMapping("/admin/orderInfo")
	public String orderInfo(HttpSession session, HttpServletRequest httpServletRequest, Model model, OrderInfoDTO orderInfoDTO) {	
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {
			System.out.println("AdminController - orderInfo()");
			orderInfoDTO.setOrderInfo_number(httpServletRequest.getParameter("orderInfo_number"));
			OrderInfoDTO orderDetail =  adminService.getOrderDetail(orderInfoDTO);		
			model.addAttribute("orderDetail", orderDetail);
			
			return "admin/orderInfo";
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}	
	}
	
	//3-3-1. 주문수정폼으로 이동
	@RequestMapping("/admin/updateOrder")
	public String updateOrder(HttpSession session, HttpServletRequest httpServletRequest, Model model, OrderInfoDTO orderInfoDTO) {
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {
			System.out.println("AdminController - updateOrder()");
			orderInfoDTO.setOrderInfo_number(httpServletRequest.getParameter("orderInfo_number"));	
			OrderInfoDTO orderDetail =  adminService.getOrderDetail(orderInfoDTO);
			model.addAttribute("orderDetail", orderDetail);
			
			return "admin/updateOrder";	
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}
	}
	
	//3-3-2. 주문수정 처리
	@RequestMapping(value = "/admin/updateOrderPro", method = RequestMethod.POST)
	public String updateOrderPro(OrderInfoDTO orderInfoDTO, HttpServletRequest httpServletRequest,HttpSession session){
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {
			System.out.println("AdminController - updateOrderPro()");
			//System.out.println(httpServletRequest.getParameter("orderInfo_number"));
			//DTO 담기
			orderInfoDTO.setOrderInfo_status(httpServletRequest.getParameter("orderInfo_status"));
			orderInfoDTO.setUser_id(httpServletRequest.getParameter("user_id"));		
			orderInfoDTO.setOrderInfo_receiverName(httpServletRequest.getParameter("orderInfo_receiverName"));
			orderInfoDTO.setOrderInfo_receiverPhone(httpServletRequest.getParameter("orderInfo_receiverPhone"));
			orderInfoDTO.setOrderInfo_address1(httpServletRequest.getParameter("orderInfo_address1"));
			orderInfoDTO.setOrderInfo_address2(httpServletRequest.getParameter("orderInfo_address2"));
			orderInfoDTO.setOrderInfo_address3(httpServletRequest.getParameter("orderInfo_address3"));
			
			adminService.updateOrder(orderInfoDTO);
			
			return "redirect:/admin/orderList";
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}		
	}
	//3-4. 주문삭제 처리
	@RequestMapping(value = "/admin/deleteOrderPro", method= RequestMethod.GET)
	public String deleteOrderPro(HttpServletRequest httpServletRequest, OrderInfoDTO orderInfoDTO,HttpSession session) throws IOException {
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {
			System.out.println("AdminController - deleteOrderPro()");
			System.out.println(httpServletRequest.getParameter("orderInfo_number")+"삭제??????");
			orderInfoDTO.setOrderInfo_number(httpServletRequest.getParameter("orderInfo_number"));	
			adminService.deleteOrder(orderInfoDTO);
			
			return "redirect:/admin/orderList";
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}
	}	
	
	
//4. 상품관리--------------------------------------------------------------------------------------------------------------------------
	//4-1. 상품목록으로 이동 & 상품데이터 조회해서 띄우기
	@RequestMapping(value = "/admin/productList", method = RequestMethod.GET)
	public String productList(HttpServletRequest request, Model model,HttpSession session) {
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {
			System.out.println("AdminController - productList()");
			int pageSize = 10;
			String pageNum = request.getParameter("pageNum");
			if(pageNum == null) {
				pageNum = "1";
			}
			PageDTO pageDTO = new PageDTO();
			pageDTO.setPageSize(pageSize);
			pageDTO.setPageNum(pageNum);
			
			List<ProductDTO> productList = adminService.getProductList(pageDTO);
			int count = adminService.getProductCount();
			pageDTO.setCount(count);
			
			model.addAttribute("pageDTO", pageDTO);
			model.addAttribute("productList", productList);
			
			return "admin/productList";
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}	
	}
	
	//4-2. 상품상세정보 페이지로 이동
	@RequestMapping(value="/admin/productDetail", method = RequestMethod.GET)
	public String productDetail(HttpSession session,HttpServletRequest httpServletRequest, Model model, ProductDTO productDTO) {
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {
			System.out.println("AdminController - productDetail()");
			productDTO.setProduct_number(httpServletRequest.getParameter("product_number"));
			ProductDTO productDTODetail =  adminService.getProductDetail(productDTO);		
			model.addAttribute("productDTODetail", productDTODetail);
			
			return "admin/productDetail";			
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}
	}
	
	//4-3-1. 상품추가 폼으로 이동
	@RequestMapping("/admin/addProduct")
	public String addProduct(HttpSession session) {
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {
			System.out.println("AdminController - addProduct()");
			
			return "admin/addProduct";
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}
	}
	
	//4-3-2. 상품추가 처리
	@RequestMapping(value="/admin/addProductPro", method = RequestMethod.POST)
	public String addProductPro(ProductDTO productDTO, HttpSession session, HttpServletRequest httpServletRequest, MultipartFile file) throws IOException {		
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {
			System.out.println("AdminController - addProductPro()");
			
			//productDTO 데이터 저장
			//productDTO.setProduct_number(httpServletRequest.getParameter("product_number"));
			productDTO.setProduct_name(httpServletRequest.getParameter("product_name"));
			productDTO.setProductCategory_number(httpServletRequest.getParameter("productCategory_number"));				
			productDTO.setProduct_price(httpServletRequest.getParameter("product_price"));		
			productDTO.setProduct_stock(httpServletRequest.getParameter("product_stock"));
			productDTO.setProduct_desc(httpServletRequest.getParameter("product_desc"));
			productDTO.setProduct_date(new Timestamp(System.currentTimeMillis())); 
			//사진 업로드			
			UUID uid = UUID.randomUUID();
			String fileName = uid.toString()+"_"+file.getOriginalFilename();
			//System.out.println(fileName);
			File targetFile = new File(uploadPath, fileName);
			FileCopyUtils.copy(file.getBytes(), targetFile);
			productDTO.setProduct_imagePath(fileName);
			
			adminService.addProduct(productDTO);
			
			return "redirect:/admin/productList";
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}
	}
	
	//4-4-1. 상품 수정페이지로 이동
	@RequestMapping("/admin/updateProduct")
	public String updateProductDetail(HttpSession session, HttpServletRequest httpServletRequest, Model model, ProductDTO productDTO) {
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {
			System.out.println("AdminController - updateProductDetail()");
			productDTO.setProduct_number(httpServletRequest.getParameter("product_number"));	
			ProductDTO productDTODetail =  adminService.getProductDetail(productDTO);
			model.addAttribute("productDTODetail", productDTODetail);
			
			return "admin/updateProduct";
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}
	}
	
	//4-4-2. 상품수정처리
	@RequestMapping(value = "/admin/updateProductPro", method = RequestMethod.POST)
	public String productUpdatePro(ProductDTO productDTO, HttpServletRequest httpServletRequest, MultipartFile file) throws IOException{
		System.out.println("AdminController - updateProductPro()");
		
		productDTO.setProduct_number(httpServletRequest.getParameter("product_number"));
		//수정 폼에서 수정한 값 가져와서 변수에 저장함
		productDTO.setProductCategory_number(httpServletRequest.getParameter("productCategory_number"));
		productDTO.setProduct_name(httpServletRequest.getParameter("product_name"));
		productDTO.setProduct_desc(httpServletRequest.getParameter("product_desc"));				
		productDTO.setProduct_price(httpServletRequest.getParameter("product_price"));		
		productDTO.setProduct_stock(httpServletRequest.getParameter("product_stock"));
		//변경할 이미지 업로드
		UUID uid = UUID.randomUUID();
		String fileName=uid.toString()+"_"+file.getOriginalFilename();
		System.out.println(fileName);
		File targetFile=new File(uploadPath,fileName);
		FileCopyUtils.copy(file.getBytes(), targetFile);
		
		productDTO.setProduct_imagePath(fileName);
		adminService.updateProduct(productDTO);
		
		return "redirect:/admin/productList";
	}
		
	//4-5. 상품삭제처리
	@RequestMapping(value = "/admin/deleteProductPro", method= RequestMethod.GET)
	public String deleteProductPro(HttpSession session,HttpServletRequest httpServletRequest, ProductDTO productDTO) throws IOException {
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {
			System.out.println("AdminController - deleteProductPro()");
			productDTO.setProduct_number(httpServletRequest.getParameter("product_number"));		
			//String productNum = httpServletRequest.getParameter("product_number");
			//System.out.println("상품 번호: " + productDTO.getProduct_number() + " 삭제");
			adminService.deleteProduct(productDTO);
			
			return "redirect:/admin/productList";
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}
	}	
	
//5. 회원 관리--------------------------------------------------------------------------------------------------------------------------
	//5-1. 회원리스트로 이동 & 회원목록띄우기
	@RequestMapping(value = "/admin/userList", method = RequestMethod.GET)
	public String userList(HttpSession session,HttpServletRequest request, Model model) {
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {
			System.out.println("AdminController - userList()");	
			int pageSize = 10;
			String pageNum = request.getParameter("pageNum");
			if(pageNum == null) {
				pageNum = "1";
			}		
			PageDTO pageDTO = new PageDTO();
			pageDTO.setPageSize(pageSize);
			pageDTO.setPageNum(pageNum);
			List<UserDTO> userList = adminService.getUserList(pageDTO);
			int count = adminService.getUserCount();
			pageDTO.setCount(count);
			
			model.addAttribute("pageDTO", pageDTO);
			model.addAttribute("userList", userList);	
			
			return "admin/userList";
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}
	}					
	
	//5-2. 회원리스트 중 하나 클릭시 회원 상세정보 조회페이지로 이동
	@RequestMapping("/admin/userInfo")
	public String userInfo(HttpSession session,HttpServletRequest httpServletRequest, Model model, UserDTO userDTO) {
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {
			System.out.println("AdminController - userInfo()");
			userDTO.setUser_id(httpServletRequest.getParameter("user_id"));
			UserDTO userDTODetail = adminService.getUserDetail(userDTO);
			model.addAttribute("userDTODetail", userDTODetail);
			
			return "admin/userInfo";
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}
	}
	
	//5-3-1. 회원 정보수정폼으로 이동
	@RequestMapping("/admin/updateUser")
	public String updateUser(HttpSession session,HttpServletRequest httpServletRequest, Model model, UserDTO userDTO) {
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {
			System.out.println("AdminController - updateUser()");
			userDTO.setUser_id(httpServletRequest.getParameter("user_id"));
			UserDTO userDTODetail =  adminService.getUserDetail(userDTO);
			model.addAttribute("userDTODetail", userDTODetail);	
			
			return "admin/updateUser";
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}
	}
		
		
	//5-3-2. 회원정보 수정 처리
	@RequestMapping(value = "/admin/updateUserInfoPro", method = RequestMethod.POST)
	public String updateUserPro(UserDTO userDTO, HttpServletRequest httpServletRequest){
		System.out.println("AdminController - updateUserPro()");
		String user_id = httpServletRequest.getParameter("user_id");
		System.out.println(user_id);				
		//UserDTO updatedUserDTO = adminService.getUserDetail(user_id);			
		userDTO.setUser_id(httpServletRequest.getParameter("user_id"));		
		userDTO.setUser_name(httpServletRequest.getParameter("user_name"));
		userDTO.setUser_phone(httpServletRequest.getParameter("user_phone"));
		userDTO.setUser_email(httpServletRequest.getParameter("user_email"));
		
		adminService.updateUserInfoPro(userDTO);
		
		return "redirect:/admin/userList";
	}
	
	//5-4. 회원삭제 처리
	@RequestMapping(value = "/admin/deleteUserPro", method = RequestMethod.GET)
	public String deleteUserPro(HttpSession session, HttpServletRequest httpServletRequest, Model model, UserDTO userDTO) throws IOException {
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {
			System.out.println("AdminController - deleteUserPro()");
			String user_id = httpServletRequest.getParameter("user_id");
			System.out.println(user_id +"회원 삭제");
			adminService.deleteUser(user_id);
			
			return "redirect:/admin/userList";		
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}
	}
	
//6. 게시판 관리--------------------------------------------------------------------------------------------------------------------------
	
	//게시판 이동 - 카테고리 선택X인 상태 => 카테고리 선택 유도
		@RequestMapping("/admin/boardList")
		public String boardList(HttpSession session) {
			String adminSession = (String)session.getAttribute("id");
			if(adminSession == "admin") {
				System.out.println("AdminController - boardList()");
				
				return "admin/boardList";
			}else {
				System.out.println("관리자 계정 아님");
				return "admin/404";
			}
		}
	
	//6-1-1. 후기게시판 이동 및 데이터띄우기
	@RequestMapping("/admin/boardList1")
	public String boardList1(HttpServletRequest request, Model model, HttpSession session) {
		System.out.println("AdminController - boardList1()");
		
		int pageSize = 10;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum = "1";
		}		
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);		
		pageDTO.setBoardCategory_number("1");
		int count = adminService.getBoardCount(pageDTO.getBoardCategory_number());
		pageDTO.setCount(count);
		
		List<BoardDTO> filterBoard = adminService.filterBoard(pageDTO);
		model.addAttribute("pageDTO", pageDTO);
		model.addAttribute("filterBoard", filterBoard);	
		
		return "admin/boardList1";
	}
	
	//6-1-2. 정보공유게시판 이동 및 데이터띄우기
	@RequestMapping("/admin/boardList2")
	public String boardList2(HttpServletRequest request, Model model) {	
		System.out.println("AdminController - boardList2()");	
		int pageSize = 10;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum = "1";
		}		
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);		
		pageDTO.setBoardCategory_number("2");
		int count = adminService.getBoardCount(pageDTO.getBoardCategory_number());
		pageDTO.setCount(count);
		
		List<BoardDTO> filterBoard = adminService.filterBoard(pageDTO);
		model.addAttribute("pageDTO", pageDTO);
		model.addAttribute("filterBoard", filterBoard);	
		
		return "admin/boardList2";
	}
	
	//6-1-3. 사진(자랑)게시판 이동 및 데이터띄우기
	@RequestMapping("/admin/boardList3")
	public String boardList3(HttpServletRequest request, Model model) {
		System.out.println("AdminController - boardList3()");
		int pageSize = 10;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum = "1";
		}		
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);		
		pageDTO.setBoardCategory_number("3");
		int count = adminService.getBoardCount(pageDTO.getBoardCategory_number());
		pageDTO.setCount(count);
		
		List<BoardDTO> filterBoard = adminService.filterBoard(pageDTO);
		model.addAttribute("pageDTO", pageDTO);
		model.addAttribute("filterBoard", filterBoard);	
		
		return "admin/boardList3";
	}
	
	//6-1-4. 1:1문의게시판 이동 및 데이터띄우기
	@RequestMapping("/admin/boardList4")
	public String boardList4(HttpServletRequest request, Model model) {
		System.out.println("AdminController - boardList4()");
		int pageSize = 10;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum = "1";
		}		
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);		
		pageDTO.setBoardCategory_number("4");
		int count = adminService.getBoardCount(pageDTO.getBoardCategory_number());
		pageDTO.setCount(count);
		
		List<BoardDTO> filterBoard = adminService.filterBoard(pageDTO);
		model.addAttribute("pageDTO", pageDTO);
		model.addAttribute("filterBoard", filterBoard);	
		
		return "admin/boardList4";
	}

	//6-2. 게시글 하나 클릭시 게시글 상세보기	
	@RequestMapping("/admin/boardContent")
	public String boardContent(HttpServletRequest httpServletRequest, Model model, BoardDTO boardDTO) {
		System.out.println("AdminController - boardContent()");
		
		String selectedPost = httpServletRequest.getParameter("board_numberID");
		BoardDTO boardContentDTO =  adminService.getBoardContent(selectedPost);		
		model.addAttribute("boardContentDTO", boardContentDTO);	

		//해당 게시글의 board_numberID를 활용하여 카테고리 이름을 구하기
		String categoryName = adminService.getCategoryName(selectedPost);
		model.addAttribute("categoryName", categoryName);	
		
		return "admin/boardContent";
	}

	//6-3. 게시판 글 삭제처리
	@RequestMapping("/admin/deleteBoardPro")
	public String deleteBoardPro(HttpSession session, BoardDTO boardDTO, HttpServletRequest request) throws IOException {
		String adminSession = (String)session.getAttribute("id");
		if(adminSession == "admin") {
			System.out.println("AdminController - deleteBoardPro()");
			String board_numberID = request.getParameter("board_numberID");
			System.out.println(board_numberID + "삭제");
			adminService.deleteBoard(board_numberID);
			
			String boardCategory_number = request.getParameter("boardCategory_number");
			//System.out.println(boardCategory_number);
			
			return "redirect:/admin/boardList"+boardCategory_number;
		}else {
			System.out.println("관리자 계정 아님");
			return "admin/404";
		}
	}
	
}
