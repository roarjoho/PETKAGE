
package dao;

import domain.UserDTO;

public interface UserDAO {

	public void insertUser(UserDTO userDTO);
	public UserDTO checkId(String user_id);
	public UserDTO checkUser(UserDTO userDTO);
	
	public UserDTO checkAdmin(UserDTO userDTO);
}
