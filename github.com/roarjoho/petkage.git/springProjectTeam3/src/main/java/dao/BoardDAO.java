package dao;

import java.util.List;

import domain.BoardDTO;
import domain.PageDTO;
import domain.ReplyDTO;

public interface BoardDAO {
	public void insertBoard(BoardDTO boardDTO);
	
	// getMaxNum
		public Integer getMaxNum(BoardDTO boardDTO);
		
		public List<BoardDTO> boardListView(PageDTO pageDTO);	
		
		public Integer getBoardCount1();
		public Integer getBoardCount2();
		public Integer getBoardCount3();
		
		public BoardDTO BoardContentView(BoardDTO boardDTO);
		
		public int boardContentHit(BoardDTO boardDTO);
		
		public void updateBoard(BoardDTO boardDTO);
		
		public void deleteBoard(BoardDTO boardDTO);
		
		public BoardDTO updateBoardFormView(BoardDTO boardDTO);
		
		/* 댓글 리스트 */
		public List<ReplyDTO> getReplyList(int board_numberID) throws Exception;
		
		/* 댓글 저장 */
		public int saveReply(ReplyDTO replyDTO) throws Exception;
		
		/* 댓글 수정 */
		public int updateReply(ReplyDTO replyDTO) throws Exception;
		
		/* 댓글 삭제 */
		public int deleteReply(int reply_number) throws Exception;

}