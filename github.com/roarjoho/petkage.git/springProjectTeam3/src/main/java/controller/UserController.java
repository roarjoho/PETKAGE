
package controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import domain.UserDTO;
import service.UserService;

@Controller
public class UserController {

	@Inject
	private UserService userService;
	
//1-1. 회원가입 화면으로 이동
	@RequestMapping (value = "/user/register", method = RequestMethod.GET)
	public String insert(HttpSession session){
		//세션을 검사하여 로그인 정보가 있으면 메인화면으로 이동시킴
		String loginSession = (String)session.getAttribute("id");
		if(loginSession != null) {//로그인 정보가 있는 경우
			System.out.println("AdminController - 회원가입 폼 불필요함");
			return "/";
		}else {
			System.out.println("UserController - insert()");
			return "user/register";			
		}
	}

//1-2. 중복 아이디 검사
	@RequestMapping(value = "/user/idCheck", method= RequestMethod.GET)
	public ResponseEntity<String> idCheck(HttpServletRequest request){
		System.out.println("UserController - idCheck");
		String id = request.getParameter("user_id");
		UserDTO userDTO = userService.checkId(id);
		String result = "";
		if(userDTO == null) {
			result = "ok";
		}else {
			result = "no";
		}
		ResponseEntity<String> entity = new ResponseEntity<String>(result, HttpStatus.OK);
		return entity;
	}	
	
//1-3. 회원가입 처리
	@RequestMapping (value = "/user/registerPro", method = RequestMethod.POST)
	public String insertPro(UserDTO userDTO) {
		System.out.println("UserController - insertPro()");
		userService.insertUser(userDTO);
		return "redirect:/user/login";
	}

	
//2-1. 로그인 화면으로 이동
	@RequestMapping(value = "/user/login", method = RequestMethod.GET)
	public String login(HttpSession session) {
		//로그인정보 검사하여 로그인상태이면 메인화면으로 이동시키기
		String loginSession = (String)session.getAttribute("id");
		if(loginSession != null) {//로그인 상태이면
			System.out.println("AdminController - 로그인폼 불필요함");
			return "/";		
		}else {
			System.out.println("UserController - login()");
			return "user/login";			
		}
	}

//2-2. 로그인 처리
	  @RequestMapping(value = "/user/loginPro", method = RequestMethod.POST)
      public String loginPro(HttpServletRequest httpServletRequest, UserDTO userDTO, HttpSession session) {
         System.out.println("UserController - loginPro()");         
         userDTO.setUser_id(httpServletRequest.getParameter("user_id"));
         userDTO.setUser_pwd(httpServletRequest.getParameter("user_pwd"));
                  
         UserDTO userChecked = userService.checkUser(userDTO);
         
         if(userChecked == null) {// 회원가입 정보가 있는지 검사
             return "user/login_fail";
          }else {// 회원정보 있는 경우, 관리자계정인지 일반회원계정인지 검사
        	  UserDTO adminChecked = userService.checkAdmin(userChecked);
        	  if(adminChecked != null) {//관리자계정인 경우.
        		  session.setAttribute("id", "admin");
        		  System.out.println("admin");
        		 
        		  return "redirect:/";
        	  }
        	  session.setAttribute("id", userDTO.getUser_id());
        	  System.out.println("user");
        	  return "redirect:/";
          }

      }
	
//2-3. 로그인 실패 화면으로 이동
	@RequestMapping(value = "/user/login_fail", method = RequestMethod.GET)
	public String login_fail() {
		return "user/login_fail";
	}
//3. 로그아웃처리
	@RequestMapping(value = "/user/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		System.out.println("UserController - logout()");
		session.invalidate();
		return "redirect:/";
	}
	
}
