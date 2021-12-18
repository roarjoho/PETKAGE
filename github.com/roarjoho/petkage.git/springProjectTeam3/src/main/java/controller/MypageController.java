package controller;

import java.io.File;
import java.io.IOException;
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
import domain.OrderInfoDTO;
import domain.PageDTO;
import domain.PetDTO;
import domain.UserDTO;
import service.MypageService;

@Controller
public class MypageController {

	@Inject
	private MypageService mypageservice;	
	
	//업로드 될 폴더 경로 
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@RequestMapping("/")
	public String home(){
		return "home/index";
	}
	
//	마이페이지 - 주문내역 목록 출력
	@RequestMapping("/mypage/mypage")
	public String mypage(HttpServletRequest request, Model model, HttpSession session) {
		
		if(session.getAttribute("id")==null) {
			return "user/login";
		}
		
		// 한화면에 보여줄 글개수  10개 설정
		 int pageSize=10;
		 
		 //페이지 번호 가져오기 
		 String pageNum=request.getParameter("pageNum");
		 //페이지번호가 없으면 -> 1
		 if(pageNum==null){
		 	pageNum="1";
		 }
		
		 PageDTO pageDTO=new PageDTO();
		 pageDTO.setPageSize(pageSize);
		 pageDTO.setPageNum(pageNum);
		
		String id = (String) session.getAttribute("id");
		pageDTO.setUser_id(id);
		
		List<OrderInfoDTO> orderinfoDTO=mypageservice.orderinfoSelectAll(pageDTO);
		Integer count = mypageservice.getOrderinfoCount(id);
		pageDTO.setCount(count);
		System.out.println(pageDTO.getCount());
		model.addAttribute("pageDTO",pageDTO);
		model.addAttribute("orderInfoList", orderinfoDTO);		
		System.out.println("모델에 값 넣음");
		return "mypage/mypageOrder";
	}
	
//	마이페이지 - 내가 작성한 게시판 화면으로 이동-1
	@RequestMapping("/mypage/mypageBoard")
	public String mypageBoard(HttpServletRequest request, Model model, BoardDTO boardDTO, HttpSession session) {
		
		if(session.getAttribute("id")==null) {
			return "user/login";
		}
		
		// 한화면에 보여줄 글개수  10개 설정
				 int pageSize=10;
				 
				 //페이지 번호 가져오기 
				 String pageNum=request.getParameter("pageNum");
				 //페이지번호가 없으면 -> 1
				 if(pageNum==null){
				 	pageNum="1";
				 }
				
				 PageDTO pageDTO=new PageDTO();
				 pageDTO.setPageSize(pageSize);
				 pageDTO.setPageNum(pageNum);
		
		String id = (String) session.getAttribute("id");
		pageDTO.setUser_id(id);
		
		List<BoardDTO> boardDTO1 = mypageservice.myBoardSelectAll1(pageDTO);
		int count = mypageservice.getBoardCount();
		pageDTO.setCount(count);
		 
		model.addAttribute("myBoardView1", boardDTO1);
		model.addAttribute("pageDTO",pageDTO);
		
		return "mypage/mypageBoard";
	}
	
	@RequestMapping("/mypage/mypageBoard2")
	public String mypageBoard2(HttpServletRequest request, Model model, BoardDTO boardDTO, HttpSession session) {
		
		if(session.getAttribute("id")==null) {
			return "user/login";
		}
		
		// 한화면에 보여줄 글개수  10개 설정
				 int pageSize=10;
				 
				 //페이지 번호 가져오기 
				 String pageNum=request.getParameter("pageNum");
				 //페이지번호가 없으면 -> 1
				 if(pageNum==null){
				 	pageNum="1";
				 }
				
				 PageDTO pageDTO=new PageDTO();
				 pageDTO.setPageSize(pageSize);
				 pageDTO.setPageNum(pageNum);
				 
		
		String id = (String) session.getAttribute("id");
		pageDTO.setUser_id(id);
		List<BoardDTO> boardDTO2 = mypageservice.myBoardSelectAll2(pageDTO);
		int count = mypageservice.getBoardCount2();
		 pageDTO.setCount(count);
		 
		model.addAttribute("myBoardView2", boardDTO2);
		model.addAttribute("pageDTO",pageDTO);
		
		return "mypage/mypageBoard2";
	}
	
//	마이페이지 - 내가 작성한 게시판 화면으로 이동-3
	@RequestMapping("/mypage/mypageBoard3")
	public String mypageBoard3(HttpServletRequest request, Model model, BoardDTO boardDTO, HttpSession session) {
		
		if(session.getAttribute("id")==null) {
			return "user/login";
		}
		
		// 한화면에 보여줄 글개수  10개 설정
			 int pageSize=10;
			 
			 //페이지 번호 가져오기 
			 String pageNum=request.getParameter("pageNum");
			 //페이지번호가 없으면 -> 1
			 if(pageNum==null){
			 	pageNum="1";
			 }
			
			 PageDTO pageDTO=new PageDTO();
			 pageDTO.setPageSize(pageSize);
			 pageDTO.setPageNum(pageNum);
			 
	
			String id = (String) session.getAttribute("id");
			pageDTO.setUser_id(id);
			List<BoardDTO> boardDTO3 = mypageservice.myBoardSelectAll3(pageDTO);
			int count = mypageservice.getBoardCount3();
			pageDTO.setCount(count);
			
			model.addAttribute("myBoardView3", boardDTO3);
			model.addAttribute("pageDTO",pageDTO);
		return "mypage/mypageBoard3";
	}
//	마이페이지 - 내가 작성한 게시판 화면으로 이동-4
	@RequestMapping("/mypage/mypageBoard4")
	public String mypageBoard4(HttpServletRequest request, Model model, BoardDTO boardDTO, HttpSession session) {
		
		if(session.getAttribute("id")==null) {
			return "user/login";
		}
		
		// 한화면에 보여줄 글개수  10개 설정
		 int pageSize=10;
		 
		 //페이지 번호 가져오기 
		 String pageNum=request.getParameter("pageNum");
		 //페이지번호가 없으면 -> 1
		 if(pageNum==null){
		 	pageNum="1";
		 }
		
		 PageDTO pageDTO=new PageDTO();
		 pageDTO.setPageSize(pageSize);
		 pageDTO.setPageNum(pageNum);
		 

		String id = (String) session.getAttribute("id");
		pageDTO.setUser_id(id);
		List<BoardDTO> boardDTO4 = mypageservice.myBoardSelectAll4(pageDTO);
		int count = mypageservice.getBoardCount4();
		pageDTO.setCount(count);
		
		model.addAttribute("myBoardView4", boardDTO4);
		model.addAttribute("pageDTO",pageDTO);
		
		return "mypage/mypageBoard4";
	}
	
//	마이페이지 회원정보 업데이트화면으로 이동
	@RequestMapping("/mypage/mypageUserUpdate")
	public String mypageUserUpdate(Model model, UserDTO userDTO, HttpSession session) {
		
		if(session.getAttribute("id")==null) {
			return "user/login";
		}
		
		String id = (String) session.getAttribute("id");
		userDTO = mypageservice.userInfoSelect(id);
		model.addAttribute("orderInfoList", userDTO);
		
		return "mypage/mypageUserUpdate";
	}
	
	@RequestMapping(value = "/mypage/mypageUserUpdatePro", method = RequestMethod.POST)
	public String mypageUserUpdatePro(Model model, UserDTO userDTO, HttpServletRequest httpServletRequest) {
		
		userDTO.setUser_id(httpServletRequest.getParameter("id"));
		userDTO.setUser_pwd(httpServletRequest.getParameter("pass"));
		userDTO.setUser_name(httpServletRequest.getParameter("name"));
		userDTO.setUser_email(httpServletRequest.getParameter("email"));
		userDTO.setUser_phone(httpServletRequest.getParameter("phone"));
		System.out.println(userDTO.getUser_id());
		System.out.println(userDTO.getUser_pwd());
		System.out.println(userDTO.getUser_name());
		System.out.println(userDTO.getUser_email());
		System.out.println(userDTO.getUser_phone());
		mypageservice.userUpdate(userDTO);
		
		return "redirect:/";
	}
	
//	마이페이지 - 내 애완동물 목록 화면으로 이동
	@RequestMapping("/mypage/mypagePetUpdate")
	public String mypagePetUpdate(Model model, PetDTO petDTO, HttpSession session) {
		
		if(session.getAttribute("id")==null) {
			return "user/login";
		}
		
		String id = (String) session.getAttribute("id"); 
		List<PetDTO> petDTO1 = mypageservice.mypetList(id);
		model.addAttribute("mypetList", petDTO1);
		System.out.println(petDTO1);
		
		return "mypage/mypagePetList";
	}
	
//	마이페이지 - 펫 추가하는 화면으로 이동(펫추가하기 버튼 클릭 시)
	@RequestMapping("/mypage/mypagePetAdd")
	public String mypagePetAdd() {
		return "mypage/mypagePetAdd";
	}
	
//	마이페이지 - 펫 상세보기 화면으로 이동
	@RequestMapping(value = "/mypage/mypagePetContent", method = RequestMethod.GET)
	public String mypagePetContent(HttpServletRequest httpServletRequest, Model model, PetDTO petDTO, HttpSession session) {
		String petNumber = httpServletRequest.getParameter("pet_number");
		System.out.println(petNumber);
		
		petDTO = mypageservice.mypetDetailView(petNumber);
		model.addAttribute("mypetDetailView", petDTO);
		
		return "mypage/mypagePetContent";
	}
	
//	마이페이지 - 펫 추가하는 프로세스
	@RequestMapping(value = "/mypage/mypagePetAddPro", method = RequestMethod.POST)
	public String mypagePetAddPro(PetDTO petDTO, HttpSession session, HttpServletRequest httpServletRequest, MultipartFile file) throws IOException {
		String id = (String) session.getAttribute("id");
		petDTO.setUser_id(id);
		petDTO.setPet_name(httpServletRequest.getParameter("petName"));
		petDTO.setPet_type(httpServletRequest.getParameter("petType"));
		petDTO.setPet_gender(httpServletRequest.getParameter("petGender"));
		petDTO.setPet_breed(httpServletRequest.getParameter("petBreed"));
		petDTO.setPet_birth(httpServletRequest.getParameter("petBirth"));
		petDTO.setPet_weight(httpServletRequest.getParameter("petWeight"));
		petDTO.setPet_addinfo(httpServletRequest.getParameter("petAddInfo"));
		
		UUID uid=UUID.randomUUID();
		String fileName=uid.toString()+"_"+file.getOriginalFilename();
		System.out.println(fileName);
		// 업로드 파일을 복사해서 => upload 폴더에 넣기
		File targetFile=new File(uploadPath,fileName);
		FileCopyUtils.copy(file.getBytes(), targetFile);
		// BoardDTO 복사된 파일 이름 저장
		petDTO.setPet_imagePath(fileName);
				
		mypageservice.mypetAddInsert(petDTO);
		
		return "redirect:/mypage/mypagePetUpdate";
	}
//	마이페이지 - 펫 업데이트 프로세스
	@RequestMapping(value = "/mypage/mypagePetUpdatePro", method = RequestMethod.POST)
	public String mypagePetUpdatePro(PetDTO petDTO, HttpServletRequest httpServletRequest, MultipartFile file) throws IOException {
		petDTO.setPet_number(httpServletRequest.getParameter("petNumber"));
		petDTO.setPet_name(httpServletRequest.getParameter("petName"));
		petDTO.setPet_type(httpServletRequest.getParameter("petType"));
		petDTO.setPet_gender(httpServletRequest.getParameter("petGender"));
		petDTO.setPet_breed(httpServletRequest.getParameter("petBreed"));
		petDTO.setPet_birth(httpServletRequest.getParameter("petBirth"));
		petDTO.setPet_weight(httpServletRequest.getParameter("petWeight"));
		petDTO.setPet_addinfo(httpServletRequest.getParameter("petAddInfo"));
		System.out.println("펫업데이트");
		UUID uid=UUID.randomUUID();
		String fileName=uid.toString()+"_"+file.getOriginalFilename();
		System.out.println(fileName);
		// 업로드 파일을 복사해서 => upload 폴더에 넣기
		File targetFile=new File(uploadPath,fileName);
		FileCopyUtils.copy(file.getBytes(), targetFile);
		// BoardDTO 복사된 파일 이름 저장
		petDTO.setPet_imagePath(fileName);
		mypageservice.mypetUpdate(petDTO);
		
		return "redirect:/mypage/mypagePetUpdate";
	}
//	마이페이지 - 펫 삭제하기
	@RequestMapping("/mypage/mypagePetDeletePro")
	public String mypagePetDeletePro(HttpServletRequest httpServletRequest, Model model, PetDTO petDTO) {
		System.out.println("삭제작업실시");
		String petNumber = httpServletRequest.getParameter("pet_number");
		System.out.println(petNumber);
		mypageservice.mypetDelete(petNumber);
		return "redirect:/mypage/mypagePetUpdate";
	}
	
//	마이페이지 - 회원탈퇴 화면으로 이동
	@RequestMapping("/mypage/mypageUserDelete")
	public String mypageUserDelete(HttpSession session) {
		
		if(session.getAttribute("id")==null) {
			return "user/login";
		}
		
		return "mypage/mypageUserDelete";
	}
	
//	유저정보 삭제 프로세스
	@RequestMapping(value = "/mypage/mypageUserDeletePro", method = RequestMethod.POST)
	public String mypageUserDeletePro(Model model, UserDTO userDTO, HttpServletRequest httpServletRequest, HttpSession session) {
		
		userDTO.setUser_id(httpServletRequest.getParameter("id"));
		userDTO.setUser_pwd(httpServletRequest.getParameter("pass"));
		UserDTO userDTO2=mypageservice.userCheck(userDTO);
		if(userDTO2!=null) {
			System.out.println("아이디 비번일치함 탈퇴작업실시");
			mypageservice.userDelete(userDTO);
		}else {
			System.out.println("일치하지않음");
			model.addAttribute("msg", "비밀번호가 잘못되었습니다.");

			model.addAttribute("url", "mypage/mypageUserDelete");
			return "mypage/alert";
		}
		
		session.invalidate();
		return "redirect:/";
	}
		
//	마이페이지 -> 1:1 문의 게시판
	@RequestMapping("/mypage/mypageInquiry")
	public String mypageInquiry(HttpSession session, Model model) {
		
		if(session.getAttribute("id")==null) {
			return "user/login";
		}
		
		String id = (String) session.getAttribute("id"); 
		
		List<BoardDTO> boardDTO = mypageservice.InquirySelectList(id);
		model.addAttribute("boardList4", boardDTO);
		
		return "mypage/mypageInquiry";
	}	
	
//	마이페이지 -> 1:1 문의 게시판 -> 글쓰기버튼 클릭 시 글쓰기 폼으로 이동
	@RequestMapping("/mypage/mypageInquiryWriteForm")
	public String mypageInquiryWriteForm() {
		return "mypage/mypageInquiryWriteForm";
	}	
	
//	마이페이지 -> 1:1 문의 게시판 -> 글쓰기 프로세스
	@RequestMapping(value = "/mypage/InquiryWritePro", method = RequestMethod.POST)
	public String InquiryWritePro(BoardDTO boardDTO, HttpServletRequest httpServletRequest) {
		System.out.println("글쓰기 프로세스");
		
		boardDTO.setBoardCategory_number(httpServletRequest.getParameter("boardCategory_number"));
		boardDTO.setUser_id(httpServletRequest.getParameter("id"));
		boardDTO.setBoard_title(httpServletRequest.getParameter("title"));
		boardDTO.setBoard_contents(httpServletRequest.getParameter("content"));
		
		mypageservice.InquiryInsert(boardDTO);
		
		return "redirect:/mypage/mypageInquiry";
	}	
	
	
//	마이페이지 - 문의글 상세보기 프로세스
	@RequestMapping(value = "/mypage/mypageInquiryContent", method = RequestMethod.GET)
	public String mypageInquiryContent(HttpServletRequest httpServletRequest, Model model, BoardDTO boardDTO, HttpSession session) {
		
		String board_numberID = httpServletRequest.getParameter("board_numberID");
		System.out.println(board_numberID);
		
		boardDTO = mypageservice.mypageInquiryContentView(board_numberID);
		model.addAttribute("InquiryContentView", boardDTO);
		
		return "mypage/mypageInquiryContent";
	}

	
//	마이페이지 - 게시글 삭제 프로세스
	@RequestMapping("/mypage/mypageInquiryDeletePro")
	public String mypageInquiryDeletePro(HttpServletRequest httpServletRequest, Model model, BoardDTO boardDTO) {
		System.out.println("삭제작업실시");
		String board_numberID = httpServletRequest.getParameter("board_numberID");
		System.out.println(board_numberID);
		boardDTO.setBoard_numberID(board_numberID);
		mypageservice.mypageInquiryDelete(boardDTO);
		return "redirect:/mypage/mypageInquiry";
	}
	
//	마이페이지 - 문의글 수정하기 클릭 시 -> 수정폼화면에 출력하기
	@RequestMapping("/mypage/mypageInquiryUpdateForm")
	public String mypageInquiryUpdateForm(HttpServletRequest httpServletRequest, Model model, BoardDTO boardDTO) {
		System.out.println("수정작업실시");
		String board_numberID = httpServletRequest.getParameter("board_numberID");
		System.out.println(board_numberID);
		BoardDTO boardDTO2 = mypageservice.mypageInquiryUpdateFormView(board_numberID);
		model.addAttribute("InquiryUpdateFormView", boardDTO2);
		return "/mypage/mypageInquiryUpdateForm";
	}
	
//	마이페이지 - 내 문의글 수정하는 프로세스
	@RequestMapping(value = "/mypage/mypageInquiryUpdatePro", method = RequestMethod.POST)
	public String mypageInquiryUpdatePro(Model model,BoardDTO boardDTO, HttpServletRequest httpServletRequest) {
		
	System.out.println("수정작업 프로세스");
	
	boardDTO.setBoard_numberID(httpServletRequest.getParameter("board_numberID"));
	boardDTO.setBoard_title(httpServletRequest.getParameter("title"));
	boardDTO.setBoard_contents(httpServletRequest.getParameter("content"));
	
	System.out.println("값");
	System.out.println(boardDTO.getBoard_numberID());
	System.out.println(boardDTO.getBoard_title());
	System.out.println(boardDTO.getBoard_contents());
	System.out.println("값");
	
	mypageservice.mypageInquiryUpdatePro(boardDTO);
	
	String board_numberID = httpServletRequest.getParameter("board_numberID");
	System.out.println(board_numberID);
	
	boardDTO = mypageservice.mypageInquiryContentView(board_numberID);
	model.addAttribute("InquiryContentView", boardDTO);
	
		return "mypage/mypageInquiryContent";
	}
	
}
