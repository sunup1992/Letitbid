package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.board.dto.BoardPaging;
import com.board.dao.BoardDAO;
import com.board.dto.BoardDTO;
import com.board.service.BoardListService;

@Controller
public class BoardController {
	int pg;// 현재페이지
	int pageBlock = 3;  
	int pageSize = 10;    
	StringBuffer pagingHTML;
	@Autowired
	BoardListService boardListService;
	BoardPaging boardPaging;

	@RequestMapping(value="/qna.bd", method = RequestMethod.GET)
	public ModelAndView list(@ModelAttribute BoardPaging boardPaging) {
		this.boardPaging = boardPaging;
		
		List<BoardDTO> boardlist = boardListService.boardList(boardPaging.getPg());
		if(boardlist == null) {
			return new ModelAndView("boardList");
		}else {
			return new ModelAndView("boardList", "list", boardlist);
		}
		
		
	}
	
	//==========================================================================================================
	
	
	
	
	@RequestMapping(value = "/write.bd")
	public ModelAndView insert() {
		return new ModelAndView("boardWrite");
	}

	@RequestMapping(value = "/write_proc.bd", method = RequestMethod.POST)
	public ModelAndView write(@ModelAttribute BoardDTO boardDTO) {
		
		if (boardListService.insert(boardDTO)) {
			return list(boardPaging);
		} else {
			return new ModelAndView("boardList", "list", boardListService.boardList(boardPaging.getPg()));
		}
	}

	@RequestMapping(value = "/boardview.bd", method = RequestMethod.GET)
	public ModelAndView view(@ModelAttribute BoardDTO boardDTO) {
		BoardDTO viewDto = new BoardDTO();
		viewDto = boardListService.boardView(boardDTO).get(0);
		return new ModelAndView("boardView", "view", viewDto);
	}

	@RequestMapping(value = "/modify.bd", method = RequestMethod.GET)
	public ModelAndView modify(@ModelAttribute BoardDTO boardDTO) {
		BoardDTO modifyDto = new BoardDTO();
		modifyDto = boardListService.modify(boardDTO).get(0);

		return new ModelAndView("boardModify", "modify", modifyDto);
	}


	@RequestMapping(value = "/reply.bd", method = RequestMethod.GET)
	public ModelAndView reply(@ModelAttribute BoardDTO boardDTO) {
		
		return new ModelAndView("boardReplyForm", "reply", boardDTO);

	}
	
	
	
	@RequestMapping(value = "/modify_proc.bd", method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute BoardDTO boardDTO) {
		if (boardListService.update(boardDTO)) {
			return list(boardPaging);
		} else {
			return new ModelAndView("boardList", "list", boardListService.boardList(boardPaging.getPg()));
		}
	}
	
	@RequestMapping(value = "/delete.bd", method = RequestMethod.GET)
	public ModelAndView delete(@ModelAttribute BoardDTO boardDTO) {
		boardListService.delete(boardDTO);
		
		return new ModelAndView("boardList", "list", boardListService.boardList(boardPaging.getPg()));

	}
	
	
	
	
	@RequestMapping(value = "/reply_proc.bd", method = RequestMethod.POST)
	public ModelAndView reply_proc(@ModelAttribute BoardDTO boardDTO) {
		if (boardListService.reply(boardDTO)) {
			return list(boardPaging);
		} else {
			return new ModelAndView("boardList", "list", boardListService.boardList(boardPaging.getPg()));
		}
	}

}
