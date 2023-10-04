package controllers;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		if (session != null && !session.isNew()) {
			response.sendRedirect("ListContactServlet");
		} else {
			String username = request.getParameter("username");
			String password = request.getParameter("password");

			boolean loginValid = checkCredentials(username, password);

			if (loginValid) {
				session = request.getSession(true);
				session.setAttribute("nome", username);
				session.setAttribute("senha", password);
				session.setMaxInactiveInterval(60);

				response.sendRedirect("ListContactServlet");
			} else {
				response.sendRedirect("index.jsp");
			}
		}
	}

	private boolean checkCredentials(String username, String password) {
		return username != null && password != null && (username.equals("admin") && password.equals("admin"));
	}

}
