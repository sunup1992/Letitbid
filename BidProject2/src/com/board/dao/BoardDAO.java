package com.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.SynthesizedAnnotation;
import org.springframework.stereotype.Repository;

import com.board.dto.BoardDTO;
@Repository
public class BoardDAO {
	@Autowired
	private SqlSessionFactory factory;

	public List<BoardDTO> boardList(int pg) {
		List<BoardDTO> list = factory.openSession().selectList("boardNameSpace.boardlist", pg);
		
		int n = factory.openSession().selectOne("boardNameSpace.totalCount");
		if(list.size() == 0) {
			return list;
		}
		list.get(0).setTotal(n);
		list.get(0).setPg(pg);
		
		return list;
	}

	
	public boolean insert(BoardDTO boardDTO) {
		int n = factory.openSession().insert("boardNameSpace.insert", boardDTO);
		return (n > 0) ? true : false;
	}

	public List<BoardDTO> boardView(BoardDTO boardDTO) {
		int n = factory.openSession().update("boardNameSpace.updatehit", boardDTO.getSeq());
		List<BoardDTO> list = factory.openSession().selectList("boardNameSpace.boardView", boardDTO);
		list.get(0).setPg(boardDTO.getPg());
		list.get(0).setSeq(boardDTO.getSeq());
		return list;

	}

	public List<BoardDTO> modify(BoardDTO boardDTO) {

		return factory.openSession().selectList("boardNameSpace.modify", boardDTO);

	}

	public boolean update(BoardDTO boardDTO) {
		int n = factory.openSession().update("boardNameSpace.update", boardDTO);
		return (n > 0) ? true : false;
	}

	public List<BoardDTO> delete(BoardDTO boardDTO) {
		return factory.openSession().selectList("boardNameSpace.delete", boardDTO);
	}


	
	
	
	
	
	
	public boolean reply(BoardDTO boardDTO) {
		BoardDTO originDto = (BoardDTO)factory.openSession().selectList("boardNameSpace.boardView", boardDTO).get(0);
		
		int n = factory.openSession().update("boardNameSpace.reply1",originDto);
		
		boardDTO.setRef(originDto.getRef());
		boardDTO.setLev(originDto.getLev()+1);
		boardDTO.setStep(originDto.getStep()+1);
		boardDTO.setPseq(originDto.getSeq());
		
		n = factory.openSession().insert("boardNameSpace.reply2",boardDTO);
		
		n = factory.openSession().update("boardNameSpace.reply3",originDto);
		
		return (n > 0) ? true : false;
	}




}
