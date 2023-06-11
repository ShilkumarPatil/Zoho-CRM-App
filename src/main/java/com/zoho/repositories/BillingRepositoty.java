package com.zoho.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zoho.entitties.Billing;

public interface BillingRepositoty extends JpaRepository<Billing, Long> {

}
