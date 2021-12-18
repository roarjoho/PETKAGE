package dao;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import domain.BoardDTO;
import domain.OrderInfoDTO;
import domain.PageDTO;
import domain.PetDTO;
import domain.UserDTO;

@Repository
public class MypageDAOImpl implements MypageDAO{
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace="mapper.mypageMapper";
	
	@Override
	public List<OrderInfoDTO> orderinfoSelectAll(PageDTO pageDTO) {
		System.out.println("마이페이지 주문정보 다오임플 실행");
		return sqlSession.selectList(namespace+".orderinfoSelectAll", pageDTO);
	}

	@Override
	public UserDTO userCheck(UserDTO userDTO) {
		return sqlSession.selectOne(namespace+".userCheck", userDTO);
	}

	@Override
	public void userDelete(UserDTO userDTO) {
		
		userDTO.setUser_deleteDate(new Timestamp(System.currentTimeMillis()));
		sqlSession.update(namespace+".userDelete", userDTO);
	}

	@Override
	public UserDTO userInfoSelect(String id) {
		return sqlSession.selectOne(namespace+".userInfoSelect", id);
	}

	@Override
	public PetDTO petInfoSelect(String id) {
		System.out.println("petInfoSelect()까지실행됨");
		return sqlSession.selectOne(namespace+".petInfoSelect", id);
	}

	@Override
	public List<BoardDTO> myBoardSelectAll1(PageDTO pageDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".myBoardSelectAll1", pageDTO);
	}
	@Override
	public List<BoardDTO> myBoardSelectAll2(PageDTO pageDTO) {
		System.out.println("보드DAOIMple2번");
		return sqlSession.selectList(namespace+".myBoardSelectAll2", pageDTO);
	}
	@Override
	public List<BoardDTO> myBoardSelectAll3(PageDTO pageDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".myBoardSelectAll3", pageDTO);
	}
	@Override
	public List<BoardDTO> myBoardSelectAll4(PageDTO pageDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".myBoardSelectAll4", pageDTO);
	}

	@Override
	public void userUpdate(UserDTO userDTO) {
		System.out.println("수정작업실시");
		sqlSession.update(namespace+".userUpdate", userDTO);
	}

	@Override
	public List<PetDTO> mypetList(String id) {
		System.out.println("애완동물 목록가져오기 실행");
		return sqlSession.selectList(namespace+".petInfoSelect", id);
	}

	@Override
	public void mypetAddInsert(PetDTO petDTO) {
		System.out.println(petDTO.getPet_imagePath());
		sqlSession.insert(namespace+".mypetAddInsert", petDTO);
		
	}

	@Override
	public PetDTO mypetDetailView(String petNumber) {
		System.out.println("다오임플 펫디테일뷰");
		return sqlSession.selectOne(namespace+".mypetDetailView", petNumber);
	}

	@Override
	public void mypetDelete(String petNumber) {
		sqlSession.delete(namespace+".mypetDelete", petNumber);
		
	}

	@Override
	public void mypetUpdate(PetDTO petDTO) {
		sqlSession.update(namespace+".mypetUpdate", petDTO);
		
	}

	@Override
	public Integer getBoardCount() {
		return sqlSession.selectOne(namespace+".getBoardCount");
	}

	@Override
	public Integer getBoardCount2() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".getBoardCount2");
	}

	@Override
	public Integer getBoardCount3() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".getBoardCount3");
	}

	@Override
	public Integer getBoardCount4() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".getBoardCount4");
	}

	@Override
	public void InquiryInsert(BoardDTO boardDTO) {
		sqlSession.delete(namespace+".InquiryInsert", boardDTO);
	}

	@Override
	public Integer getMaxNum(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		System.out.println(boardDTO.getBoardCategory_number());
		return sqlSession.selectOne(namespace+".getMaxNum", boardDTO);
	}

	@Override
	public List<BoardDTO> InquirySelectList(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".InquirySelectList", id);
	}

	@Override
	public BoardDTO mypageInquiryContentView(String board_numberID) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".mypageInquiryContentView", board_numberID);
	}

	@Override
	public void mypageInquiryDelete(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace+".mypageInquiryDelete", boardDTO);
	}

	@Override
	public BoardDTO mypageInquiryUpdateFormView(String board_numberID) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".mypageInquiryContentView", board_numberID);
	}

	@Override
	public void mypageInquiryUpdatePro(BoardDTO boardDTO) {
		sqlSession.update(namespace+".mypageInquiryUpdatePro", boardDTO);
	}

	@Override
	public Integer getOrderinfoCount(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".getOrderinfoCount", id);
	}

	

}
