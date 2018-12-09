package com.vacation.Vacation.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vacation.Vacation.entity.Tour;

public interface TourRepository extends JpaRepository<Tour, String>{

	Tour findByCategory(String category);
	Tour findByClimate(String climate);
}
