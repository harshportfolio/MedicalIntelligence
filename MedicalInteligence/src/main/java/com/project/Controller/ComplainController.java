package com.project.Controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.*;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.ComplainVO;
import com.project.model.LoginVO;
import com.project.service.ComplainService;
import com.project.service.LoginService;
import com.project.utils.BaseMethods;

@Controller
public class ComplainController {
	
	@Autowired
	ComplainService complainService;
	
	@Autowired
	LoginService loginService;
	
	
	@RequestMapping(value="/doctor/addComplain",method=RequestMethod.GET)
	public ModelAndView addComplain()
	{
		return new ModelAndView("doctor/complain","complainVO",new ComplainVO());
	}
	
	@RequestMapping(value="/doctor/insertComplain",method=RequestMethod.POST)
	public ModelAndView insertDataset(@ModelAttribute ComplainVO complainVO,@RequestParam(name="file") MultipartFile file ,HttpSession httpSession)
	{
		
		String userName = BaseMethods.getUser();
		
		List ls=this.loginService.searchLogin(userName);
		
		LoginVO loginVO = (LoginVO)ls.get(0);
		
		
		String path = httpSession.getServletContext().getRealPath("/");
		String complainFilePath = path +"document//complain//";
		String complainFileName = file.getOriginalFilename();
		
		try {
			byte b[] = file.getBytes();
			
			BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(complainFilePath+"/"+complainFileName));
			bufferedOutputStream.write(b);
			bufferedOutputStream.flush();
			bufferedOutputStream.close();
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Date d = new Date();
		
		
		DateFormat dateFormat = new SimpleDateFormat("dd/mm/yyyy hh:MM:ss");
		complainVO.setComplaintDate(dateFormat.format(d));
		complainVO.setLoginVO(loginVO);
		complainVO.setComplaintFileName(complainFileName);
		complainVO.setComplaintFilePath(complainFilePath);
		complainVO.setComplaintStatus("PENDING");
		
		this.complainService.insertComplain(complainVO);
		return new ModelAndView("redirect:/doctor/addComplain");
	}
	@RequestMapping(value="/admin/viewComplain",method=RequestMethod.GET)
	 public ModelAndView viewComplain()
	{
		List ls=this.complainService.viewComplain();
		return new ModelAndView("admin/viewComplain","complainList",ls);
		
	}
	
	@RequestMapping(value="/admin/replytoUser",method=RequestMethod.GET)
	public ModelAndView loadReply(@RequestParam("complainId")int complainId,@ModelAttribute ComplainVO complainVO) {
		
		
		complainVO.setComplainId(complainId);
		
		List complaintList = this.complainService.searchComplain(complainVO);
		
		return new ModelAndView("admin/addReply","complainVO",complaintList.get(0));
	}
	
	@RequestMapping(value="admin/insertReply",method=RequestMethod.POST)
	public ModelAndView insertReply(@ModelAttribute ComplainVO complainVO) {
		
		Date d = new Date();
		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
		
		complainVO.setReplyDate(dateFormat.format(d));
		complainVO.setComplaintStatus("resolved");
		
		this.complainService.insertComplain(complainVO);
		
		return new ModelAndView("redirect:/admin/viewComplain");
	}

	@RequestMapping(value="doctor/seeComplain",method=RequestMethod.GET)
	public ModelAndView seeComplaint(@ModelAttribute ComplainVO complainVO,LoginVO loginVO ) {
		
		
		String userName = BaseMethods.getUser();

		List loginList  = loginService.searchLogin(userName);
    	
    	System.out.println(userName);
		
		loginVO = (LoginVO) loginList.get(0);
		
		complainVO.setLoginVO(loginVO);
		
		List complaintList = this.complainService.seeComplain(complainVO);
		
		System.out.println(complaintList.get(0));
		
		return new ModelAndView("doctor/viewComplain","complaintList",complaintList);
		
	}
	
	
}
