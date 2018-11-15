package com.category.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.board.dto.BoardDTO;
import com.category.vo.CategoryVO;



@Repository
public class CategoryDAO {
	@Autowired
	private SqlSessionFactory factory;

	public List<CategoryVO> categoryList(int page) {
		List<CategoryVO> list = factory.openSession().selectList("categoryNameSpace.categorylist", page);
		
		int n = factory.openSession().selectOne("categoryNameSpace.totalCount");
		list.get(0).setTotal(n);
		list.get(0).setPage(page);
		
		return list;
		
	}


		public List<CategoryVO> getlist(CategoryVO vo) {
			List<CategoryVO> list = factory.openSession().selectList("categoryNameSpace.getlist", vo);
			
			int n = factory.openSession().selectOne("categoryNameSpace.categoryCount", vo);
			list.get(0).setTotal(n);
			list.get(0).setPage(1);
			return list;
		}
	
	
		

	public List<CategoryVO> getSearch(String word2) {
			String word = "%" + word2 + "%";
			List<CategoryVO> list = factory.openSession().selectList("categoryNameSpace.searchList", word);
			
			int n = factory.openSession().selectOne("categoryNameSpace.searchCount", word);
			
			if(n == 0) {
				return list;
			}else{
				list.get(0).setTotal(n);
				list.get(0).setPage(1);
				return list;
			}
			
			
		}
	
		
		
		
	public List<CategoryVO> getCategory(int page, String cat1) {
		Connection conn=null;
		List<CategoryVO> list = null;	
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(
					"jdbc:oracle:thin:@127.0.0.1:1521:xe",
					"edu", "1234");
		}catch(Exception e){
			e.printStackTrace();		
		}
		
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try{
			pstmt=conn.prepareStatement("SELECT a.CAT1,a.PRODNAME,a.PRICE,FINALPRICE,a.CONDITION,a.REF,CODE,a.ID,a.TERM,a.DESCRIP FROM (SELECT ROWNUM RN, AA.* FROM SALES AA WHERE CAT1 like ?  AND CONFIRM = 0)a JOIN (SELECT MAX(finalPrice) AS FINALPRICE, CODE FROM AUCTION WHERE CODE LIKE ? GROUP BY CODE) USING(CODE) WHERE RN>=?*10-9 AND RN<=?*10");
			pstmt.setString(1, "%"+ cat1 + "%");
			pstmt.setString(2, "%"+ cat1 + "%");
			pstmt.setInt(3, page);
			pstmt.setInt(4, page);
			rs=pstmt.executeQuery();
		
			list = new ArrayList();
			
			while(rs.next())
			{
				CategoryVO vo = new CategoryVO();
				vo.setCat1(rs.getString("CAT1"));
				vo.setProdname(rs.getString("PRODNAME"));
				vo.setPrice(rs.getInt("PRICE"));
				vo.setFinalPrice(rs.getInt("FINALPRICE"));
				vo.setCondition(rs.getString("CONDITION"));
				vo.setRef(rs.getString("REF"));
				vo.setTerm(rs.getString("TERM"));
				vo.setCode(rs.getString("CODE"));
				list.add(vo);
			}		
			
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				rs.close();
				pstmt.close();
			}catch(SQLException e){}
		}
		
		try{
			pstmt=conn.prepareStatement("SELECT COUNT(*) AS NUM FROM SALES WHERE CAT1 like ?");
			pstmt.setString(1, "%"+ cat1 + "%");
			rs=pstmt.executeQuery();
		
			
			while(rs.next())
			{
				list.get(0).setTotal(rs.getInt("NUM"));
			}		
			
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				rs.close();
				pstmt.close();
				conn.close();
			}catch(SQLException e){}
		}
		return list;	
	}


	
}
