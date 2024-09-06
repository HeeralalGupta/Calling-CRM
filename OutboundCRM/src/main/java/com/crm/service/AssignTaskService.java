package com.crm.service;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crm.model.AssignTask;
import com.crm.repository.AssignTaskRepository;

@Service
public class AssignTaskService {
	
	@Autowired
	private AssignTaskRepository assignTaskRepo;
	
	public AssignTask saveAssignedTask(AssignTask task) {
		task.setTime(LocalDateTime.now());
		return assignTaskRepo.save(task);
	}
	
	public AssignTask getAssignedTask(Long id) {
		return assignTaskRepo.findByUserIdAndTime(id);
	}
	
}
