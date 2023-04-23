package com.cf.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cf.entity.Task;
@Repository      // used to indicate that the class provides the mechanism 
                //for storage, retrieval, search, update and delete operation on objects
public interface TaskRepository extends JpaRepository<Task, Integer> {
	

}
