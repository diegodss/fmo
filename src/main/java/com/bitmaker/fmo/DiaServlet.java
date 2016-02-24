package com.bitmaker.fmo;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.googlecode.objectify.ObjectifyService;

public class DiaServlet extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
	throws IOException {
		String comentario = req.getParameter("comentario");
		int ponto = Integer.parseInt(req.getParameter("ponto"));
		Dia dia = new Dia(ponto, comentario);
		ObjectifyService.ofy().save().entity(dia).now();
		resp.sendRedirect("dia.jsp");
				
	}
	
}
