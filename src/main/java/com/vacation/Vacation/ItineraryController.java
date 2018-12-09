package com.vacation.Vacation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.vacation.Vacation.entity.Suggestion;
import com.vacation.Vacation.entity.YelpSearch;
import com.vacation.Vacation.repo.SuggestionRepository;

@Controller
public class ItineraryController {

	@Autowired
	SuggestionRepository s;

	@Value("${yelp.key}")
	String yelpKey;
	

	
}
