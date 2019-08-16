package com.nombreweb.blog.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.nombreweb.blog.model.User;

public interface UserRepository extends CrudRepository<User, Long>{
	
	// Método para loguearnos
	@Query("Select u from User u where email = :email and password = md5( :password )")
	public User getEmailAndPassword(@Param("email") String email, @Param("password") String password);
	
	// Método para listar todos los autores
	@Query("Select u from User u")
	public List<User> getTodos();
	
}
