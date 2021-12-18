package controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import domain.CartDTO;
import domain.OrderInfoDTO;
import domain.PageDTO;
import domain.ProductDTO;
import service.ShopService;

@Controller
public class ShopBjhController {
	
	// 카카오페이 프로세스에서 결제완료 페이지로 이동할때 주문정보 값을 넘기기위해 static변수를 사용함
	static String sessionScopeId;
	static String product_number;
	static String zip;
	static String address;
	static String address2;
	static String product_name;
	static String product_stock;
	static String priceTotal;
	static String name;
	static String phone;
	static String getCart;
	
	@Inject
	private ShopService shopService;
	
	// 샵 -> 상품 목록 페이지로 이동(강아지 or 고양이 카테고리)
	@RequestMapping("/shop/shop_test")
	public String shop(HttpServletRequest request, Model model, ProductDTO productDTO) {	
		
		// 한화면에 보여줄 글개수  10개 설정
		 int pageSize=9;
		 
		 //페이지 번호 가져오기 
		 String pageNum=request.getParameter("pageNum");
		 //페이지번호가 없으면 -> 1
		 if(pageNum==null){
		 	pageNum="1";
		 }
		
		 PageDTO pageDTO=new PageDTO();
		 pageDTO.setPageSize(pageSize);
		 pageDTO.setPageNum(pageNum);
		 //
		
		pageDTO.setProductCategory_number(request.getParameter("productCategory_number"));
		System.out.println("여기부터");
		
		List<ProductDTO> productDTO2 = shopService.shopListView(pageDTO);
		model.addAttribute("shopListView", productDTO2);
		
		Integer count = shopService.shopListViewCount(pageDTO);
		pageDTO.setCount(count);
		System.out.println(pageDTO.getCount());
		model.addAttribute("pageDTO",pageDTO);
		
			return "shop/shop_test";					
		
	}
	
	// 상품 상페이지로 이동
	@RequestMapping("/shop/product")
	public String product(HttpServletRequest request, Model model, ProductDTO productDTO) {
		
		String product_number = request.getParameter("product_number");
		System.out.println("상품넘버");
		System.out.println(product_number);
		
		productDTO = shopService.productDetailContent(product_number);
		model.addAttribute("productDetailContent", productDTO);
		
		return "shop/product";
	}
	
	// 상세상품페이지에서 정보 값을 가지고 주문페이지로 이동
	@RequestMapping("/shop/check-out")
	public String check_out(HttpServletRequest request, Model model, ProductDTO productDTO){
		String product_number = request.getParameter("product_number");
		String product_name = request.getParameter("product_name");
		int product_stock = Integer.parseInt(request.getParameter("product_stock"));
		int product_price = Integer.parseInt(request.getParameter("product_price"));
		System.out.println("상품넘버!");
		
		// 수량이 0으로 넘어올 경우 1
		if(product_stock==0) {
			product_stock=1;
		}
		product_price*=product_stock;
		
		int priceTotal = product_price;
		
		model.addAttribute("product_number", product_number);
		model.addAttribute("product_name", product_name);
		model.addAttribute("product_stock", product_stock);
		model.addAttribute("product_price", product_price);
		model.addAttribute("priceTotal", priceTotal);
		
		return "shop/check-out";
	}
	
	// 장바구니에서 결제하기 클릭 시
	@RequestMapping("/shop/check-out2")
	public String check_out2(Model model, HttpSession session, CartDTO cartDTO){
		
		cartDTO.setUser_id((String)session.getAttribute("id"));
		List<ProductDTO> productDTO=shopService.cartSelectList(cartDTO);
		model.addAttribute("cartSelectList", productDTO);
		
		return "shop/check-out2";
	}
	
	// 상품 주문페이지로 이동
	@RequestMapping("/shop/addressSearch")
	public String addressSearch(){
		return "shop/addressSearch";
	}
	
	// 카카오페이 결제 프로세스
	@RequestMapping("/kakaopay")
	@ResponseBody
	public String kakaopay(HttpServletRequest httpServletRequest, OrderInfoDTO orderInfoDTO) {
		System.out.println("배송정보 insert");
		
		// 카카오페이 프로세스에서 결제완료 페이지로 이동할때 주문정보 값을 넘기기위해 static 변수에 정보를 담음
		this.sessionScopeId = httpServletRequest.getParameter("sessionScopeId");
		this.product_number = httpServletRequest.getParameter("product_number");
		this.zip = httpServletRequest.getParameter("zip");
		this.address = httpServletRequest.getParameter("address");
		this.address2 = httpServletRequest.getParameter("address2");
		this.product_name = httpServletRequest.getParameter("product_name");
		this.product_stock = httpServletRequest.getParameter("product_stock");
		this.priceTotal = httpServletRequest.getParameter("priceTotal");
		this.name = httpServletRequest.getParameter("name");
		this.phone = httpServletRequest.getParameter("phone");
		this.getCart = httpServletRequest.getParameter("getCart");
		
		System.out.println(sessionScopeId);
		System.out.println(product_number);
		System.out.println(zip);
		System.out.println(address);
		System.out.println(address2);
		System.out.println(product_name);
		System.out.println(product_stock);
		System.out.println(priceTotal);
		System.out.println(name);
		System.out.println(phone);
		
		System.out.println("끝");
		
		
		System.out.println("카카오페이 실행");
		try {
			// 보내는 부분
			URL address = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection connection = (HttpURLConnection) address.openConnection(); // 서버연결
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Authorization", "KakaoAK 058b950d48df74c9cf15b1a91b3ec87d"); // 어드민 키
			connection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			connection.setDoOutput(true); // 서버한테 전달할게 있는지 없는지
			
			String parameter = "cid=TC0ONETIME" // 가맹점 코드
					+ "&partner_order_id=partner_order_id" // 가맹점 주문번호
					+ "&partner_user_id=partner_user_id" // 가맹점 회원 id
					+ "&item_name="+httpServletRequest.getParameter("product_name") // 상품명
					+ "&quantity="+httpServletRequest.getParameter("product_stock") // 상품 수량
					+ "&total_amount="+httpServletRequest.getParameter("priceTotal") // 총 금액
					+ "&vat_amount=200" // 부가세
					+ "&tax_free_amount=0" // 상품 비과세 금액
					+ "&approval_url=http://localhost:8484/pjt/shop/paymentFinishes" // 결제 성공 시 완료페이지로 이동 (현재 완료페이지는 시간 상 미구성)
					+ "&fail_url=http://localhost:8484/pjt" // 결제 실패 시
					+ "&cancel_url=http://localhost:8484/pjt"; // 결제 취소 시
			OutputStream send = connection.getOutputStream(); // 이제 뭔가를 를 줄 수 있다.
			DataOutputStream dataSend = new DataOutputStream(send); // 이제 데이터를 줄 수 있다.
			dataSend.writeBytes(parameter); // OutputStream은 데이터를 바이트 형식으로 주고 받기로 약속되어 있다. (형변환)
			dataSend.close(); // flush가 자동으로 호출이 되고 닫는다. (보내고 비우고 닫다)
			int result = connection.getResponseCode(); // 전송 잘 됐나 안됐나 번호를 받는다.
			InputStream receive; // 받다
			
			if(result == 200) {
				receive = connection.getInputStream();
			}else {
				receive = connection.getErrorStream(); 
			}
			// 읽는 부분
			InputStreamReader read = new InputStreamReader(receive); // 받은걸 읽는다.
			BufferedReader change = new BufferedReader(read); // 바이트를 읽기 위해 형변환 버퍼리더는 실제로 형변환을 위해 존제하는 클레스는 아니다.
			// 받는 부분
			return change.readLine(); // 문자열로 형변환을 알아서 해주고 찍어낸다 그리고 본인은 비워진다.
			
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "";
	}
	
	// 카카오페이 결제 완료 시 해당 페이지로 이동함 -> 여기로 넘어오면 결제정보 INSERT 실시
	@RequestMapping("/shop/paymentFinishes")
	public String paymentFinishes(OrderInfoDTO orderInfoDTO, Model model, HttpSession session) {
		
		// 카카오페이 결제 프로세스에서 static 변수에 담은 값을 가져옴
		orderInfoDTO.setUser_id(sessionScopeId);
		orderInfoDTO.setProduct_number(product_number);
		orderInfoDTO.setOrderInfo_address1(zip);
		orderInfoDTO.setOrderInfo_address2(address);
		orderInfoDTO.setOrderInfo_address3(address2);		
		orderInfoDTO.setOrderInfo_productName(product_name);
		orderInfoDTO.setOrderInfo_count(product_stock);
		orderInfoDTO.setOrderInfo_price(priceTotal);
		orderInfoDTO.setOrderInfo_receiverName(name);
		orderInfoDTO.setOrderInfo_receiverPhone(phone);

		model.addAttribute("sessionScopeId", sessionScopeId);
		model.addAttribute("zip", zip);
		model.addAttribute("address", address);
		model.addAttribute("address2", address2);
		model.addAttribute("product_name", product_name);
		model.addAttribute("priceTotal", priceTotal);
		model.addAttribute("name", name);
		model.addAttribute("phone", phone);
		
		shopService.insertOrderInfo(orderInfoDTO);
		
		String user_id = (String)session.getAttribute("id");
		
		if(getCart != null) {
			shopService.deleteCart(user_id);
		}
		return "shop/paymentFinishes";
	}
	
	
	// 상품 목록 최신화 하기 최신순/가격 높은 순/가격 낮은 순
	@RequestMapping(value = "/shop/shopOrderby", method = RequestMethod.GET)
	public ResponseEntity<List<ProductDTO>> shopOrderby(ProductDTO productDTO, HttpServletRequest request){
		
		productDTO.setProductCategory_number(request.getParameter("productCategory_number"));
		
		String sorting = request.getParameter("sorting");
		
		if(sorting.equals("product_date")) {
			productDTO.setOrderby("product_date");
			productDTO.setAscdesc("desc");
		}else if(sorting.equals("product_priceDesc")) {
			productDTO.setOrderby("product_price");
			productDTO.setAscdesc("desc");
		}else if(sorting.equals("product_priceAsc")) {
			productDTO.setOrderby("product_price");
			productDTO.setAscdesc("asc");
		}
		System.out.println("----------");
		System.out.println(productDTO.getProductCategory_number());
		System.out.println(productDTO.getOrderby());
		System.out.println(productDTO.getAscdesc());
		System.out.println("----------");
		
		List<ProductDTO> productList=shopService.productOrderbyList(productDTO);
		
		System.out.println(productList.get(0).getProduct_number());
		System.out.println(productList.get(1).getProduct_number());
		
		ResponseEntity<List<ProductDTO>> entity=new ResponseEntity<List<ProductDTO>>(productList, HttpStatus.OK);
		
		return entity ;
	}
	
	// 제품 상세페이지에서 장바구니 추가하기 클릭 시 insert
	@RequestMapping("/shop/insertCart")
	public ResponseEntity<String> insertCart(HttpServletRequest request, CartDTO cartDTO, HttpSession session) {
		
		String result="";
		
		cartDTO.setUser_id((String)session.getAttribute("id"));
		cartDTO.setProduct_number(request.getParameter("product_number"));
		
		String stock = request.getParameter("product_stock");
		
		if(stock.equals("0")) {
			stock = "1";
		}
		cartDTO.setCart_count(stock);
		System.out.println(cartDTO.getUser_id());
		System.out.println(cartDTO.getProduct_number());
		
		CartDTO cartDTO2 = shopService.cartCheck(cartDTO);
		if(cartDTO2==null) {
			shopService.insertcart(cartDTO);
			result="success";
		}else if(cartDTO2!=null) {
			result="fail";
		}
		
		ResponseEntity<String> entity = new ResponseEntity<String>(result, HttpStatus.OK);
		
		return entity;
	}
	
	// 장바구니 페이지로 이동
	@RequestMapping("/shop/shoppingCart")
	public String shoppingCart(CartDTO cartDTO, Model model, HttpSession session) {
		
		cartDTO.setUser_id((String)session.getAttribute("id"));
		if(cartDTO.getUser_id()==null) {
			return "user/login";
		}
		
		List<ProductDTO> productDTO=shopService.cartSelectList(cartDTO);
		model.addAttribute("cartSelectList", productDTO);
		
		return "shop/shopping-cart";
	}
	
	// 장바구니 물품 하나씩 삭제
	@RequestMapping("/shop/cartDeleteBtn")
	public String cartDeleteBtn(HttpServletRequest request, CartDTO cartDTO, HttpSession session) {
		cartDTO.setUser_id((String)session.getAttribute("id"));
		cartDTO.setProduct_number(request.getParameter("product_number"));
		System.out.println(cartDTO.getProduct_number());
		System.out.println("카트 물품 삭제");
		
		if(cartDTO.getProduct_number() != null) {
			shopService.deleteCart2(cartDTO);
		}else {
			shopService.deleteCartALL(cartDTO);
		}
		
		return "redirect:/shop/shoppingCart";
	}
}
