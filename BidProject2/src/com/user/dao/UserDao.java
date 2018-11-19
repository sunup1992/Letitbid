package com.user.dao;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.user.vo.UserVO;

@Repository
public class UserDao {
	@Autowired
	private SqlSessionFactory factory;
	
	public UserVO loginUser(UserVO user) {
		UserVO vo = factory.openSession().selectOne("bidMapper.loginUser", user);
		return vo;
	}
	
	public UserVO naverLogin(UserVO vo) {
		return factory.openSession().selectOne("bidMapper.naverLogin", vo);
	}
	
	
	public boolean insertUser(UserVO user) {
		int n = factory.openSession().insert("bidMapper.insertUser", user);
		return (n > 0) ? true : false;
	}


	public boolean deleteUser(String id) {
		int n = factory.openSession().delete("bidMapper.deleteUser", id);
		return (n > 0) ? true : false;
	}

	public boolean updateUser(UserVO user) {
		int n = factory.openSession().update("bidMapper.updateUser", user);
		return (n > 0) ? true : false;
	}

	public UserVO searchPassword2(UserVO user) {
		UserVO vo = factory.openSession().selectOne("bidMapper.searchPassword2", user);
		return vo;
	}

	public UserVO searchId2(UserVO user) {
		UserVO vo = factory.openSession().selectOne("bidMapper.searchId2", user);
		return vo;
	}

	public UserVO idcheck(String user) {
		UserVO vo = factory.openSession().selectOne("bidMapper.idcheck", user);
		return vo;
	}

	
}
