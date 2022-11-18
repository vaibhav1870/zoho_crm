package com.zohocrm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entities.Contact;
import com.zohocrm.entities.Lead;
import com.zohocrm.services.ContactService;
import com.zohocrm.services.LeadService;

@Controller
public class LeadController {

	@Autowired
	private LeadService leadService;

	@Autowired
	private ContactService contactService;

	@RequestMapping("/view")
	public String viewCreateLeadPage() {
		return "create_lead";
	}

	@RequestMapping("/saveLead")
	public String saveOneLead(@ModelAttribute("lead") Lead lead, ModelMap mp) {
		leadService.saveLead(lead);
		mp.addAttribute("lead", lead);

		return "lead_info";
	}

	@RequestMapping("/listAllLeads")
	public String listAllLeads(ModelMap mp) {
		List<Lead> leads = leadService.findAllLeads();
		mp.addAttribute("leads", leads);
		return "lead_result";
	}

	@RequestMapping("/getLeadById")
	public String getLeadById(@RequestParam("id") Long id, ModelMap mp) {
		Lead lead = leadService.getLead(id);
		mp.addAttribute("lead", lead);
		return "lead_info";
	}

	@RequestMapping("/convert")
	public String convertLeadsInContact(@RequestParam("id") long id, ModelMap mp) {
		Lead lead = leadService.findLeadById(id);

		Contact contact = new Contact();
		contact.setFirstName(lead.getFirstName());
		contact.setLastName(lead.getLastName());
		contact.setEmail(lead.getEmail());
		contact.setLeadSource(lead.getLeadSource());
		contact.setMobile(lead.getMobile());

		contactService.saveContact(contact);

		leadService.deleteLead(id);

		List<Contact> contacts = contactService.findAllContacts();
		mp.addAttribute("contacts", contacts);

		return "contact_result";
	}

	
}
