package com.zoho.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zoho.entitties.Contact;

public interface ContactRepository extends JpaRepository<Contact, Long> {

}
