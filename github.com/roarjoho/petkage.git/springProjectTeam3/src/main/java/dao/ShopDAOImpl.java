package dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import domain.CartDTO;
import domain.OrderInfoDTO;
import domain.PageDTO;
import domain.ProductDTO;

@Repository
public class ShopDAOImpl implements ShopDAO{
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "mapper.shopMapper";
	
	@Override
	public List<ProductDTO> shopListView(PageDTO pageDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".shopListView", pageDTO);
	}

	@Override
	public ProductDTO productDetailContent(String product_number) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".productDetailContent", product_number);
	}

	@Override
	public void insertOrderInfo(OrderInfoDTO orderInfoDTO) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".insertOrderInfo", orderInfoDTO);
	}

	@Override
	public List<ProductDTO> productOrderbyList(ProductDTO productDTO) {
		// TODO Auto-generated method stub
		System.out.println("다오임플 productOrderbyList 실행");
		return sqlSession.selectList(namespace+".productOrderbyList", productDTO);
	}

	@Override
	public Integer shopListViewCount(PageDTO pageDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".shopListViewCount", pageDTO);
	}

	@Override
	public CartDTO cartCheck(CartDTO cartDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".cartCheck", cartDTO);
	}

	@Override
	public void insertcart(CartDTO cartDTO) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".insertcart", cartDTO);
	}

	@Override
	public List<ProductDTO> cartSelectList(CartDTO cartDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".cartSelectList", cartDTO);
	}

	@Override
	public void deleteCart(String user_id) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace+".deleteCart", user_id);
	}

	@Override
	public void deleteCart2(CartDTO cartDTO) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace+".deleteCart2", cartDTO);
	}

	@Override
	public void deleteCartALL(CartDTO cartDTO) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace+".deleteCartALL", cartDTO);
	}

}
