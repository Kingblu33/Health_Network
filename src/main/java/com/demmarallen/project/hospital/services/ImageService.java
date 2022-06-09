package com.demmarallen.project.hospital.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demmarallen.project.hospital.models.Images;
import com.demmarallen.project.hospital.models.Patient;
import com.demmarallen.project.hospital.repositories.PictureRepository;

@Service
public class ImageService {
	
	@Autowired
	public PictureRepository pr;
	
	public Images upload(String url,String desc,Patient patient) {
		Images img= new Images(url,desc,patient);
		
		return pr.save(img);
		
		
		
	}

}
