package com.nombreweb.blog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nombreweb.blog.dao.PostRepository;
import com.nombreweb.blog.model.Post;

@Controller
public class InicioController {
	
	@Autowired
	private PostRepository postRep;
	
	@GetMapping(value="/")
	public String bienvenida(Model model) {
		List<Post> posts = postRep.getTodos();
		model.addAttribute("postList", posts);
		return "index";
	}

}
