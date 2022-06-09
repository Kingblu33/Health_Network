package com.demmarallen.project.hospital.services;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;


import com.demmarallen.project.hospital.models.LoginPatient;
import com.demmarallen.project.hospital.models.Patient;
import com.demmarallen.project.hospital.repositories.DoctorRepository;
import com.demmarallen.project.hospital.repositories.PatientRepository;

@Service
public class PatientService {

	
	@Autowired
	public PatientRepository pr;
	
	@Autowired
	public DoctorRepository dr;
	
	public void validate(Patient newPatient, Errors errors) {
		// Password Matching
		if(!newPatient.getPassword().equals(newPatient.getConfirm())) {
			errors.rejectValue("password", "Mismatch", "Password does not match!!!");
		}
		// Email Duplicate
		if(pr.findByEmail(newPatient.getEmail())!=null) {
			errors.rejectValue("email", "unique", "Email is already taken!!!");
		}
			
	}
	public Patient createPatient1(Patient patient) {
		String hashedPW = BCrypt.hashpw(patient.getPassword(), BCrypt.gensalt());
		patient.setPassword(hashedPW);
		
		
		return pr.save(patient);
	}
	
	public boolean authenticateUser(LoginPatient newLogin, Errors errors) {
		
		Patient patient = pr.findByEmail(newLogin.getEmail());
		if(patient == null) {
			errors.rejectValue("email", "missingEmail", "Email not found!!!");
			return false;
		} else {
			if(!BCrypt.checkpw(newLogin.getPassword(), patient.getPassword())) {
				errors.rejectValue("password", "Matches", "Invalid Password!!!");
				return false;
			}
		}
		
		return true;
	}
	
	
	public List<Patient> findallpatients(){
		return (List<Patient>) pr.findAll();
	}
	
	public Patient findpatient(Long id) {
		return pr.findById(id).orElse(null);
	}
	
	public void deletepatient(Long id) {
		pr.deleteById(id);
	}
	public Patient findpat(String email) {
		return pr.findByEmail(email);
	}
	
	

	
}
