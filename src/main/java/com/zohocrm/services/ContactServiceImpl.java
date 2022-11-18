package com.zohocrm.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zohocrm.entities.Contact;
import com.zohocrm.repositories.ContactRepository;
@Service
public class ContactServiceImpl implements ContactService {
	
	@Autowired
	private ContactRepository contactRepo;

	@Override
	public void saveContact(Contact contact) {
		// TODO Auto-generated method stub
		contactRepo.save(contact);
		

	}

	@Override
	public List<Contact> findAllContacts() {
		// TODO Auto-generated method stub
		List<Contact> findAll = contactRepo.findAll();
		return findAll;
	}

	@Override
	public Contact getContact(long id) {
		// TODO Auto-generated method stub
		Contact byId = contactRepo.getById(id);
		return byId;
	}

	@Override
	public Contact findContactById(long id) {
		// TODO Auto-generated method stub
		Optional<Contact> findById = contactRepo.findById(id);
		Contact contact = findById.get();
		return contact;
	}

}
