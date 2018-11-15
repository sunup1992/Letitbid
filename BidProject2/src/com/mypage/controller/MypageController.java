package com.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ban.vo.BanVO;
import com.category.vo.CategoryVO;
import com.mypage.service.MypageService;
import com.mypage.vo.TradeVO;

@Controller
public class MypageController {
	
	@Autowired
	private MypageService mybidService;
	
	

	@RequestMapping("/mypage.mp")
	public ModelAndView mypage() {
		return new ModelAndView("mypage");
	}
	
// 내상품현황
	@RequestMapping(value="/myBid.mp" , method=RequestMethod.GET)
	public ModelAndView list(@ModelAttribute CategoryVO categoryVO) {
		return new ModelAndView("myBid","list",mybidService.mybid(categoryVO));
	}
	
	
	@RequestMapping(value="/confirm.mp", method=RequestMethod.GET)
	public ModelAndView confirm(@ModelAttribute CategoryVO categoryVO) {
		return new ModelAndView("myBid","list", mybidService.confirm(categoryVO));
	}
	
	@RequestMapping(value="/trade.mp", method=RequestMethod.GET)
	public ModelAndView trade(@ModelAttribute TradeVO tradeVO) {
		System.out.println(tradeVO.getCode());
		System.out.println(tradeVO.getFinalPrice());
		return new ModelAndView("trade","vo", mybidService.trade(tradeVO));
	}
	
// 내 입찰 현황
	@RequestMapping(value="/myBidPlace.mp", method=RequestMethod.GET)
	public ModelAndView place(@ModelAttribute CategoryVO categoryVO) {
		return new ModelAndView("myBidPlace","list", mybidService.bidplace(categoryVO));
	}
	
	
	@RequestMapping(value="/banyou.mp" , method=RequestMethod.POST)
	public ModelAndView banyou(@ModelAttribute BanVO bann) {
		BanVO ban = bann;
		switch(bann.getReason()) {
		case "1" :  ban.setReason("연락 두절"); break;
		case "2" :  ban.setReason("추가 가격 인상 요구"); break;
		case "3" :  ban.setReason("제품 불량 및 미배송"); break;
		}
		boolean success = mybidService.banyou(ban);
		return new ModelAndView("mypage");
	}
	

	@RequestMapping(value="/banready.mp", method=RequestMethod.GET)
	public ModelAndView banready(@ModelAttribute BanVO ban) {
		return new ModelAndView("banready","ban",ban);
	}
	
	@RequestMapping(value="/banlist.mp")
	public ModelAndView bantest() {
		return new ModelAndView("banlist","list",mybidService.banlist());
	}
	
}
