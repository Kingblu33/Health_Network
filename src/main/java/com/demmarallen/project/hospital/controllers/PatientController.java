package com.demmarallen.project.hospital.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.demmarallen.project.hospital.models.LoginPatient;
import com.demmarallen.project.hospital.models.Patient;
import com.demmarallen.project.hospital.services.ImageService;
import com.demmarallen.project.hospital.services.PatientService;

@Controller
public class PatientController {
	@Autowired
	public PatientService ps;
	
	@Autowired
	public ImageService is;
	private String UPLOADED_FOLDER="src/main/resources/static/patientimage/";
	@GetMapping("/patient")
	public String patientregister(@ModelAttribute("newpatient")Patient patient) {
		return "patientregister.jsp";
	}
	
	@PostMapping("/patient/register")
	public String registerpatient
	(
			@Valid @ModelAttribute("newpatient") Patient patient
			,BindingResult result,
			HttpSession session
			) 
	{
		if(result.hasErrors()) {
			return "patientregister.jsp";
		}
		
		
		ps.createPatient1(patient);
		session.setAttribute("loggedInPatient", patient.getId());
		
		return"redirect:/patient/dashboard";
		
	}
	
	@GetMapping("/login/patient")
	public String loginpatient(@ModelAttribute("newlogin")LoginPatient logpatient) {
		
		return "patientlogin.jsp";
	}
	
    @PostMapping("/login/patient")
    public String patientlogin
    (
    		@Valid @ModelAttribute("newlogin")LoginPatient logpatient,
    		BindingResult result,
    		HttpSession session,
    		@ModelAttribute("newpatient")Patient patient)
    {
    	ps.authenticateUser(logpatient, result);
    	if(result.hasErrors()) {
    		return "patientlogin.jsp";
    	}
    	patient=ps.findpat(logpatient.getEmail());
    	session.setAttribute("loggedInPatient", patient.getId());
    	return "redirect:/patient/dashboard";
    }
	
	@GetMapping("/patient/dashboard")
	public String patientdash(Model model,HttpSession session) {
		
		Long id =(Long) session.getAttribute("loggedInPatient");
		Patient patient= ps.findpatient(id);
		model.addAttribute("loggedInPatient",patient);
	
		return "testforboot.jsp";
	}
	
	@PostMapping("/upload/image")
	public String patientdashupload
	(
			@RequestParam("pic") MultipartFile file,
			@RequestParam("description") String desc,
			HttpSession session,RedirectAttributes redirectAttributes
	) 
	{
	

		Long id =(Long) session.getAttribute("loggedInPatient");
		Patient patient= ps.findpatient(id);
	
	try {
		
		byte[] bytes=file.getBytes();
		Path path= Paths.get(UPLOADED_FOLDER+file.getOriginalFilename());
		Files.write(path, bytes);
		String url="/patientimage/" + file.getOriginalFilename();
		
		is.upload(url,desc, patient);
	}
	catch(IOException e) {
		e.printStackTrace();
	}

		return "redirect:/patient/dashboard";
	}
}

