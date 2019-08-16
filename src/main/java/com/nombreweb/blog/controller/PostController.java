package com.nombreweb.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.nombreweb.blog.dao.PostRepository;
import com.nombreweb.blog.model.Post;
import com.nombreweb.blog.model.form.PostBean;

@Controller
public class PostController {
	
	// Necesitamos llamar a PostRepository
	@Autowired
	PostRepository postRepo;
	
	@GetMapping(value="/submit")
	public String showForm(Model model) {
		model.addAttribute("post", new PostBean());
		return "submit";
	}
	
	@PostMapping(value="/submit/newPost")
	public String saveForm(@ModelAttribute("post") PostBean p, 
			Model model) {
		Post articulo = new Post(p.getTitulo(), p.getUrl(), p.getContenido());
		postRepo.save(articulo);
		return "redirect:/";
	}
}