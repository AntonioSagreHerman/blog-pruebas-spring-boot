package com.nombreweb.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.nombreweb.blog.dao.UserRepository;
import com.nombreweb.blog.model.User;
import com.nombreweb.blog.model.form.RegistroBean;

@Controller
public class RegistroController {
	
	@Autowired
	UserRepository userRepo;

	@GetMapping(value="/registrar")
	public String showForm(Model model) {
		
		// Pantalla para dar de alta un usuario
		model.addAttribute("userRegistro", new RegistroBean());	
		return "registro";
	}
	
	@PostMapping(value="/guardarRegistro")
	public String saveForm(@ModelAttribute("userRegistro") RegistroBean r, Model model) {
		User usuario = new User(r.getNombre(), r.getEmail(), r.getCiudad(), r.getPassword());
		userRepo.save(usuario);
		return "redirect:/";
	}
	
	
	
	
	
	
	
}
