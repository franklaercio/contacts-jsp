package model;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class SessionUtil {
	
	private SessionUtil() {
		// Non instance class
	}
	
	public static boolean checkSession(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		HttpSession session = request.getSession(false);

		if (session == null) {
		    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		    rd.forward(request, response);
		    return false;
		} else {
			return true;
		}
	}

}
