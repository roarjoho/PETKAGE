package service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import dao.ShopDAO;
import domain.CartDTO;
import domain.OrderInfoDTO;
import domain.PageDTO;
import domain.ProductDTO;

@Service
public class ShopServiceImpl implements ShopService{
	
	@Inject
	private ShopDAO shopDAO;

	@Override
	public ProductDTO productDetailContent(String product_number) {
		return shopDAO.productDetailContent(product_number);
	}

	@Override
	public void insertOrderInfo(OrderInfoDTO orderInfoDTO) {
		shopDAO.insertOrderInfo(orderInfoDTO);
		
	}

	@Override
	public List<ProductDTO> productOrderbyList(ProductDTO productDTO) {
		// TODO Auto-generated method stub
		return shopDAO.productOrderbyList(productDTO);
	}

	@Override
	public List<ProductDTO> shopListView(PageDTO pageDTO) {
		// TODO Auto-generated method stub
		// pageSize, pageNum 담아옴
		// currentPage startRow endRow 
		int currentPage=Integer.parseInt(pageDTO.getPageNum());
		int startRow=(currentPage-1)*pageDTO.getPageSize()+1;
		int endRow=startRow+pageDTO.getPageSize()-1;
		
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setStartRow(startRow-1); // 디비 startRow-1
		pageDTO.setEndRow(endRow);
				
		return shopDAO.shopListView(pageDTO);
	}

	@Override
	public Integer shopListViewCount(PageDTO pageDTO) {
		// TODO Auto-generated method stub
		return shopDAO.shopListViewCount(pageDTO);
	}

	@Override
	public CartDTO cartCheck(CartDTO cartDTO) {
		// TODO Auto-generated method stub
		return shopDAO.cartCheck(cartDTO);
	}

	@Override
	public void insertcart(CartDTO cartDTO) {
		// TODO Auto-generated method stub
		shopDAO.insertcart(cartDTO);
	}

	@Override
	public List<ProductDTO> cartSelectList(CartDTO cartDTO) {
		// TODO Auto-generated method stub
		return shopDAO.cartSelectList(cartDTO);
	}

	@Override
	public void deleteCart(String user_id) {
		// TODO Auto-generated method stub
		shopDAO.deleteCart(user_id);
	}

	@Override
	public void deleteCart2(CartDTO cartDTO) {
		// TODO Auto-generated method stub
		shopDAO.deleteCart2(cartDTO);
	}

	@Override
	public void deleteCartALL(CartDTO cartDTO) {
		// TODO Auto-generated method stub
		shopDAO.deleteCartALL(cartDTO);
	}

}
