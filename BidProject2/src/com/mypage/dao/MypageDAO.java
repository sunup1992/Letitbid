package com.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ban.vo.BanVO;
import com.category.vo.CategoryVO;
import com.mypage.vo.TradeVO;

@Repository
public class MypageDAO {
	
	@Autowired
	private SqlSessionFactory factory;
	
	
	public List<CategoryVO> myBid(CategoryVO categoryVO) {
		return factory.openSession().selectList("myPageMapper.view",categoryVO);
	
	}


	public List<CategoryVO> confirm(CategoryVO categoryVO) {
		factory.openSession().update("myPageMapper.update", categoryVO);
		List<CategoryVO> list = factory.openSession().selectList("myPageMapper.viewByCode", categoryVO);
		return list;
	}

	public List<CategoryVO> bidplace(CategoryVO categoryVO) {
		List<CategoryVO> list = factory.openSession().selectList("myPageMapper.bidPlace",categoryVO);
		return list;
	}


	public TradeVO trade(TradeVO tradeVO) {
		TradeVO vo = factory.openSession().selectOne("myPageMapper.trade", tradeVO);
		System.out.println(vo.getUsername_bidder());
		System.out.println(vo.getUsername_seller());
		
		return vo;
	}


	public boolean banyou(BanVO ban) {
		System.out.println(ban.getBuyer_name());
		System.out.println(ban.getCode());
		System.out.println(ban.getProdname());
		int n = factory.openSession().insert("myPageMapper.ban",ban);
		
		
		return n > 0 ? true : false;
	}


	public List<BanVO> banlist() {
		
		return factory.openSession().selectList("myPageMapper.banlist");
	}



}
