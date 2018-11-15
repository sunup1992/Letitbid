package com.category.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.category.dao.CategoryDAO;
import com.category.vo.CategoryVO;

@Service
public class CategoryService {
	@Autowired
	private CategoryDAO categoryDAO;
	
	public List<CategoryVO> categoryList(int page) {
		
		Date today = new Date();
		SimpleDateFormat dateForm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		
		List<CategoryVO> list = categoryDAO.categoryList(page);
		for(CategoryVO i : list) {
			String term = i.getTerm();
			try {
				Date dday = dateForm.parse(term);
				long datetime = dday.getTime();
				today = dateForm.parse(dateForm.format(today));
				long todaytime = today.getTime();
				
				if((datetime - todaytime)<0) {
					i.setTerm("경매가 종료되었습니다.");
				}
			}catch(ParseException e) {
				e.printStackTrace();
			}
		}
		return list;

	
	}
	
	
	
	
	public List<CategoryVO> getCategory(int page, String cat1) {
		Date today = new Date();
		SimpleDateFormat dateForm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		
		List<CategoryVO> list = categoryDAO.getCategory(page, cat1);
		for(CategoryVO i : list) {
			String term = i.getTerm();
			try {
				Date dday = dateForm.parse(term);
				long datetime = dday.getTime();
				today = dateForm.parse(dateForm.format(today));
				long todaytime = today.getTime();
				
				if((datetime - todaytime)<0) {
					i.setTerm("경매가 종료되었습니다.");
				}
			}catch(ParseException e) {
				e.printStackTrace();
			}
		}
		return list;
		
	}
	
	
	
//카테고리별 main 소환	
	public List<CategoryVO> getlist(CategoryVO vo) {
		Date today = new Date();
		SimpleDateFormat dateForm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		
		List<CategoryVO> list = categoryDAO.getlist(vo);
		for(CategoryVO i : list) {
			String term = i.getTerm();
			try {
				Date dday = dateForm.parse(term);
				long datetime = dday.getTime();
				today = dateForm.parse(dateForm.format(today));
				long todaytime = today.getTime();
				
				if((datetime - todaytime)<0) {
					i.setTerm("경매가 종료되었습니다.");
				}
			}catch(ParseException e) {
				e.printStackTrace();
			}
		}
		return list;
		

	}




	public List<CategoryVO> getSearch(String word) {

		Date today = new Date();
		SimpleDateFormat dateForm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		
		List<CategoryVO> list = categoryDAO.getSearch(word);
		if(list != null) {
			for(CategoryVO i : list) {
				String term = i.getTerm();
				try {
					Date dday = dateForm.parse(term);
					long datetime = dday.getTime();
					today = dateForm.parse(dateForm.format(today));
					long todaytime = today.getTime();
					
					if((datetime - todaytime)<0) {
						i.setTerm("경매가 종료되었습니다.");
					}
				}catch(ParseException e) {
					e.printStackTrace();
				}
			}
			return list;
		}else {
			return list;
		}
		
		
	}

}
