package com.emp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Empdao;

public class SavadataServlet extends HttpServlet {

	Empdao empdao = new Empdao();
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
	String firstname = request.getParameter("firstname");
	
	String lastname = request.getParameter("lastname");
	
	
	empdao.insert(firstname, lastname);
	
	response.sendRedirect("Index.html");
	}
}
