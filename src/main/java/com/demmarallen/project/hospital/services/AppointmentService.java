package com.demmarallen.project.hospital.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demmarallen.project.hospital.models.Appointments;

import com.demmarallen.project.hospital.repositories.AppointmentRepository;
import com.demmarallen.project.hospital.repositories.DoctorRepository;
import com.demmarallen.project.hospital.repositories.PatientRepository;

@Service
public class AppointmentService {
	@Autowired
	public PatientRepository pr;
	
	@Autowired
	public DoctorRepository dr;
	
	@Autowired
	public AppointmentRepository ar;
	
	public List<Appointments> allappointments(){
		return (List<Appointments>) ar.findAll();
		
	}
	
	public Appointments showone(Long id) {
		return ar.findById(id).orElse(null);
	}
	
	public Appointments createApp(Appointments appoint) {
		
		return ar.save(appoint);
		
	}
	
	public void deleteapp(Long id) {
		ar.deleteById(id);
	}
	
	
	
	

}
