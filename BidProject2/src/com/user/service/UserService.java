package com.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.dao.UserDao;
import com.user.vo.UserVO;

@Service
public class UserService {
	@Autowired
	private UserDao dao;
	
	public UserVO loginUser(UserVO user) {
		return dao.loginUser(user);
	}

	public boolean insertUser(UserVO user) {
		return dao.insertUser(user);
	}

	public boolean deleteUser(String id) {
		return dao.deleteUser(id);
	}

	public boolean updateUser(UserVO user) {
		return dao.updateUser(user);
	}

	public UserVO searchPassword2(UserVO user) {
		return dao.searchPassword2(user);
	}

	public UserVO searchId2(UserVO user) {
		return dao.searchId2(user);
	}

	public UserVO idcheck(String user) {
		return dao.idcheck(user);
	}
}
