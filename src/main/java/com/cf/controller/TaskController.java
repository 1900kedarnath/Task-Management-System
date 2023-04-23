package com.cf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.cf.entity.Task;
import com.cf.entity.TaskList;
import com.cf.service.TaskService;
import com.cf.service.TaskListService;

@Controller

public class TaskController {
	@Autowired
	private TaskService service;

	

	@RequestMapping("/")
	public String home() {
		return "index";

	}

	@RequestMapping("/assigntask")
	public String taskRegister(Model m) {
		m.addAttribute("task",new Task());
		return "assignTask";

	}
	
	@PostMapping("/save")
	public String addtask(@ModelAttribute("task") Task b) {// its send data from view to controller
		service.save(b);
		return "redirect:/";

	}

	@GetMapping("/availabletask")
	public String getAlltask(Model m) {
		List<Task> list = service.getAllTask();
		System.out.println(list);
		m.addAttribute("task",list);
		return "taskList";

	}

	
 
	
}
