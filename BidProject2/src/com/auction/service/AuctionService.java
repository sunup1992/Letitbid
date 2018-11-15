package com.auction.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.dao.AuctionDao;
import com.auction.vo.AuctionVO;
import com.auction.vo.BidVO;
import com.auction.vo.ReplyVO;

@Service
public class AuctionService {
	@Autowired
	private AuctionDao dao;
	
	public AuctionVO auction(String code) {
		return dao.auction(code);
	}
	public List<ReplyVO> reply(String code) {
		return dao.reply(code);
	}
	
	
	
	
	public BidVO maxPrice(String code){
		BidVO vo = dao.maxPrice(code);
		
		//날짜 계산
		String term = vo.getTerm();
		Date today = new Date();
		SimpleDateFormat dateForm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			Date dday = dateForm.parse(term);
			long datetime = dday.getTime();
			today = dateForm.parse(dateForm.format(today));
			long todaytime = today.getTime();
			if((datetime - todaytime)<0) {
				vo.setTerm("fin");
				return vo;
			}
		
			long min = (datetime - todaytime) / 60000;
			long hour = (datetime - todaytime) / 3600000;
			long date = hour/24;


			String ddate = String.valueOf(date);
			String dhour = null;
			String dmin = null;
			if((hour-(date*24))<10) {
				dhour = "0" + String.valueOf(hour-(date*24));
			}else {
				dhour = String.valueOf(hour-(date*24));
			}
			if(((min-hour*60)+1)<10) {
				dmin = "0" + String.valueOf((min-hour*60)+1);
			}else {
				dmin = String.valueOf((min-hour*60)+1);
			}
				
			
			String dtime = ddate + dhour + dmin;
			vo.setTerm(dtime);
			
		} catch (ParseException e) {
			e.printStackTrace();
		}

		return vo;
	}

	public boolean auctionProc(BidVO vo) {
		return dao.auctionProc(vo);
	}
	public boolean replyInsert(ReplyVO vo) {
		return dao.replyInsert(vo);
	}
	public boolean replyplus(ReplyVO vo) {
		return dao.replyplus(vo);
	}

	

}
