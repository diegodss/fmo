package com.bitmaker.fmo;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import com.googlecode.objectify.annotation.Parent;
import com.googlecode.objectify.Key;

import java.lang.String;
import java.util.Date;
import java.util.List;


@Entity
public class Dia {

	@Id public Long id;
	public int ponto;
	public String comentario;
	@Index public Date data;
	
	public Dia(){
		
		data = new Date();
		
	}
	
	public Dia(int cPonto, String cComentario) {
		this.ponto = cPonto;
		this.comentario = cComentario;
		this.data = new Date();
	}
	
}
