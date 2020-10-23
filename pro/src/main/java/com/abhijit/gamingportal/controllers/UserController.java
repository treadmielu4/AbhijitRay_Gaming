package com.abhijit.gamingportal.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.abhijit.gamingportal.entities.User;
import com.abhijit.gamingportal.repos.GameRepository;
import com.abhijit.gamingportal.repos.UserRepository;
import com.abhijit.gamingportal.services.GameService;

@Controller
public class UserController {
	@Autowired
	private UserRepository userRepository;

	
	@Autowired 
	User user1;
	@Autowired
	GameService gameService;

	@RequestMapping("/showReg")
	public String showRegistrationPage() {
		return "registerUser";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@ModelAttribute("user") User user) {
		userRepository.save(user);
		return "login";

	}

	@RequestMapping("/loginpage")
	public String existuser() {
		return "login";
	}

	@PostMapping(value = "/loginpage")
	public String login(@RequestParam("email") String email, @RequestParam("password") String password,
			ModelMap modelMap) {
		User user = userRepository.findByEmail(email);
		user1=user;
		if (user != null) {
		if (user.getPassword().equals(password)) {
			modelMap.addAttribute("name", user.getName().toUpperCase());
    		modelMap.addAttribute("email", user.getEmail());
			modelMap.addAttribute("phone", user.getPhone());
			modelMap.addAttribute("balance", user.getBalance());
			
			return "welcome";
		} else {
			modelMap.addAttribute("msg", "Invalid username or password.Please Try Again");
		}
		}else
		{
			modelMap.addAttribute("msg", "Invalid username or password.Please Try Again");
		}
		return "login";

	}
	
	@RequestMapping("/purchase1")
	public String paysuccess()
	{
		return "purchase";
	}
	@RequestMapping("/purchasepage")
	public String welcome(@RequestParam("balance") String balance,HttpSession model) {
		System.out.println(balance);
		userRepository.updatebalance(Double.valueOf(balance),user1.getUserId());
		user1=userRepository.findByEmail(user1.getEmail());
		model.setAttribute("name", user1.getName().toUpperCase());
		model.setAttribute("email", user1.getEmail());
		model.setAttribute("phone", user1.getPhone());
		model.setAttribute("balance", user1.getBalance());
		return "welcome";
		
	}
	@Autowired
	GameRepository gameRepository;
	@GetMapping("/playgame")
	public String welcomeaftergame(@Param("gameAmount") String gameAmount,ModelMap model) {
		System.out.println(gameAmount);
		user1=userRepository.findByEmail(user1.getEmail());
		if(user1.getBalance()<Double.valueOf(gameAmount)) {
			model.addAttribute("error", "Insufficient balance!!");
			model.addAttribute("games",gameService.showAllGameDetails());
			return "games";
			//return "games";
		}
		gameRepository.balaftergame(Double.valueOf(gameAmount),user1.getUserId());
		model.addAttribute("name", user1.getName().toUpperCase());
		model.addAttribute("email", user1.getEmail());
		model.addAttribute("phone", user1.getPhone());
		model.addAttribute("balance", user1.getBalance());
		return "play";
		
	}
}

