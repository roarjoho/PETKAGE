package controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import domain.BoardDTO;
import domain.PageDTO;
import domain.ReplyDTO;
import service.BoardService;

@Controller
public class BoardController {

	// 사진업로드 경로
	@Resource(name = "uploadPath")
	private String uploadPath;

	@Inject
	private BoardService boardService;

//	커뮤니티 후기 게시판 페이지로 이동
	@RequestMapping("/community/blog1")
	public String blog(Model model, BoardDTO boardDTO, HttpServletRequest request, HttpSession session) {
			
		if(session.getAttribute("id")==null) {
			return "user/login";
		}
		
		// 한화면에 보여줄 글개수 10개 설정
		int pageSize = 10;

		// 페이지 번호 가져오기
		String pageNum = request.getParameter("pageNum");
		// 페이지번호가 없으면 -> 1
		if (pageNum == null) {
			pageNum = "1";
		}

		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);

		pageDTO.setBoardCategory_number(request.getParameter("boardCategory_number"));

		List<BoardDTO> boardDTO2 = boardService.boardListView(pageDTO);
		model.addAttribute("boardListView", boardDTO2);

		int count = boardService.getBoardCount1();
		pageDTO.setCount(count);

		model.addAttribute("pageDTO", pageDTO);

		return "community/blog1";
	}

	// 커뮤니티 정보공유 게시판으로 이동
	@RequestMapping("/community/blog2")
	public String blog2(Model model, BoardDTO boardDTO, HttpServletRequest request, HttpSession session) {

		if(session.getAttribute("id")==null) {
			return "user/login";
		}
		
		// 한화면에 보여줄 글개수 10개 설정
		int pageSize = 12;

		// 페이지 번호 가져오기
		String pageNum = request.getParameter("pageNum");
		// 페이지번호가 없으면 -> 1
		if (pageNum == null) {
			pageNum = "1";
		}

		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);

		pageDTO.setBoardCategory_number(request.getParameter("boardCategory_number"));

		List<BoardDTO> boardDTO2 = boardService.boardListView(pageDTO);
		model.addAttribute("boardListView", boardDTO2);

		int count = boardService.getBoardCount2();
		pageDTO.setCount(count);

		model.addAttribute("pageDTO", pageDTO);

		return "community/blog2";
	}

//	커뮤니티 자랑게시판(사진) 페이지로 이동
	@RequestMapping("/community/blog3")
	public String blog3(Model model, BoardDTO boardDTO, HttpServletRequest request, HttpSession session) {
	
		if(session.getAttribute("id")==null) {
			return "user/login";
		}
		
		// 한화면에 보여줄 글개수 10개 설정
		int pageSize = 12;

		// 페이지 번호 가져오기
		String pageNum = request.getParameter("pageNum");
		// 페이지번호가 없으면 -> 1
		if (pageNum == null) {
			pageNum = "1";
		}

		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);

		pageDTO.setBoardCategory_number(request.getParameter("boardCategory_number"));

		List<BoardDTO> boardDTO2 = boardService.boardListView(pageDTO);
		
		model.addAttribute("boardListView", boardDTO2);

		int count = boardService.getBoardCount3();
		pageDTO.setCount(count);

		model.addAttribute("pageDTO", pageDTO);

		return "community/blog3";
	}

//	게시판 글쓰기폼으로 이동
	@RequestMapping("/community/blogWriteForm")
	public String blogWriteForm(HttpSession session) {
		
		if(session.getAttribute("id")==null) {
			return "user/login";
		}
		
		return "community/blogWriteForm";
	}

//	글 작성 프로세스
	@RequestMapping(value = "/community/blogWritePro", method = RequestMethod.POST)
	public String blogWritePro(BoardDTO boardDTO, HttpServletRequest request, Model model, MultipartFile file)
			throws Exception {
		System.out.println("글 작성 프로세스");

		boardDTO.setBoard_numberID(request.getParameter("board_numberID"));

		boardDTO.setBoardCategory_number(request.getParameter("categorySelect"));
		boardDTO.setBoard_title(request.getParameter("title"));
		boardDTO.setUser_id(request.getParameter("reg_id"));
		boardDTO.setBoard_contents(request.getParameter("content"));

		System.out.println(boardDTO.getBoard_numberID());

		UUID uid = UUID.randomUUID();
		String fileName = uid.toString() + "_" + file.getOriginalFilename();
		System.out.println(fileName);
		// 업로드 파일을 복사해서 => upload 폴더에 넣기
		File targetFile = new File(uploadPath, fileName);
		FileCopyUtils.copy(file.getBytes(), targetFile);
		// BoardDTO 복사된 파일 이름 저장
		boardDTO.setBoard_imagePath(fileName);
		boardService.insertBoard(boardDTO);
		
		BoardDTO boardDTO2 = boardService.BoardContentView(boardDTO);
		model.addAttribute("BoardContentView", boardDTO2);

		return "redirect:/community/blog"+boardDTO.getBoardCategory_number()+"?boardCategory_number="+boardDTO.getBoardCategory_number();

	}

//	게시 글 내용 확인 (상세보기) /*  매개변수에 ReplyDTO 추가 + 댓 기능 추가  */
	@RequestMapping(value = "/community/blogContent", method = RequestMethod.GET)
	public String blogContent(HttpServletRequest request, BoardDTO boardDTO, ReplyDTO replyDTO, Model model) {

		// 게시판 고유번호 가져오기(mapper에서 쓰임)
		boardDTO.setBoard_numberID(request.getParameter("board_numberID"));

		boardService.boardContentHit(boardDTO);

		BoardDTO boardDTO2 = boardService.BoardContentView(boardDTO);
		model.addAttribute("BoardContentView", boardDTO2);
		
		/* 댓글 넘기기 */
		model.addAttribute("replyDTO", new ReplyDTO());
		/* 댓 기능 추가 */
		int board_numberID = Integer.parseInt(request.getParameter("board_numberID"));	
		replyDTO.setBoard_numberID(board_numberID);
		
		return "community/blogContent";


	}

//	게시판 글 내용 삭제버튼 클릭 시 ->삭제 프로세스
	@RequestMapping("/community/blogDeletePro")
	public String blogDeletePro(HttpServletRequest request, Model model, BoardDTO boardDTO) {
		System.out.println("게시판 글 삭제 프로세스");

		boardDTO.setBoard_numberID(request.getParameter("board_numberID"));
		System.out.println(boardDTO.getBoard_numberID());
		boardDTO.setBoardCategory_number(request.getParameter("boardCategory_number"));
		
		boardService.deleteBoard(boardDTO);

		return "redirect:/community/blog"+boardDTO.getBoardCategory_number()+"?boardCategory_number="+boardDTO.getBoardCategory_number();
	}

//	게시판 글 내용 수정버튼 클릭 시 -> 글 수정 폼화면으로 이동
	@RequestMapping("/community/blogUpdateForm")
	public String blogUpdateForm(BoardDTO boardDTO, HttpServletRequest request, Model model) {
		System.out.println("게시판 글 수정화면으로 이동");

		boardDTO.setBoard_numberID(request.getParameter("board_numberID"));
		System.out.println(boardDTO.getBoard_numberID());

		BoardDTO boardDTO2 = boardService.updateBoardFormView(boardDTO);
		model.addAttribute("updateBoardFormView", boardDTO2);

		return "/community/blogUpdateForm";
	}

//	게시판 글 내용 수정 작업프로세스
	@RequestMapping(value = "/community/blogUpdatePro", method = RequestMethod.POST)
	public String blogUpdatePro(BoardDTO boardDTO, HttpServletRequest request, Model model, MultipartFile file)
			throws Exception {
		System.out.println("게시판 글 수정작업 실시");

		boardDTO.setBoard_numberID(request.getParameter("board_numberID"));
		boardDTO.setBoardCategory_number(request.getParameter("categorySelect"));
		boardDTO.setBoard_title(request.getParameter("title"));
		boardDTO.setBoard_contents(request.getParameter("content"));

		System.out.println(boardDTO.getBoard_title());
		System.out.println(boardDTO.getBoard_contents());
		System.out.println(boardDTO.getBoard_numberID());

		UUID uid = UUID.randomUUID();
		String fileName = uid.toString() + "_" + file.getOriginalFilename();
		System.out.println(fileName);
		// 업로드 파일을 복사해서 => upload 폴더에 넣기
		File targetFile = new File(uploadPath, fileName);
		FileCopyUtils.copy(file.getBytes(), targetFile);
		// BoardDTO 복사된 파일 이름 저장
		boardDTO.setBoard_imagePath(fileName);
		System.out.println(boardDTO.getBoard_imagePath());
		boardService.updateBoard(boardDTO);

		BoardDTO boardDTO2 = boardService.BoardContentView(boardDTO);
		model.addAttribute("BoardContentView", boardDTO2);

		return "redirect:/community/blog"+boardDTO.getBoardCategory_number()+"?boardCategory_number="+boardDTO.getBoardCategory_number();
	}
	
	
}