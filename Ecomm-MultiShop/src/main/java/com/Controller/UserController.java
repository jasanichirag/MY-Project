package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.UserDao;
import com.Entity.Registration;

/**
 * Servlet implementation class UserController
 */
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if (action.equalsIgnoreCase("Registration")) {
			System.out.println(action +"....");
			Registration u=new Registration();
			u.setEmail(request.getParameter("email"));
			u.setConfirmPassword(request.getParameter("cpassword"));
			u.setFirstName(request.getParameter("fname"));
			u.setLastName(request.getParameter("lname"));
			u.setMobile(Long.parseLong(request.getParameter("mobile")));
			u.setPassword(request.getParameter("password"));
			UserDao.insertUser(u);
			response.sendRedirect("login.jsp");
		}
	}

}
