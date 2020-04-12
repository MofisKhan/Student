package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.RequestDAO;
import com.pojo.student;

public class RequestStudentServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
		String roll_num = (String) request.getSession().getAttribute("roll_num");
		RequestDAO dao = new RequestDAO();
		List<student> student = dao.getAllStudentDetails(roll_num);
		request.setAttribute("student", student);
		request.getRequestDispatcher("requestView.jsp").forward(request,response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			response.sendRedirect("requestView.jsp?msg=Something went wrong, please try again");
		}
	}

}
