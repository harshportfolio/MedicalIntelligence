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
import com.project.service.DoctorService;

@Controller
public class DoctorController {
	
	@Autowired DoctorService doctorservice;
	
	
	@RequestMapping(value="/addDoctor",method=RequestMethod.GET)
	public ModelAndView AddDoctor()
	{
		return new ModelAndView("addDoctor","doctorVO",new DoctorVO());
	}
	
	@RequestMapping(value="insertDoctor",method=RequestMethod.POST)
	public ModelAndView insertDoctor(@ModelAttribute DoctorVO doctorVO)
	{
		 this.doctorservice.insertDoctor(doctorVO);
		 return new ModelAndView("login");
	}	
	
	@RequestMapping(value="/admin/viewDoctor",method=RequestMethod.GET)
	public ModelAndView viewDoctor()
	{
		List doctorList=this.doctorservice.viewDoctor();	
		return new ModelAndView("admin/viewDoctor","doctorList",doctorList);	
	}
	
	
/*	@RequestMapping(value="deleteDoctor",method=RequestMethod.GET)
	public ModelAndView deleteDoctor(@ModelAttribute DoctorVO doctorVO,@RequestParam String id)
	{
		doctorVO.setDoctorId(Integer.parseInt(id));
		this.doctorservice.deleteDoctor(doctorVO);
		return new ModelAndView("redirect:/viewDoctor");
	}
	
	
	@RequestMapping(value="editDoctor",method=RequestMethod.GET)
	public ModelAndView editDoctor(@ModelAttribute DoctorVO doctorVO,@RequestParam String id)
	{
		doctorVO.setDoctorId(Integer.parseInt(id));
		List ls=this.doctorservice.editDoctor(doctorVO);
		return new ModelAndView("admin/updateDoctor","doctorVO",(DoctorVO)ls.get(0));
	}
	
	@RequestMapping(value="updateDoctor",method=RequestMethod.POST)
	public ModelAndView updateDoctor(@ModelAttribute DoctorVO doctorVO,@RequestParam String doctorId,String doctorName,String doctorDescription,String doctorDuration)
	{
		doctorVO.setDoctorId(Integer.parseInt(doctorId));
		doctorVO.setDoctorName(doctorName);
		doctorVO.setDoctorDescription(doctorDescription);
		doctorVO.setDoctorDescription(doctorDescription);
		this.doctorservice.updateDoctor(doctorVO);
		return new ModelAndView("redirect:/viewDoctor");
	}
	*/
}
