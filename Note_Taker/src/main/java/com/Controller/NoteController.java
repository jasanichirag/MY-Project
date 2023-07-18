package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.NoteDao;
import com.Entity.Note_Taker;


public class NoteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if (action.equalsIgnoreCase("Add Note")) {
			Note_Taker n=new Note_Taker();
			n.setContent(request.getParameter("content"));
			n.setTitle(request.getParameter("title"));
			n.setAddedDate(new Date());
			
			NoteDao.insertNote(n);
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.print("<h1 style='text-align:  center;'>Note Is Add Successfully...!!!</h1>");
			out.print("<h1 style=\"text-align: center;\"><a href=\"showAllNote.jsp\">View Note</a></h1>");
		}else if (action.equalsIgnoreCase("Delete Note")) {
			int nid=Integer.parseInt(request.getParameter("nid"));
			System.out.println(action);
			NoteDao.deleteNote(nid);
			response.sendRedirect("showAllNote.jsp");
		}else if (action.equalsIgnoreCase("Edit Note")) {
			int id=Integer.parseInt(request.getParameter("nid"));
			Note_Taker n=NoteDao.getNoteById(id);
			request.setAttribute("note", n);
			request.getRequestDispatcher("Edit.jsp").forward(request, response);
		}else if (action.equalsIgnoreCase("Update")) {
		Note_Taker n=new Note_Taker();
		n.setNid(Integer.parseInt(request.getParameter("nid")));
		n.setContent(request.getParameter("content"));
		n.setAddedDate(new Date());
		n.setTitle(request.getParameter("title"));
		NoteDao.insertNote(n);
		response.sendRedirect("showAllNote.jsp");
		}
	}

}
