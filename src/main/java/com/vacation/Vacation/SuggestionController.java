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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.vacation.Vacation.entity.Suggestion;
import com.vacation.Vacation.entity.Tour;
import com.vacation.Vacation.entity.YelpSearch;
import com.vacation.Vacation.repo.SuggestionRepository;
import com.vacation.Vacation.repo.TourRepository;

@Controller
public class SuggestionController {

	@Value("${yelp.key}")
	String yelpKey;

	@Autowired
	SuggestionRepository s;

	@Autowired
	TourRepository t;

	private Suggestion s1 = new Suggestion();
	private Tour t1 = new Tour();

	@RequestMapping("/vacation-or-staycation")
	public ModelAndView determineVacationOrStaycation(
			@RequestParam("vacationOrStaycation") String vacationOrStaycation) {

		if (vacationOrStaycation.equals("Vacation")) {
			s1.setVacation(true);
			s.save(s1);
			return new ModelAndView("climate");
		} else if (vacationOrStaycation.equals("Staycation")) {
			s1.setVacation(false);
			s.save(s1);
			return new ModelAndView("in-or-out");
		}
		return new ModelAndView("error", "error", "Help!");
	}

	@RequestMapping("/climate")
	public ModelAndView determineClimate(@RequestParam("warmOrCold") String warmOrCold) {
		if (warmOrCold.equals("Warm")) {
			s1.setWarm(true);
			s.save(s1);
			return new ModelAndView("in-or-out");
		} else if (warmOrCold.equals("Cold")) {
			s1.setWarm(false);
			s.save(s1);
			return new ModelAndView("in-or-out");
		}
		return new ModelAndView("error", "error", "Help!");
	}

	@RequestMapping("/in-or-out")
	public ModelAndView determineInOrOut(@RequestParam("inOrOut") String inOrOut) {
		if (inOrOut.equals("Indoors")) {
			s1.setIndoors(true);
			s.save(s1);
			return new ModelAndView("gambler");
		} else if (inOrOut.equals("Outdoors")) {
			s1.setIndoors(false);
			s.save(s1);
			if ((s1.isVacation() && s1.isWarm()) || s1.isVacation() == false) {
				return new ModelAndView("natural-or-man-made");
			} else if (s1.isVacation() && s1.isWarm() == false) {
				return new ModelAndView("athletic-or-not");
			}
		}
		return new ModelAndView("error", "error", "Help!");
	}

	@RequestMapping("/natural-or-man-made")
	public ModelAndView determineNaturalOrManMade(@RequestParam("naturalOrManMade") String naturalOrManMade) {
		if (naturalOrManMade.equals("Natural")) {
			s1.setNatural(true);
			s.save(s1);

			if (s1.isVacation() && s1.isWarm()) {
				s1.setResult("Volcano Tour");
				s.save(s1);
				return new ModelAndView("budget");
			} else if (s1.isVacation() == false) {
				s1.setResult("Zipline");
				s.save(s1);
				return new ModelAndView("budget");
			}
		} else if (naturalOrManMade.equals("Man-Made")) {
			s1.setNatural(false);
			s.save(s1);

			if (s1.isVacation() && s1.isWarm()) {
				s1.setResult("Theme Park"); // at an exotic destination
				s.save(s1);
				return new ModelAndView("budget");
			} else if (s1.isVacation() == false) {
				s1.setResult("Theme Park"); // close to home
				s.save(s1);
				return new ModelAndView("budget");
			}
		}
		return new ModelAndView("error", "error", "Help!");
	}

	@RequestMapping("/athletic-or-not")
	public ModelAndView determineAthleticOrNot(@RequestParam("athleticOrNot") String athleticOrNot) {
		if (athleticOrNot.equals("Yes")) {
			s1.setAthletic(true);
			s1.setResult("Ski Tour");
			s.save(s1);
			return new ModelAndView("budget");
		} else if (athleticOrNot.equals("No")) {
			s1.setAthletic(false);
			s.save(s1);
			return new ModelAndView("animal-lover");
		}
		return new ModelAndView("error", "error", "Help!");
	}

	@RequestMapping("/animal-lover")
	public ModelAndView determineAnimalLover(@RequestParam("animalLover") String animalLover) {
		if (animalLover.equals("Yes")) {
			s1.setAnimalLover(true);
			s1.setResult("Whale Watching Tour");
			s.save(s1);
			return new ModelAndView("budget");

		} else if (animalLover.equals("No")) {
			s1.setAnimalLover(false);
			s1.setResult("Glacier Tour");
			s.save(s1);
			return new ModelAndView("budget");
		}
		return new ModelAndView("error", "error", "Help!");
	}

	@RequestMapping("/gambler")
	public ModelAndView determineGambler(@RequestParam("gamblerOrNot") String gamblerOrNot) {
		if (gamblerOrNot.equals("Yes")) {
			s1.setGambler(true);
			s.save(s1);

			if (s1.isVacation() && s1.isWarm()) {
				s1.setResult("Casino"); // someplace warm
				s.save(s1);
				return new ModelAndView("budget");
			} else if (s1.isVacation() && s1.isWarm() == false) {
				s1.setResult("Casino"); // someplace cold
				s.save(s1);
				return new ModelAndView("budget");
			} else if (s1.isVacation() == false) {
				s1.setResult("Casino"); // close to home
				s.save(s1);
				return new ModelAndView("budget");
			}

		} else if (gamblerOrNot.equals("No")) {
			s1.setGambler(false);
			s.save(s1);

			if (s1.isVacation() && s1.isWarm()) {
				s1.setResult("Spa"); // someplace warm
				s.save(s1);
				return new ModelAndView("budget");
			} else if (s1.isVacation() && s1.isWarm() == false) {
				s1.setResult("Spa"); // someplace cold
				s.save(s1);
				return new ModelAndView("budget");
			} else if (s1.isVacation() == false) {
				s1.setResult("Spa"); // close to home
				s.save(s1);
				return new ModelAndView("budget");
			}
		}
		return new ModelAndView("error", "error", "Help!");
	}

	@RequestMapping("/budget")
	public ModelAndView searchStaycation(@RequestParam("price") String price) {

		if (price.equals("$")) {
			price = "1";
		}
		if (price.equals("$$")) {
			price = "2";
		}
		if (price.equals("$$$")) {
			price = "3";
		}
		if (price.equals("$$$$")) {
			price = "4";
		}

		String term = s1.getResult();

		RestTemplate rt = new RestTemplate();

		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + yelpKey);
		headers.add("Accept", MediaType.APPLICATION_JSON_VALUE);
		HttpEntity<String> entity = new HttpEntity<>("parameters", headers);

		if (s1.isVacation() == false) {
			String location = "Detroit, MI";

			String url1 = "https://api.yelp.com/v3/businesses/search?term=" + term + "&location=" + location + "&price="
					+ price;
			ResponseEntity<YelpSearch> response1 = rt.exchange(url1, HttpMethod.GET, entity, YelpSearch.class);
			YelpSearch yelpSearch1 = response1.getBody();
			return new ModelAndView("suggestion-result", "yelpSearch", yelpSearch1.getBusinesses());
		}
//		} else if (s1.isVacation()) {
//			
//			String url1 = "https://api.yelp.com/v3/businesses/search?term=" + term + "&location=" + location1 + "&price=" + price;
//			String url2 = "https://api.yelp.com/v3/businesses/search?term=" + term + "&location=" + location2 + "&price=" + price;
//			String url3 = "https://api.yelp.com/v3/businesses/search?term=" + term + "&location=" + location3 + "&price=" + price;
//
//			ResponseEntity<YelpSearch> response1 = rt.exchange(url1, HttpMethod.GET, entity, YelpSearch.class);
//			ResponseEntity<YelpSearch> response2 = rt.exchange(url2, HttpMethod.GET, entity, YelpSearch.class);		
//			ResponseEntity<YelpSearch> response3 = rt.exchange(url3, HttpMethod.GET, entity, YelpSearch.class);		
//
//			YelpSearch yelpSearch1 = response1.getBody();
//			YelpSearch yelpSearch2 = response2.getBody();
//			YelpSearch yelpSearch3 = response2.getBody();
//
//			ModelAndView mv = new ModelAndView("yelp-result", "yelpSearch1", yelpSearch1.getBusinesses());
//			mv.addObject("yelpSearch2", yelpSearch2.getBusinesses());
//			mv.addObject("yelpSearch3", yelpSearch3.getBusinesses());
//
//			
//	return mv;
//			
//			
//			
//		}
		
			return new ModelAndView("error", "error", "Help!");
	}
}
