
package dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import domain.FindDTO;
import domain.UserDTO;

@Repository
public class FindDAOImpl implements FindDAO{
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "mapper.FindMapper";

	@Override
	public FindDTO Findid(FindDTO findDTO) {
		System.out.println("FindDAOImpl - Findid()");
		return sqlSession.selectOne(namespace + ".FindId", findDTO);
	}
	
	@Override
	public FindDTO FindPwd(FindDTO findDTO) {
		System.out.println("FindDAOImpl - FindPwd()");
		return sqlSession.selectOne(namespace + ".FindPwd", findDTO);
	}

}

