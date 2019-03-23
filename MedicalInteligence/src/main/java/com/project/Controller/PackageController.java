package com.project.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.PackageVO;
import com.project.service.PackageService;


@Controller
public class PackageController {
	
	@Autowired PackageService packageservice;
	
	
	@RequestMapping(value="/admin/addPackage",method=RequestMethod.GET)
	public ModelAndView AddPackage()
	{
		return new ModelAndView("admin/addPackage","packageVO",new PackageVO());
	}
	
	@RequestMapping(value="admin/insertPackage",method=RequestMethod.POST)
	public ModelAndView insertPackage(@ModelAttribute PackageVO packageVO)
	{
		 this.packageservice.insertPackage(packageVO);
		 return new ModelAndView("redirect:/admin/viewPackage");
	}
	
	@RequestMapping(value="admin/viewPackage",method=RequestMethod.GET)
	public ModelAndView viewPackage()
	{
		List packageList=this.packageservice.searchPackage();	
		return new ModelAndView("admin/viewPackage","packageList",packageList);
		
	}
	
	@RequestMapping(value="/admin/deletePackage",method=RequestMethod.GET)
	public ModelAndView deletePackage(@ModelAttribute PackageVO packageVO,@RequestParam String id)
	{
		packageVO.setPackageId(Integer.parseInt(id));
		List packageList = this.packageservice.editPackage(packageVO);
		
		PackageVO packageVO2 = (PackageVO)packageList.get(0);
		packageVO2.setStatus(false);
	
		this.packageservice.insertPackage(packageVO2);
		
		return new ModelAndView("redirect:/admin/viewPackage");
	}
	
	@RequestMapping(value="admin/editPackage",method=RequestMethod.GET)
	public ModelAndView editPackage(@ModelAttribute PackageVO packageVO,@RequestParam String id)
	{
		packageVO.setPackageId(Integer.parseInt(id));
		List ls=this.packageservice.editPackage(packageVO);
		return new ModelAndView("/admin/updatePackage","packageVO",(PackageVO)ls.get(0));
	}
	
	@RequestMapping(value="/admin/updatePackage",method=RequestMethod.POST)
	public ModelAndView updatePackage(@ModelAttribute PackageVO packageVO,@RequestParam String packageId,String packageName,String packageDescription,String packageDuration)
	{
		packageVO.setPackageId(Integer.parseInt(packageId));
		packageVO.setPackageName(packageName);
		packageVO.setPackageDescription(packageDescription);
		packageVO.setPackageDescription(packageDescription);
		this.packageservice.updatePackage(packageVO);
		return new ModelAndView("redirect:/admin/viewPackage");
	}
	
	@RequestMapping(value="/doctor/viewPackage",method=RequestMethod.GET)
	public ModelAndView userviewPackage()
	{
		List ls=this.packageservice.searchPackage();
		return new ModelAndView("doctor/viewPackage","packageList",ls);
	}
	
	
}
