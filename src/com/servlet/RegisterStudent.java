package com.servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.studentDAO;

public class RegisterStudent extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String roll_number = request.getParameter("rn");
			String first_name =	request.getParameter("fn");
			String last_name= request.getParameter("ln");
			studentDAO dao = new studentDAO();
			dao.createStudent(roll_number, first_name, last_name);
			response.sendRedirect("index.jsp?msg=Sucessful student addition");
		}
		catch(Exception e)
		{ 
			response.sendRedirect("index.jsp?msg=something went wrong");
	    }
	}

}
