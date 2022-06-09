package com.demmarallen.project.hospital.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demmarallen.project.hospital.models.Appointments;
import com.demmarallen.project.hospital.models.Patient;
import com.demmarallen.project.hospital.services.AppointmentService;
import com.demmarallen.project.hospital.services.DoctorService;
import com.demmarallen.project.hospital.services.PatientService;

@Controller
public class AppointmentController {
	@Autowired
	public AppointmentService as;
	
	@Autowired
	public PatientService ps;
	
	@Autowired
	public DoctorService ds;
	
	
	@GetMapping("/new/appointment")
	public String newappt
	(
			@ModelAttribute("newApt") Appointments appt
			,Model model,HttpSession session
	) 
	{
		session.getAttribute("loggedInPatient");
		model.addAttribute("doctors",ds.findAllDoctors());
		return "appointment.jsp";
	}
	
	@PostMapping("/new/appointment")
	public String setappt
	(
			@Valid @ModelAttribute("newApt")Appointments appt,
			BindingResult result,
			HttpSession session,
			Model model,
			@RequestParam("doctor_id") Long docId
			
			) {
	if(result.hasErrors()) {
		session.getAttribute("loggedInPatient");
		model.addAttribute("doctors",ds.findAllDoctors());
		return"appointment.jsp";
	}
	System.out.println("Made it to create the form");
	appt.setDoctor(ds.finddoctor(docId));
	Long id= (Long) session.getAttribute("loggedInPatient");
	Patient patient= ps.findpatient(id);
	appt.setPatient(patient);
	
	as.createApp(appt);
	System.out.println("it saved");
	return "redirect:/patient/dashboard";

	
	}
	@GetMapping("/show/appointments/{id}")
	public String showappts(@ModelAttribute("newPatient")Patient patient,@PathVariable("id")Long id,Model model, HttpSession session) {
		
		model.addAttribute("patient",ps.findpatient(id));
		return "showappointments.jsp";
}
}
