package com.crm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crm.model.User;
import com.crm.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	public User createUser(User user) {
		return userRepository.save(user);
	}
	
	public List<User> findAllUser() {
		return userRepository.findByIsAdmin(false);
	}
	
	public void deleteUser(Long id) {
		userRepository.deleteById(id);
	}
	
	
}
