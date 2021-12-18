package service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Service;
import dao.BoardDAO;
import domain.BoardDTO;
import domain.PageDTO;
import domain.ReplyDTO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO boardDAO;

	@Override
	public void insertBoard(BoardDTO boardDTO) {
		System.out.println("BoardServiceImpl insertBoard()");

		// 등록일자
		boardDTO.setBoard_createDate(new Timestamp(System.currentTimeMillis()));

		// 게시글번호
		if (boardDAO.getMaxNum(boardDTO) == null) {
			// 글이 없는경우 1로 설정
			boardDTO.setBoard_number(1);
		} else {
			// 글이 있으면 max(num)+1
			boardDTO.setBoard_number(boardDAO.getMaxNum(boardDTO) + 1);
		}

		boardDAO.insertBoard(boardDTO);

	}

	@Override
	public List<BoardDTO> boardListView(PageDTO pageDTO) {

		int currentPage = Integer.parseInt(pageDTO.getPageNum());
		int startRow = (currentPage - 1) * pageDTO.getPageSize() + 1;
		int endRow = startRow + pageDTO.getPageSize() - 1;

		pageDTO.setCurrentPage(currentPage);
		pageDTO.setStartRow(startRow - 1); // 디비 startRow-1
		pageDTO.setEndRow(endRow);

		return boardDAO.boardListView(pageDTO);
	}

	@Override
	public BoardDTO BoardContentView(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		return boardDAO.BoardContentView(boardDTO);
	}

	@Override
	public int boardContentHit(BoardDTO boardDTO) {
		return boardDAO.boardContentHit(boardDTO);
	}

	@Override
	public void updateBoard(BoardDTO boardDTO) {

		System.out.println("BoardServiceImpl updateBoard()");

		boardDAO.updateBoard(boardDTO);

	}

	@Override
	public BoardDTO updateBoardFormView(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		return boardDAO.updateBoardFormView(boardDTO);
	}

	@Override
	public void deleteBoard(BoardDTO boardDTO) {

		boardDAO.deleteBoard(boardDTO);

	}

	@Override
	public Integer getBoardCount1() {
		return boardDAO.getBoardCount1();
	}
	
	@Override
	public Integer getBoardCount2() {
		return boardDAO.getBoardCount2();
	}
	
	@Override
	public Integer getBoardCount3() {
		return boardDAO.getBoardCount3();
	}
	
	/* 댓글 목록 */
	@Override
	public List<ReplyDTO> getReplyList(int board_numberID) throws Exception {
		return boardDAO.getReplyList(board_numberID);
	}
	
	/* 댓글 저장 */
	@Override
	public int saveReply(ReplyDTO replyDTO) throws Exception {
		return boardDAO.saveReply(replyDTO);
	}

	/* 댓글 수정 */
	@Override
	public int updateReply(ReplyDTO replyDTO) throws Exception {
		return boardDAO.updateReply(replyDTO);
	}

	/* 댓글 삭제 */
	@Override
	public int deleteReply(int reply_number) throws Exception {
		return boardDAO.deleteReply(reply_number);
	}
	
}