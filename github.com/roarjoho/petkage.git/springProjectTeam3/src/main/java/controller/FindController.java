
package controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.FindDAO;
import domain.FindDTO;
import domain.UserDTO;
import service.FindService;
import service.UserService;

@Controller
public class FindController {

	@Inject
	private FindService findService;
	

	//find
	@RequestMapping (value = "/findUser/find", method = RequestMethod.GET)
	public String find(){
		System.out.println("?- finduser/find()");
		return "findUser/findId";
	}
	//findId serchId로 이동하는 컨트롤러입니다 View의 user_name,user_email(데이터베이스x)를 받아서 user_id(데이터베이스)값을 가져옵니다
	@RequestMapping (value = "/findUser/serchId", method = RequestMethod.POST)
	public String findId(HttpServletRequest httpServletRequest,FindDTO findDTO ,HttpSession session,Model model){
		System.out.println("findId - serchId");
		
	      findDTO.setUser_name(httpServletRequest.getParameter("user_name"));
	      findDTO.setUser_email(httpServletRequest.getParameter("user_email"));
			FindDTO findUser = findService.findId(findDTO);
	      if(findUser != null) {
	    	  model.addAttribute("findId", findUser.getUser_id());
	      }
	      return "findUser/serchId";
	}
	// findPwd serchPwd로 이동하는 컨트롤러입니다 View의 user_id,user_name(데이터베이스x)를 받아서 user_pwd(데이터베이스)값을 가져옵니다
	@RequestMapping (value = "/findUser/serchPwd", method = RequestMethod.POST)
	public String findPwd(HttpServletRequest httpServletRequest,FindDTO findDTO ,HttpSession session,Model model){
		System.out.println("findPwd - serchPwd");
		
	      findDTO.setUser_id(httpServletRequest.getParameter("user_id"));
	      findDTO.setUser_name(httpServletRequest.getParameter("user_name"));
			FindDTO findUser = findService.findPwd(findDTO);	
	      if(findUser != null) {
	    	  model.addAttribute("findPwd", findUser.getUser_pwd());
	      }
	      return "findUser/serchPwd";
	}


	
}
