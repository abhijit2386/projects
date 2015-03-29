package com.bharatonjava.hospital.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/patient")
public class PatientController {

	@RequestMapping(value="/register", method = RequestMethod.GET)
	public String registerPatient(){
		
		return "patientRegistration";
	}
	
	@RequestMapping(value="/all", method = RequestMethod.GET)
	public String allPatients(Model model){
		
		model.addAttribute("patient", "Bharat Sharma");
		
		return "patients";
	}
	
}