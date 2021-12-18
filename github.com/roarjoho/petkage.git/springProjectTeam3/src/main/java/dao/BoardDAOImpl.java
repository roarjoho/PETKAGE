package dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import domain.BoardDTO;
import domain.PageDTO;
import domain.ReplyDTO;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="mapper.boardMapper";
	
	@Override
	public void insertBoard(BoardDTO boardDTO) {
		
		System.out.println("BoardDAOImpl insertBoard()");

		sqlSession.insert(namespace+".insertBoard", boardDTO);
	}	
	

	@Override
	public Integer getMaxNum(BoardDTO boardDTO) {
		
		return sqlSession.selectOne(namespace+".getMaxNum", boardDTO);
	}

	@Override
	public List<BoardDTO> boardListView(PageDTO pageDTO) {
		
		return sqlSession.selectList(namespace+".boardListView", pageDTO);
	}

	@Override
	public BoardDTO BoardContentView(BoardDTO boardDTO) {
		
		return sqlSession.selectOne(namespace+".BoardContentView", boardDTO);
	}

	@Override
	public int boardContentHit(BoardDTO boardDTO) {
		
		return sqlSession.update(namespace+".boardContentHit", boardDTO);
		
	}

	@Override
	public void updateBoard(BoardDTO boardDTO) {
		
		sqlSession.update(namespace+".updateBoard", boardDTO);
		
	}

	@Override
	public BoardDTO updateBoardFormView(BoardDTO boardDTO) {
		return sqlSession.selectOne(namespace+".BoardContentView", boardDTO);
	}

	@Override
	public void deleteBoard(BoardDTO boardDTO) {
		sqlSession.delete(namespace+".deleteBoard", boardDTO);
		
	}

	@Override
	public Integer getBoardCount1() {
		return sqlSession.selectOne(namespace+".getBoardCount1");
	}
	
	@Override
	public Integer getBoardCount2() {
		return sqlSession.selectOne(namespace+".getBoardCount2");
	}
	
	@Override
	public Integer getBoardCount3() {
		return sqlSession.selectOne(namespace+".getBoardCount3");
	}


	/* 댓글 목록 */
	@Override
	public List<ReplyDTO> getReplyList(int board_numberID) throws Exception {
		return sqlSession.selectList("mapper.replyMapper.getReplyList", board_numberID);
	}
	
	/* 댓글 저장 */
	@Override
	public int saveReply(ReplyDTO replyDTO) throws Exception {
		System.out.println(replyDTO.getReply_contents());
		return sqlSession.insert("mapper.replyMapper.saveReply", replyDTO);
	}

	/* 댓글 수정 */
	@Override
	public int updateReply(ReplyDTO replyDTO) throws Exception {
		return sqlSession.update("mapper.replyMapper.updateReply", replyDTO);
	}
	
	/* 댓글 삭제 */
	@Override
	public int deleteReply(int reply_number) throws Exception {
		return sqlSession.delete("mapper.replyMapper.deleteReply", reply_number);
	}
	
	

	
	
}