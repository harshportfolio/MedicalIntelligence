package com.project.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.DoctorVO;
import com.project.model.LoginVO;
import com.project.service.DoctorService;
import com.project.service.LoginService;
import com.project.utils.BaseMethods;

@Controller
public class DoctorController {
	
	@Autowired DoctorService doctorservice;
	
	@Autowired LoginService loginService;
	
	
	@RequestMapping(value="/addDoctor",method=RequestMethod.GET)
	public ModelAndView AddDoctor()
	{
		return new ModelAndView("addDoctor","doctorVO",new DoctorVO());
	}
	
	@RequestMapping(value="insertDoctor",method=RequestMethod.POST)
	public ModelAndView insertDoctor(@ModelAttribute DoctorVO doctorVO,LoginVO loginVO)
	{
		loginVO.setUsername(doctorVO.getLoginVO().getUsername());
		loginVO.setPassword(doctorVO.getLoginVO().getPassword());
		loginVO.setEnabled("1");
		loginVO.setRole("ROLE_DOCTOR");
		
		this.loginService.insertLogin(loginVO);
		
		doctorVO.setLoginVO(loginVO);
		 this.doctorservice.insertDoctor(doctorVO);
		 return new ModelAndView("login");
	}	
	
	@RequestMapping(value="/admin/viewDoctor",method=RequestMethod.GET)
	public ModelAndView viewDoctor()
	{
		List doctorList=this.doctorservice.viewDoctor();
		return new ModelAndView("admin/viewDoctor","doctorList",doctorList);	
	}
	
	
	@RequestMapping(value="/doctor/editDoctor",method=RequestMethod.GET)
	public ModelAndView editDoctor(@ModelAttribute DoctorVO doctorVO,LoginVO loginVO)
	{
        String userName = BaseMethods.getUser();
		List ls=this.loginService.searchLogin(userName);
		
		loginVO = (LoginVO)ls.get(0);
		
		doctorVO.setLoginVO(loginVO);
		
		List doctorList=this.doctorservice.editDoctor(doctorVO);
		
		System.out.println("List========="+doctorList.size());
		return new ModelAndView("doctor/updateDoctor","doctorVO",(DoctorVO)doctorList.get(0));
	}
	
	@RequestMapping(value="/doctor/updateDoctor",method=RequestMethod.POST)
	public ModelAndView updateDoctor(@ModelAttribute DoctorVO doctorVO,LoginVO loginVO,@RequestParam String doctorId)
	{
		/*int id=Integer.parseInt(doctorId);
		doctorVO.setDoctorId(id);
		String userName = BaseMethods.getUser();
		List ls=this.loginService.searchLogin(userName);
		loginVO = (LoginVO)ls.get(0);
		
		doctorVO.setLoginVO(loginVO);	
		*/
		this.loginService.updateLogin(doctorVO.getLoginVO());
		
		this.doctorservice.updateDoctor(doctorVO);
		
		return new ModelAndView("doctor/index");
	}
}
