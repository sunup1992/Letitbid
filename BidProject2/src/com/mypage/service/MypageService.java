package com.mypage.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ban.vo.BanVO;
import com.category.vo.CategoryVO;
import com.mypage.dao.MypageDAO;
import com.mypage.vo.TradeVO;

@Service
public class MypageService {
	@Autowired
	private MypageDAO mybidDAO;

	public List<CategoryVO> mybid(CategoryVO categoryVO) {

		List<CategoryVO> list = mybidDAO.myBid(categoryVO);
		
		for(CategoryVO vo : list) {
			String term = vo.getTerm();
			Date today = new Date();
			SimpleDateFormat dateForm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			try {
				Date dday = dateForm.parse(term);
				long datetime = dday.getTime();
				today = dateForm.parse(dateForm.format(today));
				long todaytime = today.getTime();
				if((datetime - todaytime)<0) {
					vo.setYear("0");
				}else {
			
				vo.setYear("1");
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}

			
			
		}
		
		return list;
	}

	public List<CategoryVO> confirm(CategoryVO categoryVO) {
		return mybidDAO.confirm(categoryVO);
	}
	
	
	public List<CategoryVO> bidplace(CategoryVO categoryVO) {
		
		List<CategoryVO> list = mybidDAO.bidplace(categoryVO);
		
		for(CategoryVO vo : list) {
			String term = vo.getTerm();
			Date today = new Date();
			SimpleDateFormat dateForm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			try {
				Date dday = dateForm.parse(term);
				long datetime = dday.getTime();
				today = dateForm.parse(dateForm.format(today));
				long todaytime = today.getTime();
				if((datetime - todaytime)<0) {
					vo.setYear("0");
				}else {
			
				vo.setYear("1");
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}

			
			
		}
		
		
		
		return list;
	}

	public TradeVO trade(TradeVO tradeVO) {
		return mybidDAO.trade(tradeVO);
	}

	public boolean banyou(BanVO ban) {
		
		return mybidDAO.banyou(ban);
	}

	public List<BanVO> banlist() {
		return mybidDAO.banlist();
	}

}
