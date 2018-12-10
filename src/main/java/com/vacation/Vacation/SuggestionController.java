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
	private Integer tourId;

	@RequestMapping("/email")
	public ModelAndView determineEmail(@RequestParam("emailAddress") String emailAddress) {
		s1.setEmail(emailAddress);
		s.save(s1);
		return new ModelAndView("vacation-or-staycation");
	}

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
				s1.setResult("volcano");
				s.save(s1);
				return new ModelAndView("budget");
			} else if (s1.isVacation() == false) {
				s1.setResult("homeZipLine");
				s.save(s1);
				return new ModelAndView("budget");
			}
		} else if (naturalOrManMade.equals("Man-Made")) {
			s1.setNatural(false);
			s.save(s1);

			if (s1.isVacation() && s1.isWarm()) {
				s1.setResult("exoticThemePark"); // at an exotic destination
				s.save(s1);
				return new ModelAndView("budget");
			} else if (s1.isVacation() == false) {
				s1.setResult("homeThemePark"); // close to home
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
			s1.setResult("ski");
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
			s1.setResult("whaleWatching");
			s.save(s1);
			return new ModelAndView("budget");

		} else if (animalLover.equals("No")) {
			s1.setAnimalLover(false);
			s1.setResult("glacier");
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
				s1.setResult("warmCasino"); // someplace warm
				s.save(s1);
				return new ModelAndView("budget");
			} else if (s1.isVacation() && s1.isWarm() == false) {
				s1.setResult("coldCasino"); // someplace cold
				s.save(s1);
				return new ModelAndView("budget");
			} else if (s1.isVacation() == false) {
				s1.setResult("homeCasino"); // close to home
				s.save(s1);
				return new ModelAndView("budget");
			}

		} else if (gamblerOrNot.equals("No")) {
			s1.setGambler(false);
			s.save(s1);

			if (s1.isVacation() && s1.isWarm()) {
				s1.setResult("warmSpa"); // someplace warm
				s.save(s1);
				return new ModelAndView("budget");
			} else if (s1.isVacation() && s1.isWarm() == false) {
				s1.setResult("coldSpa"); // someplace cold
				s.save(s1);
				return new ModelAndView("budget");
			} else if (s1.isVacation() == false) {
				s1.setResult("homeSpa"); // close to home
				s.save(s1);
				return new ModelAndView("budget");
			}
		}
		return new ModelAndView("error", "error", "Help!");
	}

	@RequestMapping("/budget")
	public ModelAndView searchStaycation(@RequestParam("priceLevel") String priceLevel) {

		String hotel = "";
		String attraction = "";
		String location = "";
		Double price = 0.0;

		if (s1.getResult().equals("coldCasino")) {
			tourId = 1;
		} else if (s1.getResult().equals("warmCasino")) {
			tourId = 2;
		} else if (s1.getResult().equals("coldSpa")) {
			tourId = 3;
		} else if (s1.getResult().equals("warmSpa")) {
			tourId = 4;
		} else if (s1.getResult().equals("exoticThemePark")) {
			tourId = 5;
		} else if (s1.getResult().equals("volcano")) {
			tourId = 6;
		} else if (s1.getResult().equals("ski")) {
			tourId = 7;
		} else if (s1.getResult().equals("whaleWatching")) {
			tourId = 8;
		} else if (s1.getResult().equals("glacier")) {
			tourId = 9;
		} else if (s1.getResult().equals("homeCasino")) {
			tourId = 10;
		} else if (s1.getResult().equals("homeSpa")) {
			tourId = 11;
		} else if (s1.getResult().equals("homeThemePark")) {
			tourId = 12;
		} else if (s1.getResult().equals("homeZipLine")) {
			tourId = 13;
		}
		
		
		
		
		
		
		
		

		if (priceLevel.equals("$")) {
			// price = "1";
			hotel = t.findById(tourId).orElse(null).getHotel1();
			price = t.findById(tourId).orElse(null).getPrice();
		} else if (priceLevel.equals("$$")) {
			// price = "2";
			hotel = t.findById(tourId).orElse(null).getHotel2();
			price = (t.findById(tourId).orElse(null).getPrice()) * 1.3;
		} else if (priceLevel.equals("$$$")) {
			// price = "3";
			hotel = t.findById(tourId).orElse(null).getHotel3();
			price = (t.findById(tourId).orElse(null).getPrice()) * 1.5;
			System.out.println(hotel);
			System.out.println(price);
		} else if (priceLevel.equals("$$$$")) {
			// price = "4";
			hotel = t.findById(tourId).orElse(null).getHotel4();
			price = (t.findById(tourId).orElse(null).getPrice()) * 1.7;

		}

		location = t.findById(tourId).orElse(null).getCity();
		attraction = t.findById(tourId).orElse(null).getAttraction();
		System.out.println(location);

		RestTemplate rt = new RestTemplate();

		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + yelpKey);
		headers.add("Accept", MediaType.APPLICATION_JSON_VALUE);
		HttpEntity<String> entity = new HttpEntity<>("parameters", headers);

		String url1 = "https://api.yelp.com/v3/businesses/search?term=" + hotel + "&location=" + location;
		String url2 = "https://api.yelp.com/v3/businesses/search?term=" + attraction + "&location=" + location;
		ResponseEntity<YelpSearch> response1 = rt.exchange(url1, HttpMethod.GET, entity, YelpSearch.class);
		ResponseEntity<YelpSearch> response2 = rt.exchange(url2, HttpMethod.GET, entity, YelpSearch.class);

		YelpSearch yelpSearch1 = response1.getBody();
		YelpSearch yelpSearch2 = response2.getBody();

		if (s1.isVacation()) {
			ModelAndView mv = new ModelAndView("vacation-result", "yelpSearch1", yelpSearch1.getBusinesses().get(0));
			mv.addObject("yelpSearch2", yelpSearch2.getBusinesses().get(0));
			mv.addObject("tourOption", t.findById(tourId).orElse(null));
			mv.addObject("adjustedPrice", price);
			return mv;
		} else if (s1.isVacation() == false) {
			ModelAndView mv = new ModelAndView("staycation-result", "yelpSearch1", yelpSearch1.getBusinesses().get(0));
			mv.addObject("yelpSearch2", yelpSearch2.getBusinesses().get(0));
			mv.addObject("tourOption", t.findById(tourId).orElse(null));
			mv.addObject("adjustedPrice", price);
			return mv;
		

//		} else if (s1.isVacation()) {
//			
//			String url1 = "https://api.yelp.com/v3/businesses/search?term=" + term1 + "&location=" + location;
//			String url2 = "https://api.yelp.com/v3/businesses/search?term=" + term2 + "&location=" + location;
//
//			ResponseEntity<YelpSearch> response1 = rt.exchange(url1, HttpMethod.GET, entity, YelpSearch.class);
//			ResponseEntity<YelpSearch> response2 = rt.exchange(url2, HttpMethod.GET, entity, YelpSearch.class);	
//
//			YelpSearch yelpSearch1 = response1.getBody();
//			YelpSearch yelpSearch2 = response2.getBody();
//
//			ModelAndView mv = new ModelAndView("yelp-result", "yelpSearch1", yelpSearch1.getBusinesses().get(0));
//			mv.addObject("yelpSearch2", yelpSearch2.getBusinesses().get(0));
//
//			
//	return mv;
//			
//			
//			
//		}

	}
		return new ModelAndView("error", "error", "Help!");
	}
}

