package dao;

import java.util.List;

import domain.BoardDTO;
import domain.OrderInfoDTO;
import domain.PageDTO;
import domain.PetDTO;
import domain.UserDTO;

public interface MypageDAO {

	List<OrderInfoDTO> orderinfoSelectAll(PageDTO pageDTO);

	public UserDTO userCheck(UserDTO userDTO);
	
	public void userDelete(UserDTO userDTO);
	
	public UserDTO userInfoSelect(String id);
	
	public PetDTO petInfoSelect(String id);
	
	public List<PetDTO> mypetList(String id);
	
	public List<BoardDTO> myBoardSelectAll1(PageDTO pageDTO);
	public List<BoardDTO> myBoardSelectAll2(PageDTO pageDTO);
	public List<BoardDTO> myBoardSelectAll3(PageDTO pageDTO);
	public List<BoardDTO> myBoardSelectAll4(PageDTO pageDTO);
	
	public void userUpdate(UserDTO userDTO);
	
	public void mypetAddInsert(PetDTO petDTO);
	
	public PetDTO mypetDetailView(String petNumber);
	
	public void mypetDelete(String petNumber);
	
	public void mypetUpdate(PetDTO petDTO);
	
	public Integer getOrderinfoCount(String id);
	public Integer getBoardCount();
	public Integer getBoardCount2();
	public Integer getBoardCount3();
	public Integer getBoardCount4();
	
	public void InquiryInsert(BoardDTO boardDTO);
	
	public Integer getMaxNum(BoardDTO boardDTO);
	
	public List<BoardDTO> InquirySelectList(String id);
	
	public BoardDTO mypageInquiryContentView(String board_numberID);
	
	public void mypageInquiryDelete(BoardDTO boardDTO);
	
	public BoardDTO mypageInquiryUpdateFormView(String board_numberID);
	
	public void mypageInquiryUpdatePro(BoardDTO boardDTO);
}
