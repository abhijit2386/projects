package com.bharatonjava.gang.web.home;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import static com.bharatonjava.gang.utils.Constants.VIEW_HOMEPAGE;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(method = RequestMethod.GET, path = "/")
	public String showHomePage(){
		logger.info("Inside Home Controller");
		return VIEW_HOMEPAGE;
	}
}
