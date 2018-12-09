package com.vacation.Vacation.repo;


import org.springframework.data.jpa.repository.JpaRepository;

import com.vacation.Vacation.entity.Suggestion;

public interface SuggestionRepository extends JpaRepository<Suggestion, Integer> {

	
	Suggestion findBySuggestionid(Integer suggestionId);
	
}
