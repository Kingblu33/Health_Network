package com.demmarallen.project.hospital.models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="doctor")
public class Doctor {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@NotNull
	@Size(min=3,max=255,message="first name has to be atleast 3 to 255 characters")
	private String firstName;
	
	@NotEmpty(message="User name is required!")
    @Size(min=2, max=200, message="User name must be be at least 2 characters")
    private String userName;
    
    @NotEmpty(message="Email is required!")
    @Email(message="Please enter a valid email!")
    private String email;
    
    @NotEmpty(message="Password is required!")
    @Size(min=8, max=200, message="Password must be at least 8 characters")
    private String password;
    
    @Transient
    @NotEmpty(message="Confirm Password is required!")
    @Size(min=8, max=200, message="Confirm Password must be at least 8 characters")
    private String confirm;
    
	@NotNull
	@Size(min=3,max=255,message="last Name  has to be atleast 3 to 255 characters")
	private String lastName;
	
	@NotNull
	@Size(min=3,max=255,message="first name has to be atleast 3 to 255 characters")
	private String service;
	
	@OneToMany(mappedBy="doctor",cascade = CascadeType.ALL)
	private List<Patient> patients;
	
	@OneToMany(mappedBy="doctor",cascade = CascadeType.ALL)
	private List<Appointments> appointments;
	
	
	public Doctor() {
		
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getConfirm() {
		return confirm;
	}


	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getService() {
		return service;
	}


	public void setService(String service) {
		this.service = service;
	}


	public List<Patient> getPatients() {
		return patients;
	}


	public void setPatients(List<Patient> patients) {
		this.patients = patients;
	}


	public List<Appointments> getAppointments() {
		return appointments;
	}


	public void setAppointments(List<Appointments> appointments) {
		this.appointments = appointments;
	}
	

}