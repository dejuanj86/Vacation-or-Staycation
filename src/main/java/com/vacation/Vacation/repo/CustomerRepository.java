package com.vacation.Vacation.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vacation.Vacation.entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {

	Customer findByCustomerid(Integer customerId);
	
}
