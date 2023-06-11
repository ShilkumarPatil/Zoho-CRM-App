package com.zoho.services;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.zoho.entitties.Billing;
import com.zoho.repositories.BillingRepositoty;

@Component
public class BillingServiceImpl implements BillingService {
	
	@Autowired
	private BillingRepositoty billingRepo;

	@Override
	public void generateBill(Billing bill) {
		 billingRepo.save(bill);
	}

	@Override
	public List<Billing> getAllBills() {
		List<Billing> billing = billingRepo.findAll();
		return billing;
	}


}
