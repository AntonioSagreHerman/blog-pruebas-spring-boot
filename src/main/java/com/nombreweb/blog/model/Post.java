package com.nombreweb.blog.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name="POST")
public class Post {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private String titulo;
	private String url;
	
	@Lob
	private String contenido;
	
	@CreationTimestamp
	private Date fecha;
	
	@ManyToOne
	private User autor;
	
	public Post() {
		super();
	}

	
	public Post(String titulo, String url, String contenido) {
		super();
		this.titulo = titulo;
		this.url = url;
		this.contenido = contenido;
	}


	public long getId() {
		return id;
	}



	public String getTitulo() {
		return titulo;
	}


	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}


	public String getUrl() {
		return url;
	}


	public void setUrl(String url) {
		this.url = url;
	}


	public String getContenido() {
		return contenido;
	}


	public void setContenido(String contenido) {
		this.contenido = contenido;
	}


	public Date getFecha() {
		return fecha;
	}


	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}


	public User getAutor() {
		return autor;
	}


	public void setAutor(User autor) {
		this.autor = autor;
	}
	
	
	
	
}
