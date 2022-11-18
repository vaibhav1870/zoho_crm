package com.zohocrm.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.utilities.EmailService;

@Controller
public class EmailController {
	@Autowired
	private EmailService emailService;

	@RequestMapping("/compose")
	public String composeEmail(@RequestParam("emailId") String email, ModelMap mp) {
		mp.addAttribute("email", email);
		return "compose_email";
	}

	@RequestMapping("/sendEmail")
	public String sendemail(@RequestParam("to") String to, @RequestParam("subject") String subject,
			@RequestParam("body") String body) {
		emailService.sendSimpleMessage(to, subject, body);

		return "compose_mail";
	}

}
