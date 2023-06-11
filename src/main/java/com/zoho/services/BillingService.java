package com.zoho.services;


import java.util.List;

import com.zoho.entitties.Billing;

public interface BillingService {

	public void generateBill(Billing bill);

	public List<Billing> getAllBills();


}
