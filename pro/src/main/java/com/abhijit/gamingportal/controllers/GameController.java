package com.abhijit.gamingportal.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.abhijit.gamingportal.repos.GameRepository;
import com.abhijit.gamingportal.services.GameService;

@Controller
public class GameController {
	

	@Autowired
	GameService gameService;
	
	
	
	@RequestMapping("/findGames")
	public String findGames(Model model)
	{
		
		model.addAttribute("games",gameService.showAllGameDetails());
		return "games";
		
	}
		
	
	
		
	
	
	
	
}
