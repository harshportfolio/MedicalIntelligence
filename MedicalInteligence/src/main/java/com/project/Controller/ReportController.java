package com.project.Controller;



import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.LoginVO;
import com.project.service.LoginService;
import com.project.service.ReportService;
import com.project.service.XrayService;
import com.project.utils.BaseMethods;

@Controller
public class ReportController {
	
	@Autowired
	LoginService loginService;
	
	@Autowired
	ReportService reportService;
	
	
	@RequestMapping(value="/doctor/viewReport",method=RequestMethod.GET)
	public ModelAndView viewReport()
	{
		String userName = BaseMethods.getUser();

		List loginList  = loginService.searchLogin(userName);
		LoginVO loginVO2 = (LoginVO) loginList.get(0);	
		
		List ls = this.reportService.viewReport(loginVO2);
		return new ModelAndView("doctor/viewReport","reportList",ls);
	}
	
	

}
