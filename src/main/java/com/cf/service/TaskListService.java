package com.cf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cf.entity.TaskList;
import com.cf.repository.TaskListRepository;

@Service
public class TaskListService {
	@Autowired
	private TaskListRepository mytask;
	
	public void saveMytasks(TaskList task) {
		mytask.save(task);
		
	}
	public List<TaskList> getAllMytasks(){
		return mytask.findAll();
		
	}

}
