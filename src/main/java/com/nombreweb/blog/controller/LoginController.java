package com.nombreweb.blog.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.nombreweb.blog.dao.UserRepository;
import com.nombreweb.blog.model.User;
import com.nombreweb.blog.model.form.LoginBean;

@Controller
public class LoginController {
	
	@Autowired
	UserRepository userRepo;

	@Autowired
	private HttpSession httpSession;
	
	@GetMapping(value="/signin")
	public String showForm(Model model) {
		model.addAttribute("userLogin", new LoginBean());
		return "login";
	}
	
	@PostMapping(value="/login")
	public String submit(@ModelAttribute("userLogin")LoginBean loginBean, Model model) {
		
		User u = userRepo.getEmailAndPassword(loginBean.getEmail(), loginBean.getPassword());
		if(u != null) {
			httpSession.setAttribute("userLoggedIn", u);
			return "redirect:/";
		} else {
			model.addAttribute("error", "Error al introducir el usuario o contraseña");
			return "login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(Model model) {
		httpSession.removeAttribute("userLoggedIn");
		return "redirect:/";
	}
	
}










