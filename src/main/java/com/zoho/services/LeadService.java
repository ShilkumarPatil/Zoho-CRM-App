package com.zoho.services;


import java.util.List;

import com.zoho.entitties.Lead;

public interface LeadService {

	public void saveOneLead(Lead lead);

	public Lead getLeadById(long id);
	
	public void deleteLeadById(long id);

	public List<Lead>getAllLeads();

}
