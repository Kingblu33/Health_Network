package com.demmarallen.project.hospital.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.demmarallen.project.hospital.models.Appointments;

@Repository
public interface AppointmentRepository extends CrudRepository<Appointments,Long>{

}
