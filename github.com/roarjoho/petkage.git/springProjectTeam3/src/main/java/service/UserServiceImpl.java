
package service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import dao.UserDAO;
import domain.UserDTO;

@Service
public class UserServiceImpl implements UserService{

	@Inject
	private UserDAO userDAO;

	@Override
	public void insertUser(UserDTO userDTO) {
		System.out.println("UserServiceImpl - insertUser()");
		userDTO.setUser_createDate(new Timestamp(System.currentTimeMillis()));
		userDAO.insertUser(userDTO);
	}

	@Override
	public UserDTO checkId(String user_id) {
		System.out.println("UserServiceImpl - checkId()");
		return userDAO.checkId(user_id);
	}

	@Override
	public UserDTO checkUser(UserDTO userDTO) {
		System.out.println("UserServiceImpl - checkUser()");
		return userDAO.checkUser(userDTO);
	}

	@Override
	public UserDTO checkAdmin(UserDTO userDTO) {
		System.out.println("USerServiceImpl - checkAdmin()");
		return userDAO.checkAdmin(userDTO);
	}
	

}
