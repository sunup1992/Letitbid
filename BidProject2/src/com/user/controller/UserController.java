package com.user.controller;



import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.AlternativeJdkIdGenerator;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.category.service.CategoryService;
import com.category.vo.CategoryVO;
import com.category.vo.CatogoryPaging;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.user.service.UserService;
import com.user.vo.UserVO;

@Controller
public class UserController {
	@Autowired
	UserService service;
	@Autowired
	CategoryService categoryService;
	/* NaverLoginBO */
	@Autowired
	NaverLoginBO naverLoginBO;
	

	private String apiResult = null;
	private JsonStringParse jsonparse = new JsonStringParse();

	
	
	
	@RequestMapping(value="/main.go", method=RequestMethod.GET)
	public ModelAndView list(@ModelAttribute CategoryVO category) {
		CatogoryPaging.categorycheck = false;
		return new ModelAndView("main", "list", categoryService.categoryList(category.getPage()));
	}
	
	

	
	
	@RequestMapping("/login.go")
	public ModelAndView login(Model model, HttpSession session) {
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		model.addAttribute("url", naverAuthUrl);
		return new ModelAndView("login");
	}
	
	@RequestMapping(value="/loginProc.go", method=RequestMethod.POST)
	public ModelAndView loginProc(@ModelAttribute UserVO user, HttpServletRequest request) {
		if(service.loginUser(user) != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginOK", service.loginUser(user));
			CatogoryPaging.categorycheck = false;
			return new ModelAndView("main", "list", categoryService.categoryList(1));
		}else {
			return new ModelAndView("login");
		}
	}
	
//네이버 로그인
	@RequestMapping(value="/naverLogin.go",method = RequestMethod.GET)
	public ModelAndView naverLogin(@RequestParam String code, @RequestParam String state, HttpSession session,  HttpServletRequest request) throws IOException {
		
		
		OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
		apiResult = naverLoginBO.getUserProfile(oauthToken);
		
		JSONObject jsonobj = jsonparse.stringToJson(apiResult, "response");
		String naver_code = jsonparse.JsonToString(jsonobj, "id");
		String name = jsonparse.JsonToString(jsonobj, "name");

		UserVO vo = new UserVO();
		vo.setNaver_code(naver_code);
		vo.setUsername(name);

		try {
			
			UserVO naverVO = service.naverLogin(vo);
			HttpSession session2 = request.getSession();
			if(naverVO == null) {
				System.out.println("controller : " + vo.getNaver_code());
				return new ModelAndView("insert", "naver_vo", vo);
			}else {
				session2.setAttribute("loginOK", naverVO);
				CatogoryPaging.categorycheck = false;
				return new ModelAndView("main", "list", categoryService.categoryList(1));
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}


		return new ModelAndView("login");

		
	}
	
	
	@RequestMapping("/logout.go")
	public ModelAndView logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		CatogoryPaging.categorycheck = false;
		return new ModelAndView("main", "list", categoryService.categoryList(1));
	}
	
	
	@RequestMapping("/insert.go")
	public ModelAndView insert() {
		UserVO vo = null;
		return new ModelAndView("insert", "naver_vo", vo);
	}
	
	@RequestMapping(value="/insertProc.go", method=RequestMethod.POST)
	public ModelAndView insertProc(@ModelAttribute UserVO user) {
		System.out.println(user.getId());
		System.out.println(user.getUsername());
		System.out.println(user.getNaver_code());
		if(service.insertUser(user)) {
			return new ModelAndView("insertOK");
		}
		return new ModelAndView("insertOK");
	}
	
	@RequestMapping(value="/idcheck.go", method=RequestMethod.GET)
	@ResponseBody
	public UserVO idcheck(@RequestParam(value="id") String user) {
		UserVO vo = service.idcheck(user);
		return vo;
	}

	
	@RequestMapping(value="/update.go", method=RequestMethod.POST)
	public ModelAndView update() {
		return new ModelAndView("update");
	}
	
	@RequestMapping(value="/updateProc.go", method=RequestMethod.POST)
	public ModelAndView updateProc(@ModelAttribute UserVO user, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("loginOK");
		session.setAttribute("loginOK", user);
		
		if(service.updateUser(user)) {
			CatogoryPaging.categorycheck = false;
			return new ModelAndView("main", "list", categoryService.categoryList(1));
		}
		return new ModelAndView("update");
	}
	
	@RequestMapping(value="/delete.go", method=RequestMethod.POST)
	public ModelAndView delete(@ModelAttribute UserVO user, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = ((UserVO)session.getAttribute("loginOK")).getId();
		if(service.deleteUser(id)) {
			session.invalidate();
			return new ModelAndView("login");
		}
		return null;
	}
	
	@RequestMapping("/searchPassword.go")
	public ModelAndView searchPassword() {
		return new ModelAndView("searchPassword");
	}
	
	@RequestMapping(value="/searchPassword2.go", method=RequestMethod.POST)
	public ModelAndView searchPassword2(@ModelAttribute UserVO user, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(service.searchPassword2(user) != null) {
			session.setAttribute("searchOK", service.searchPassword2(user));
			return new ModelAndView("searchPassword2");
		}else {
			return new ModelAndView("searchPasswordFail");
		}
	}
	
	@RequestMapping(value="/searchPassword3.go", method=RequestMethod.POST)
	public ModelAndView searchPassword3(@ModelAttribute UserVO user, HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		if(((UserVO)session.getAttribute("searchOK")).getPwanswer().equals(user.getPwanswer())) {
			return new ModelAndView("searchPasswordOK");
		}
		else {
			return new ModelAndView("searchPasswordFail2");
		}
	}
	
	@RequestMapping("/searchId.go")
	public ModelAndView searchId() {
		return new ModelAndView("searchId");
	}
	
	@RequestMapping(value="/searchId2.go", method=RequestMethod.POST)
	public ModelAndView searchId2(@ModelAttribute UserVO user, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(service.searchId2(user) != null) {
			session.setAttribute("searchOK", service.searchId2(user));
			return new ModelAndView("searchIdOK");
		}else {
			return new ModelAndView("searchIdFail");
		}
	}
}


