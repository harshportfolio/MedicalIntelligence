package com.project.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.FeedbackVO;
import com.project.model.LoginVO;
import com.project.service.FeedbackService;
import com.project.service.LoginService;
import com.project.utils.BaseMethods;

@Controller
public class FeedbackController {
	@Autowired
	FeedbackService feedBackService;
	
     @Autowired
     LoginService loginService;
	
	@RequestMapping(value="/doctor/addFeedback",method=RequestMethod.GET)
	public ModelAndView addFeedback()
	{
		return new ModelAndView("doctor/addFeedback","feedBackVO",new FeedbackVO());
	}
	
	@RequestMapping(value="/doctor/insertFeedback",method=RequestMethod.POST)
	public ModelAndView insertFeedback(@ModelAttribute FeedbackVO feedBackVO)
	{

		String userName = BaseMethods.getUser();

		List loginList  = loginService.searchLogin(userName);
		
		LoginVO loginVO2 = (LoginVO) loginList.get(0);		
		feedBackVO.setLoginVO(loginVO2);
		this.feedBackService.insertFeedback(feedBackVO);
		
		return new ModelAndView("redirect:/doctor/addFeedback");
	}
	
	@RequestMapping(value="/admin/viewFeedback",method=RequestMethod.GET)
	public ModelAndView viewFeedback()
	{
		List feedbackList=this.feedBackService.viewFeedback();
		return new ModelAndView("admin/viewFeedback","feedbackList",feedbackList);
	}
	
	@RequestMapping(value="/doctor/viewFeedback",method=RequestMethod.GET)
	public ModelAndView viewFeedback2()
	{
		List feedbackList=this.feedBackService.viewFeedback();
		return new ModelAndView("doctor/viewFeedback","feedbackList",feedbackList);
	}
}
