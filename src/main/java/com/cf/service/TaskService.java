package com.cf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cf.entity.Task;
import com.cf.repository.TaskRepository;

@Service// its indicate this class belongs to service
public class TaskService {
	
	@Autowired
	private TaskRepository brepo;
	
	
	public void save(Task b) {
		brepo.save(b);
		
	}
	public List<Task>getAllTask(){
		return brepo.findAll();
		
	}
	public Task getTaskById(int id) {
		return brepo.findById(id).get();
	}

}
