package service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import dao.MypageDAO;
import domain.BoardDTO;
import domain.OrderInfoDTO;
import domain.PageDTO;
import domain.PetDTO;
import domain.UserDTO;

@Service
public class MypageServiceImpl implements MypageService{
	
	@Inject
	private MypageDAO mypageDAO;
	
	@Override
	public List<OrderInfoDTO> orderinfoSelectAll(PageDTO pageDTO) {
		System.out.println("마이페이지 주문정보 서비스임플 실행");
		
		// pageSize, pageNum 담아옴
		// currentPage startRow endRow 
		int currentPage=Integer.parseInt(pageDTO.getPageNum());
		int startRow=(currentPage-1)*pageDTO.getPageSize()+1;
		int endRow=startRow+pageDTO.getPageSize()-1;
		
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setStartRow(startRow-1); // 디비 startRow-1
		pageDTO.setEndRow(endRow);
		
		return mypageDAO.orderinfoSelectAll(pageDTO);
	}

	@Override
	public UserDTO userCheck(UserDTO userDTO) {
		return mypageDAO.userCheck(userDTO);
	}

	@Override
	public void userDelete(UserDTO userDTO) {
		mypageDAO.userDelete(userDTO);
		
		
		
		System.out.println(userDTO.getUser_deleteDate());
	}

	@Override
	public UserDTO userInfoSelect(String id) {
		// TODO Auto-generated method stub
		return mypageDAO.userInfoSelect(id);
	}

	@Override
	public PetDTO petInfoSelect(String id) {
		// TODO Auto-generated method stub
		return mypageDAO.petInfoSelect(id);
	}

	@Override
	public List<BoardDTO> myBoardSelectAll1(PageDTO pageDTO) {
		// pageSize, pageNum 담아옴
		// currentPage startRow endRow 
		int currentPage=Integer.parseInt(pageDTO.getPageNum());
		int startRow=(currentPage-1)*pageDTO.getPageSize()+1;
		int endRow=startRow+pageDTO.getPageSize()-1;
		
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setStartRow(startRow-1); // 디비 startRow-1
		pageDTO.setEndRow(endRow);
		
		return mypageDAO.myBoardSelectAll1(pageDTO);
	}
	@Override
	public List<BoardDTO> myBoardSelectAll2(PageDTO pageDTO) {
		// pageSize, pageNum 담아옴
		// currentPage startRow endRow 
		int currentPage=Integer.parseInt(pageDTO.getPageNum());
		int startRow=(currentPage-1)*pageDTO.getPageSize()+1;
		int endRow=startRow+pageDTO.getPageSize()-1;
		
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setStartRow(startRow-1); // 디비 startRow-1
		pageDTO.setEndRow(endRow);
		
		return mypageDAO.myBoardSelectAll2(pageDTO);
	}
	@Override
	public List<BoardDTO> myBoardSelectAll3(PageDTO pageDTO) {
		// pageSize, pageNum 담아옴
		// currentPage startRow endRow 
		int currentPage=Integer.parseInt(pageDTO.getPageNum());
		int startRow=(currentPage-1)*pageDTO.getPageSize()+1;
		int endRow=startRow+pageDTO.getPageSize()-1;
		
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setStartRow(startRow-1); // 디비 startRow-1
		pageDTO.setEndRow(endRow);
		
		return mypageDAO.myBoardSelectAll3(pageDTO);
	}
	@Override
	public List<BoardDTO> myBoardSelectAll4(PageDTO pageDTO) {
		// pageSize, pageNum 담아옴
		// currentPage startRow endRow 
		int currentPage=Integer.parseInt(pageDTO.getPageNum());
		int startRow=(currentPage-1)*pageDTO.getPageSize()+1;
		int endRow=startRow+pageDTO.getPageSize()-1;
		
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setStartRow(startRow-1); // 디비 startRow-1
		pageDTO.setEndRow(endRow);
		
		return mypageDAO.myBoardSelectAll4(pageDTO);
	}

	@Override
	public void userUpdate(UserDTO userDTO) {
		mypageDAO.userUpdate(userDTO);
	}

	@Override
	public List<PetDTO> mypetList(String id) {
		return mypageDAO.mypetList(id);
	}

	@Override
	public void mypetAddInsert(PetDTO petDTO) {
		mypageDAO.mypetAddInsert(petDTO);
		
	}

	@Override
	public PetDTO mypetDetailView(String petNumber) {
		return mypageDAO.mypetDetailView(petNumber);
	}

	@Override
	public void mypetDelete(String petNumber) {
		mypageDAO.mypetDelete(petNumber);
		
	}

	@Override
	public void mypetUpdate(PetDTO petDTO) {
		mypageDAO.mypetUpdate(petDTO);
	}

	@Override
	public Integer getBoardCount() {
		// TODO Auto-generated method stub
		return mypageDAO.getBoardCount();
	}

	@Override
	public Integer getBoardCount2() {
		// TODO Auto-generated method stub
		return mypageDAO.getBoardCount2();
	}


	@Override
	public Integer getBoardCount3() {
		// TODO Auto-generated method stub
		return mypageDAO.getBoardCount3();
	}

	@Override
	public Integer getBoardCount4() {
		// TODO Auto-generated method stub
		return mypageDAO.getBoardCount4();
	}

	@Override
	public void InquiryInsert(BoardDTO boardDTO) {
		
		boardDTO.setBoard_createDate(new Timestamp(System.currentTimeMillis()));
		
		System.out.println(boardDTO.getBoardCategory_number());
		
		if(mypageDAO.getMaxNum(boardDTO)==null) {
			//글이 없는경우 1로 설정
			System.out.println(mypageDAO.getMaxNum(boardDTO));
			boardDTO.setBoard_number(1);
		}else {
			// 글이 있으면 max(num)+1
			System.out.println(mypageDAO.getMaxNum(boardDTO));
			boardDTO.setBoard_number(mypageDAO.getMaxNum(boardDTO)+1);
		}
		
		mypageDAO.InquiryInsert(boardDTO);
	}

	@Override
	public List<BoardDTO> InquirySelectList(String id) {
		// TODO Auto-generated method stub
		return mypageDAO.InquirySelectList(id);
	}

	@Override
	public BoardDTO mypageInquiryContentView(String board_numberID) {
		// TODO Auto-generated method stub
		return mypageDAO.mypageInquiryContentView(board_numberID);
	}

	@Override
	public void mypageInquiryDelete(BoardDTO boardDTO) {
		boardDTO.setBoard_deleteDate(new Timestamp(System.currentTimeMillis()));
		mypageDAO.mypageInquiryDelete(boardDTO);
	}

	@Override
	public BoardDTO mypageInquiryUpdateFormView(String board_numberID) {
		return mypageDAO.mypageInquiryUpdateFormView(board_numberID);
	}

	@Override
	public void mypageInquiryUpdatePro(BoardDTO boardDTO) {
		mypageDAO.mypageInquiryUpdatePro(boardDTO);
	}

	@Override
	public Integer getOrderinfoCount(String id) {
		// TODO Auto-generated method stub
		return mypageDAO.getOrderinfoCount(id);
	}




	
}
