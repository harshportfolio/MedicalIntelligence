package com.project.Controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.DatasetVO;
import com.project.model.PackageVO;
import com.project.service.DatasetService;

@Controller
public class DatasetController {

	@Autowired
	DatasetService datasetService;
	
	
	@RequestMapping(value="/admin/addDataset",method=RequestMethod.GET)
	public ModelAndView AddPackage()
	{
		return new ModelAndView("admin/addDataset","DatasetVO",new DatasetVO());
	}
	
	@RequestMapping(value="/admin/insertDataset",method=RequestMethod.POST)
	public ModelAndView insertDataset(@ModelAttribute DatasetVO datasetVO,@RequestParam("file") MultipartFile file ,HttpSession httpSession)
	{
		
		String path = httpSession.getServletContext().getRealPath("/");
		String datasetFilePath = path +"document//dataset//";
		String datasetFileName = file.getOriginalFilename();
		
		try {
			byte b[] = file.getBytes();
			
			BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(datasetFilePath+"/"+datasetFileName));
			bufferedOutputStream.write(b);
			bufferedOutputStream.flush();
			bufferedOutputStream.close();
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		datasetVO.setDatasetFilePath(datasetFilePath);
		datasetVO.setDatasetFileName(datasetFileName);

		this.datasetService.insertDataset(datasetVO);
		return new ModelAndView("redirect:/admin/addDataset");
	}
	
	@RequestMapping(value="/admin/viewDataset",method=RequestMethod.GET)
	public ModelAndView viewDataset()
	{
		List datasetList=this.datasetService.viewDatatset();	
		System.out.println("list"+datasetList.size());
		return new ModelAndView("admin/viewDataset","datasetList",datasetList);
	}
	
	@RequestMapping(value="/admin/deleteDataset",method=RequestMethod.GET)
	public ModelAndView deletePackage(@ModelAttribute DatasetVO datasetVO,@RequestParam String id)
	{
		datasetVO.setDatasetId(Integer.parseInt(id));
		List datasetList = this.datasetService.editDataset(datasetVO);
		
		DatasetVO datasetVO2 = (DatasetVO)datasetList.get(0);
		datasetVO2.setStatus(false);
	
		this.datasetService.insertDataset(datasetVO2);
		
		return new ModelAndView("redirect:/admin/viewDataset");
	}
	/*
	@RequestMapping(value="editDataset",method=RequestMethod.GET)
	public ModelAndView editPackage(@ModelAttribute DatasetVO datasetVO,@RequestParam String id)
	{
		datasetVO.setDatasetId(Integer.parseInt(id));
		List ls=this.datasetService.editDataset(datasetVO);
		return new ModelAndView("admin/updateDataset","datasetVO",(DatasetVO)ls.get(0));
	}
	
	@RequestMapping(value="updateDataset",method=RequestMethod.POST)
	public ModelAndView updatePackage(@ModelAttribute DatasetVO datasetVO,@RequestParam String datasetId,String datasetName,String datasetDescription,String datasetFile)
	{
		datasetVO.setDatasetId(Integer.parseInt(datasetId));
		datasetVO.setDatasetName(datasetName);
		datasetVO.setDatasetDescription(datasetDescription);
		datasetVO.setDatasetFile(datasetFile);
		this.datasetService.updateDataset(datasetVO);
		return new ModelAndView("redirect:/viewDataset");
	}
	

*/
	}
