package controllers;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Contact;
import model.DatabaseSingleton;
import model.SessionUtil;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		boolean isActive = SessionUtil.checkSession(request, response);

		if (isActive) {
			doPost(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String cellphone = request.getParameter("cellphone");
		String telephone = request.getParameter("telephone");
		String email = request.getParameter("email");
		String bithdate = request.getParameter("birthdate");

		Contact contact = new Contact.Builder().withId(DatabaseSingleton.getInstance().getLastIdInserted())
				.withName(name).withCellphone(cellphone).withTelephone(telephone).withEmail(email)
				.withBirthdate(bithdate).build();

		DatabaseSingleton.getInstance().addContact(contact);

		response.sendRedirect("ListContactServlet");
	}

}
