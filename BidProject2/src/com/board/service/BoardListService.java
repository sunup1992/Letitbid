package com.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.dao.BoardDAO;
import com.board.dto.BoardDTO;

@Service
public class BoardListService{	
	@Autowired
	private BoardDAO boardDAO;

	public List<BoardDTO> boardList(int pg) {
		return boardDAO.boardList(pg);
	}

	public boolean insert(BoardDTO boardDTO) {
		return boardDAO.insert(boardDTO);
	}

	public List<BoardDTO> boardView(BoardDTO boardDTO) {
		
		return boardDAO.boardView(boardDTO);
	}


	public List<BoardDTO> modify(BoardDTO boardDTO) {
		return boardDAO.modify(boardDTO);
	}

	public boolean update(BoardDTO boardDTO) {
		return boardDAO.update(boardDTO);
	}

	public List<BoardDTO> delete(BoardDTO boardDTO) {
		return boardDAO.delete(boardDTO);
	}

	public boolean reply(BoardDTO boardDTO) {
		return boardDAO.reply(boardDTO);
	}


}
