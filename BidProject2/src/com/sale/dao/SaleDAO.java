package com.sale.dao;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.vo.BidVO;
import com.category.vo.CategoryVO;

@Repository
public class SaleDAO {
	@Autowired
	private SqlSessionFactory factory;
	
	public String insert(CategoryVO categoryVO) {
		BidVO vo = new BidVO();
		vo.setCat1(categoryVO.getCat1());
		vo.setId(categoryVO.getId());
		vo.setTerm(categoryVO.getTerm());
		vo.setFinalPrice(categoryVO.getPrice());
		
		String codeName;
		
		if(categoryVO.getCat1().equals("AA")) {
			factory.openSession().insert("saleNameSpace.saleInsertAA", categoryVO);
			factory.openSession().insert("auctionMapper.bidPlaceA", vo);
			codeName = factory.openSession().selectOne("saleNameSpace.code", categoryVO);
			return codeName;
		}else if(categoryVO.getCat1().equals("BB")) {
			factory.openSession().insert("saleNameSpace.saleInsertBB", categoryVO);
			factory.openSession().insert("auctionMapper.bidPlaceB", vo);
			codeName = factory.openSession().selectOne("saleNameSpace.code", categoryVO);
			return codeName;
		}else if(categoryVO.getCat1().equals("CC")) {
			factory.openSession().insert("saleNameSpace.saleInsertCC", categoryVO);
			factory.openSession().insert("auctionMapper.bidPlaceC", vo);
			codeName = factory.openSession().selectOne("saleNameSpace.code", categoryVO);
			return codeName;
		}else if(categoryVO.getCat1().equals("DD")) {
			factory.openSession().insert("saleNameSpace.saleInsertDD", categoryVO);
			factory.openSession().insert("auctionMapper.bidPlaceD", vo);
			codeName = factory.openSession().selectOne("saleNameSpace.code", categoryVO);
			return codeName;
		}else if(categoryVO.getCat1().equals("EE")) {
			factory.openSession().insert("saleNameSpace.saleInsertEE", categoryVO);
			factory.openSession().insert("auctionMapper.bidPlaceE", vo);
			codeName = factory.openSession().selectOne("saleNameSpace.code", categoryVO);
			return codeName;
		}else if(categoryVO.getCat1().equals("FF")) {
			factory.openSession().insert("saleNameSpace.saleInsertFF", categoryVO);
			factory.openSession().insert("auctionMapper.bidPlaceF", vo);
			codeName = factory.openSession().selectOne("saleNameSpace.code", categoryVO);
			return codeName;
		}else if(categoryVO.getCat1().equals("GG")) {
			factory.openSession().insert("saleNameSpace.saleInsertGG", categoryVO);
			factory.openSession().insert("auctionMapper.bidPlaceG", vo);
			codeName = factory.openSession().selectOne("saleNameSpace.code", categoryVO);
			return codeName;
		}else if(categoryVO.getCat1().equals("HH")) {
			factory.openSession().insert("saleNameSpace.saleInsertHH", categoryVO);
			factory.openSession().insert("auctionMapper.bidPlaceH", vo);
			codeName = factory.openSession().selectOne("saleNameSpace.code", categoryVO);
			return codeName;
		}
		
		return null;
		
	}
}
