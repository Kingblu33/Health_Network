package com.demmarallen.project.hospital.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.demmarallen.project.hospital.models.Doctor;
import com.demmarallen.project.hospital.models.LoginDoctor;
import com.demmarallen.project.hospital.services.DoctorService;

@Controller
public class DoctorController {
   
	
	@Autowired
	public DoctorService ds;
	
	@GetMapping("/")
	public String index() {
	
		
	return "index.jsp";
	}
	
	@GetMapping("/register/doctor/page")
	public  String registerDoctor
	(
			@ModelAttribute("newDoctor")Doctor doctor
			) {
		
		return "doctorregister.jsp";
	}
//											Register                                                           //	
	@PostMapping("/registor/doctor")
	public String register(@Valid @ModelAttribute("newDoctor")Doctor doctor,BindingResult result,HttpSession session) {
		ds.validate(doctor, result);
		
		if(result.hasErrors()) {
			return "doctorregister.jsp";
		}
		
		ds.create(doctor);
		session.setAttribute("loggedInDoctor", doctor);
		return "redirect:/dashboard";
	}
	
	@GetMapping("/login/doctor")
	public String loginDoctor(@ModelAttribute("newLogin")Doctor doctor) {
		return "doctorlogin.jsp";
	}

	
	@PostMapping("/login/doctors")
	public String login(
			@Valid @ModelAttribute("newLogin")LoginDoctor loginDoctor,
			BindingResult result,
			HttpSession session,
			@ModelAttribute("newDoctor")Doctor loggedInDoctor 
			) 
	{
		ds.authenticateUser(loginDoctor, result);
		if(result.hasErrors()) {
			return"doctorlogin.jsp";
		}
	
		loggedInDoctor=ds.finddoc(loginDoctor.getEmail());
		session.setAttribute("loggedInDoctor",loggedInDoctor);
		return"redirect:/dashboard";
		
	
	}
	@GetMapping("/dashboard")
	public String dash(HttpSession session,Model model,Doctor doc) {

		if(session.getAttribute("loggedInDoctor")==null){
			return"redirect:/login/doctor";
		}
		else {
		session.getAttribute("loggedInDoctor");
	
		return "doctordashboard.jsp";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return"redirect:/login/doctor";
	}
}

