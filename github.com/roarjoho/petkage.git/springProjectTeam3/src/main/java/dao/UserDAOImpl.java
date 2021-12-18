
package dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import domain.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO{
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "mapper.UserMapper";

	@Override
	public void insertUser(UserDTO userDTO) {
		System.out.println("UserDAOImpl - insertUser");
		sqlSession.insert(namespace + ".insertUser", userDTO);
	}

	@Override
	public UserDTO checkId(String user_id) {
		System.out.println("UserDAOImpl - checkId");
		return sqlSession.selectOne(namespace + ".checkId", user_id);
	}

	@Override
	public UserDTO checkUser(UserDTO userDTO) {
		System.out.println("UserDAOImpl - checkUser");
		return sqlSession.selectOne(namespace + ".checkUser", userDTO);
	}

	@Override
	public UserDTO checkAdmin(UserDTO userDTO) {
		System.out.println("UserDAOImpl - checkAdmin");
		return sqlSession.selectOne(namespace + ".checkAdmin", userDTO);
	}

}

