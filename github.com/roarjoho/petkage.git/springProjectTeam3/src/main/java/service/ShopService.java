package service;

import java.util.List;

import domain.CartDTO;
import domain.OrderInfoDTO;
import domain.PageDTO;
import domain.ProductDTO;

public interface ShopService {

	public List<ProductDTO> shopListView(PageDTO pageDTO);
	
	public ProductDTO productDetailContent(String product_number);
	
	public void insertOrderInfo(OrderInfoDTO orderInfoDTO);
	
	public List<ProductDTO> productOrderbyList(ProductDTO productDTO);

	public Integer shopListViewCount(PageDTO pageDTO);
	
	public CartDTO cartCheck(CartDTO cartDTO);
	
	public void insertcart(CartDTO cartDTO);
	
	public List<ProductDTO> cartSelectList(CartDTO cartDTO);
//	List<CartDTO> cartDTO2=shopService.cartSelectList(cartDTO);
	
	public void deleteCart(String user_id);
	
	public void deleteCart2(CartDTO cartDTO);
	
	public void deleteCartALL(CartDTO cartDTO);
}
