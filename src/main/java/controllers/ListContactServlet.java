package controllers;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.DatabaseSingleton;
import model.SessionUtil;

public class ListContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ListContactServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean isActive = SessionUtil.checkSession(request, response);
		
		if(isActive) {
		    request.setAttribute("contacts", DatabaseSingleton.getInstance().getContacts());	    
		    RequestDispatcher rd = request.getRequestDispatcher("menu.jsp");
		    rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
