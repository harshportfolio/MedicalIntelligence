package com.project.Controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.XrayVO;
import com.project.service.XrayService;

@Controller
public class XrayController {
	@Autowired
	XrayService xrayService;
	
	@RequestMapping(value="/doctor/uploadXray",method=RequestMethod.GET)
	public ModelAndView uploadXray()
	{
		return new ModelAndView("doctor/addXray","xrayVO",new XrayVO());
	}
	
	@RequestMapping(value="/doctor/insertXray",method=RequestMethod.POST)
	public ModelAndView insertXray(@ModelAttribute XrayVO xrayVO,@RequestParam("file") MultipartFile file ,HttpSession httpSession)
	{

		String path = httpSession.getServletContext().getRealPath("/");
		String xrayFilePath = path +"document//x-ray//";
		String xrayFileName = file.getOriginalFilename();
		
		try {
			byte b[] = file.getBytes();
			
			BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(xrayFilePath+"/"+xrayFileName));
			bufferedOutputStream.write(b);
			bufferedOutputStream.flush();
			bufferedOutputStream.close();
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		xrayVO.setXrayFileName(xrayFileName);
		xrayVO.setXrayFilePath(xrayFilePath);
		this.xrayService.addXray(xrayVO);
		
		return new ModelAndView("redirect:/doctor/uploadXray");
	}
}
