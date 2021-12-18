
package service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import dao.FindDAO;

import domain.FindDTO;
import domain.UserDTO;


@Service
public class FindServiceImpl implements FindService{
	
	
@Inject
private	FindDAO findDAO;





	@Override
	public FindDTO findId(FindDTO findDTO) {

		System.out.println("FindServiceImpl - Findid()");
		return findDAO.Findid(findDTO);
	}



	@Override
	public FindDTO findPwd(FindDTO findDTO) {

		System.out.println("FindServiceImpl - Findid()");
		return findDAO.FindPwd(findDTO);
	}



}
