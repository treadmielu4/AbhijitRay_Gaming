package com.abhijit.gamingportal.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.abhijit.gamingportal.entities.Admin;
import com.abhijit.gamingportal.entities.Game;
import com.abhijit.gamingportal.entities.User;
import com.abhijit.gamingportal.repos.AdminRepository;
import com.abhijit.gamingportal.repos.GameRepository;
import com.abhijit.gamingportal.repos.UserRepository;
import com.abhijit.gamingportal.services.GameService;

@Controller
public class AdminController {

	@Autowired
	GameRepository gameRepository;

	@Autowired
	private AdminRepository adminRepository;

	@RequestMapping(value = "/adminloginpage")
	public String adminlogin(@RequestParam("email") String email, @RequestParam("password") String password,
			ModelMap modelMap) {

		Admin admin = adminRepository.findByEmail(email);
		if (admin != null) {
			if (admin.getPassword().equals(password)) {

				return "adminwelcome";
			} else {
				modelMap.addAttribute("msg1", "Invalid username or password.Please Try Again");
			}
		} else {
			modelMap.addAttribute("msg1", "Invalid username or password.Please Try Again");
		}

		return "adminlogin";

	}

	@RequestMapping("/showadminlogin")
	public String existadmin() {
		return "adminlogin";
	}

	@Autowired
	GameService gameService;

	@ModelAttribute("showGameslist")
	public List<Game> HandleGames(Model model) {

		return gameService.showAllGameDetails();

	}

	@RequestMapping("/editGameDetails")
	public String editGameDetails(@RequestParam("gameId") long gameId, ModelMap modelMap) {
		Game game = gameRepository.findById(gameId).get();
		modelMap.addAttribute("gameDetails", game);
		return "editGame";
	}

	@RequestMapping("/updateGameDetails")
	public String updateGameDetails(@ModelAttribute("game") Game game, ModelMap modelMap) {
		gameRepository.save(game);
		List<Game> showGameslist = gameService.showAllGameDetails();
		modelMap.addAttribute("showGameslist", showGameslist);
		return "adminwelcome";
	}

	@RequestMapping("/removeGame")
	public String removeGame(@RequestParam("gameId") long gameId, ModelMap modelMap) {
		Game game = gameRepository.findById(gameId).get();
		gameRepository.delete(game);
		List<Game> showGameslist = gameService.showAllGameDetails();
		modelMap.addAttribute("showGameslist", showGameslist);
		return "adminwelcome";
	}

	@RequestMapping("/addNewGame")
	public String addNewGame() {
		return "addGameDetails";
	}

	@RequestMapping(value = "/addGame", method = RequestMethod.POST)
	public String addGame(@ModelAttribute("game") Game game, ModelMap modelMap) {
		gameRepository.save(game);
		List<Game> showGameslist = gameService.showAllGameDetails();
		modelMap.addAttribute("showGameslist", showGameslist);
		return "adminwelcome";
	}

}