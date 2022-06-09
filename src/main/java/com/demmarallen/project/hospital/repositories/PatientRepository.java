package com.demmarallen.project.hospital.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import com.demmarallen.project.hospital.models.Patient;

@Repository
public interface PatientRepository extends CrudRepository<Patient,Long> {

	public Patient findByEmail(String email);
}
