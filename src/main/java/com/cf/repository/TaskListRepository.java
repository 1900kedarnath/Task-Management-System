package com.cf.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cf.entity.TaskList;
@Repository
public interface TaskListRepository  extends JpaRepository<TaskList, Integer>{

}
