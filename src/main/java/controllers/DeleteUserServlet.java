package controllers;

import java.io.IOException;
import java.util.Iterator;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Contact;
import model.DatabaseSingleton;
import model.SessionUtil;

public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteUserServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean isActive = SessionUtil.checkSession(request, response);

		if (isActive) {
			doPost(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idToDelete = Integer.parseInt(request.getParameter("id"));

		Iterator<Contact> iterator = DatabaseSingleton.getInstance().getContacts().iterator();

		while (iterator.hasNext()) {
			Contact contact = iterator.next();
			if (contact.getId() == idToDelete) {
				DatabaseSingleton.getInstance().removeContact(contact);
				break;
			}
		}

		response.sendRedirect("ListContactServlet");
	}

}
