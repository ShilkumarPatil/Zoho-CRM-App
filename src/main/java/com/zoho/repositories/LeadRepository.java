package com.zoho.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zoho.entitties.Lead;

public interface LeadRepository extends JpaRepository<Lead, Long> {

}
