package com.zohocrm.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zohocrm.entities.Lead;
import com.zohocrm.repositories.LeadRepository;

@Service
public class LeadServiceImpl implements LeadService {
	@Autowired
	private LeadRepository leadRepository;

	@Override
	public void saveLead(Lead lead) {
		try {
			leadRepository.save(lead);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	@Override
	public List<Lead> findAllLeads() {
		List<Lead> leads = leadRepository.findAll();
		return leads;
	}

	@Override
	public Lead getLead(long id) {
		// TODO Auto-generated method stub
		Optional<Lead> leadId = leadRepository.findById(id);
		Lead lead = leadId.get();
		return lead;
	}

	@Override
	public Lead findLeadById(long id) {
		// TODO Auto-generated method stub
		Optional<Lead> lead = leadRepository.findById(id);
		Lead leads = lead.get();
		return leads;
	}

	@Override
	public void deleteLead(long id) {
		// TODO Auto-generated method stub
		leadRepository.deleteById(id);
		
	}

}
