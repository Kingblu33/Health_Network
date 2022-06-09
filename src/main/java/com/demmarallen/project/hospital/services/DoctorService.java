package com.demmarallen.project.hospital.services;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;

import com.demmarallen.project.hospital.models.Doctor;
import com.demmarallen.project.hospital.models.LoginDoctor;
import com.demmarallen.project.hospital.repositories.DoctorRepository;

@Service
public class DoctorService {
	
	@Autowired
	public DoctorRepository doctorRepository;
	
	public void validate(Doctor newDoctor, Errors errors) {
		// Password Matching
		if(!newDoctor.getPassword().equals(newDoctor.getConfirm())) {
			errors.rejectValue("password", "Mismatch", "Password does not match!!!");
		}
		// Email Duplicate
		if(doctorRepository.findByEmail(newDoctor.getEmail())!=null) {
			errors.rejectValue("email", "unique", "Email is already taken!!!");
		}
			
	}
	public Doctor create(Doctor doctor) {
		String hashedPW = BCrypt.hashpw(doctor.getPassword(), BCrypt.gensalt());
		doctor.setPassword(hashedPW);
		return doctorRepository.save(doctor);
	}
	
	public boolean authenticateUser(LoginDoctor newLogin, Errors errors) {
		
		Doctor doctor = doctorRepository.findByEmail(newLogin.getEmail());
		if(doctor == null) {
			errors.rejectValue("email", "missingEmail", "Email not found!!!");
			return false;
		} else {
			if(!BCrypt.checkpw(newLogin.getPassword(), doctor.getPassword())) {
				errors.rejectValue("password", "Matches", "Invalid Password!!!");
				return false;
			}
		}
		
		return true;
	}
	
	
	public List<Doctor> findAllDoctors(){
		return (List<Doctor>) doctorRepository.findAll();
	}
	
	public Doctor finddoctor(Long id ) {
		return doctorRepository.findById(id).orElse(null);
	}
	
	public void deleteDoctor(Long id) {
		doctorRepository.deleteById(id);
	}
	
	public Doctor finddoc(String email) {
		return doctorRepository.findByEmail(email);
		
	}
}
