package com.nombreweb.blog.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnTransformer;
import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name="USER")
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	
	private String nombre;
	
	private String email;
	
	@CreationTimestamp
	private Date fechaAlta;
	
	private String ciudad;
	
	@ColumnTransformer(write=" MD5(?) ")
	private String password;
	
	public User() {}

	public User(String nombre, String email, String ciudad, String password) {
		super();
		this.nombre = nombre;
		this.email = email;
		this.ciudad = ciudad;
		this.password = password;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getFechaAlta() {
		return fechaAlta;
	}


	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", nombre=" + nombre + ", email=" + email + ", fechaAlta=" + fechaAlta + ", ciudad="
				+ ciudad + ", password=" + password + "]";
	}
	
	
	

}
