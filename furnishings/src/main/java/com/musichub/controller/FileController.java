package com.musichub.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.musichub.model.FileUpload;

@Controller
public class FileController {
	
	@RequestMapping(value="/display")
	public String display()
	{
		return "fileupload";
	}
	
	@RequestMapping("/save")
	public String save(@ModelAttribute("uploadform") FileUpload fu,ModelMap map)
	{
		List<MultipartFile> files=fu.getF();
		List<String> filenames=new ArrayList<String>();
		if(null!= files && files.size()>0){
			for(MultipartFile mpf:files)
			{
				String filename=mpf.getOriginalFilename();
				filenames.add(filename);
			}
		}
		
		map.addAttribute("files",filenames);
		return "index";
		
	}
	

}
