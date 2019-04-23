package com.project.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.LoginVO;
import com.project.service.LoginService;
import com.project.utils.BaseMethods;

@Controller
public class MainController extends BaseMethods{

	@Autowired
	LoginService loginService;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String loadInsert(){
		return "login";
	}	
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String loginPage(){
		return "login";
	}
	
	@RequestMapping(value = "/admin/index", method = RequestMethod.GET)
	public ModelAndView adminIndex() {
		String userName = BaseMethods.getUser();
		return new ModelAndView("/admin/index","username",userName);
	}
	
	@RequestMapping(value = "/doctor/index", method = RequestMethod.GET)
	public ModelAndView userIndex() 
	{
		String userName = BaseMethods.getUser();
		return new ModelAndView("/doctor/index","username",userName);
	}
	
	@RequestMapping(value = "/doctor/viewDetection", method = RequestMethod.GET)
	public ModelAndView viewDetetion() 
	{
		return new ModelAndView("/doctor/viewDetection");
	}

	
	@RequestMapping(value = "/logout", method = {RequestMethod.POST, RequestMethod.GET})	
	public String viewUserDetails(ModelMap model,HttpServletResponse response,HttpServletRequest request) {
		  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        if (auth != null) {
	            new SecurityContextLogoutHandler().logout(request, response, auth);
	            request.getSession().invalidate();
	            request.getSession().setAttribute("tempStatus", "success");
	            request.getSession().setAttribute("statusText", "Logout Successfully!");
	        }
	   return "login";
	}

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView load403() {
		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "/error", method = { RequestMethod.GET , RequestMethod.POST})
	public ModelAndView error() {
		return new ModelAndView("login");
	}

	@RequestMapping(value="step1", method= RequestMethod.GET)
	public ModelAndView step1(@ModelAttribute LoginVO loginVO)
	{
		return new ModelAndView("ForgotPassword");
	}
	
	@RequestMapping(value="searchstep1",method = RequestMethod.POST)
	public ModelAndView searchstep1(@RequestParam("username") String un,LoginVO loginVO,HttpSession session)
	{
		System.out.println("USERNAME>>>"+un);
		session.setAttribute("username", un);
		loginVO.setUsername(un);

		List ls=this.loginService.searchstep1(loginVO);
		System.out.println("List size>>>>>>>>>"+ls.size());
		if(ls!=null && !ls.isEmpty())
		{
			int OTP=generateOTP(4);
			System.out.println("OTP>>>>>"+OTP);
			String subject="otp";
			String content="otp:"+OTP;
			sendMail(un,subject, content);
			session.setAttribute("generatedOTP",OTP);
			return new ModelAndView("ChangeForgotPassword");
		}
		else
		{
			return new ModelAndView("redirect:/");	
		}   
	}
	@RequestMapping(value="step2", method = RequestMethod.POST)
	public ModelAndView step2(@RequestParam("password") String pwd ,LoginVO loginVO,HttpSession session)
	{
		String userName= (String)session.getAttribute("username");
		loginVO.setUsername(userName);
		loginVO.setPassword(pwd);
		
		this.loginService.updatePassword(loginVO);
		return new ModelAndView("redirect:/");
	}
	
}
