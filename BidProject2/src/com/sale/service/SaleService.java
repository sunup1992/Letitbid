package com.sale.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.category.vo.CategoryVO;
import com.sale.dao.SaleDAO;

@Service
public class SaleService {
	@Autowired	
	private SaleDAO saleDAO;
	
	public String insert(CategoryVO categoryVO) {
		
		String year = categoryVO.getYear();
		String month = categoryVO.getMonth();
		String day = categoryVO.getDay();
		String hour = categoryVO.getHour();
		String min = categoryVO.getMin();
	
		String term = year +"-"+ month +"-"+ day+" "+hour+":"+ min +":"+"00";
		
		categoryVO.setTerm(term);
		
		return saleDAO.insert(categoryVO);
	}

}
