package com.hm.portfolio.main.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/main")
public class MainController {
	
	@RequestMapping("/introduce")
	public String introduce(HttpServletRequest request, String type, String btnType) {
		request.setAttribute("btnType", btnType);
		request.setAttribute("type", type);
		return "main/introduce";
	}
	
	@RequestMapping("/skills")
	public String skills() {
		return "main/skills";
	}
	
	@RequestMapping("/project")
	public String project(HttpServletRequest request, String type) {
		request.setAttribute("type", type);
		return "main/project";
	}
	
	@RequestMapping("/contact")
	public String contact() {
		return "main/contact";
	}
	
	@RequestMapping("/study")
	public String study() {
		return "main/study";
	}
	@RequestMapping("/fileDownload")
	@ResponseBody
	public byte[] fileDownload(@RequestParam String oName,
          HttpServletRequest request,
          HttpServletResponse response) throws IOException {

	//저장된 파일 디렉토리
	String saveDirectory = request.getSession().getServletContext()//applicationContext객체
	                   .getRealPath("/resources/upload");
	File savedFile = new File(saveDirectory+"/"+oName);
	
	System.out.println("saveDirectory"+saveDirectory);
	System.out.println("savedFile"+savedFile);
	response.setHeader("Content-Type", "application/octet-stream); charset=utf-8");
	response.setHeader("Content-Disposition", "attachment;fileName="+new String(oName.getBytes("UTF-8"), "ISO-8859-1")+"");
	response.setHeader("Content-Length", Long.toString(savedFile.length()));
	
	
	return Files.readAllBytes(savedFile.toPath());
	}
}
