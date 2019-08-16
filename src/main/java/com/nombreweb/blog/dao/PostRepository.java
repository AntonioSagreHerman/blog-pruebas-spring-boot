package com.nombreweb.blog.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.nombreweb.blog.model.Post;

public interface PostRepository extends CrudRepository<Post, Long>{
	// Ya podemos crear un post
	
	
	// Hacer select para listar todos los posts
	@Query("Select u from Post u")
	public List<Post> getTodos();
}
