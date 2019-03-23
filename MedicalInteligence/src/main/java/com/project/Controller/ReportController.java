package com.project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.service.XrayService;

@Controller
public class ReportController {
	
	@Autowired
	XrayService xrayService;
	
	
	/*@RequestMapping(value="/admin/viewReport",method=RequestMethod.GET)
	public ModelAndView viewReport()
	{
				
	}*/

}
