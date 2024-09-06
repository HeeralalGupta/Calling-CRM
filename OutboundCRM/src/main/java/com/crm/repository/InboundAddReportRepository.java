package com.crm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.crm.model.InboundReport;

public interface InboundAddReportRepository extends JpaRepository<InboundReport, Long>{
	
	public InboundReport findByMobile(String mobile);
}
