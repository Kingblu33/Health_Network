package com.demmarallen.project.hospital.repositories;

import org.springframework.data.repository.CrudRepository;


import com.demmarallen.project.hospital.models.Doctor;

public interface DoctorRepository extends CrudRepository<Doctor,Long>{

	public Doctor findByEmail(String email);
}
