package com.project.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.LoginVO;
import com.project.service.LoginService;
import com.project.utils.BaseMethods;

@Controller
public class ChangePasswordController {

	@Autowired 
	LoginService loginService;
	
	@RequestMapping(value="/doctor/changePassword",method=RequestMethod.GET)
	public ModelAndView loadCategory(){
		return new ModelAndView("/doctor/changePassword");
	}

	@RequestMapping(value="/doctor/changePasswordVerify",method=RequestMethod.POST)
	public ModelAndView changePasswordVerify(@RequestParam String oldPassword,@RequestParam String newPassword){
		
		String userName = BaseMethods.getUser();
		
		List loginList = loginService.searchLogin(userName);
		
		LoginVO loginVO = (LoginVO) loginList.get(0);
		
		if (loginVO.getPassword().equals(oldPassword)) {
			loginVO.setPassword(newPassword);
			this.loginService.insertLogin(loginVO);
			
			return new ModelAndView("redirect:/logout");
		}else{
			return new ModelAndView("redirect:/logout");
		}
		
	}

	

}
