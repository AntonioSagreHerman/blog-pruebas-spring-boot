package com.nombreweb.blog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nombreweb.blog.dao.UserRepository;
import com.nombreweb.blog.model.User;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepo;
	
	@GetMapping(value="/autores")
	public String listaAutores(Model model) {
		List<User> autores = userRepo.getTodos();
		// Enviar atributo a la vista
		model.addAttribute("autores", autores);
		return "userlist";
	}
}
