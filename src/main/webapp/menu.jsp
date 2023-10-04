<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib prefix="fn"
uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>My Contacts</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
      }

      .container {
        width: 80%;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
      }

      table {
        width: 100%;
        border-collapse: collapse;
      }

      th,
      td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
      }

      th {
        background-color: #f2f2f2;
      }

      tr:hover {
        background-color: #f5f5f5;
      }

      h1 {
        background-color: #333;
        color: #fff;
        padding: 20px;
        text-align: center;
        margin-top: 0;
        margin-bottom: 50px;
      }

      .contact {
        border: 1px solid #ccc;
        margin: 10px;
        border-radius: 5px;
        background-color: #fff;
      }

      .buttons {
        text-align: right;
      }

      .btn {
        padding: 5px 10px;
        margin: 5px;
        border: none;
        border-radius: 3px;
        cursor: pointer;
      }

      .btn.view {
        background-color: #008000;
        color: #fff;
      }

      .btn.delete {
        background-color: #ff3333;
        color: #fff;
      }

      .btn.create {
        background-color: #333;
        padding: 10px;
        font-size: 16px;
        color: #fff;
      }

      .span.empty {
        text-align: center;
        font-size: 24px;
        font-weight: bold;
      }
    </style>
    <script>
      function viewDetail(id) {
        var url = "DetailsServlet?id=" + id;
        window.location.href = url;
      }

      function confirmDelete(id) {
        var confirmation = confirm("Are you sure about delete this contact?");

        if (confirmation) {
          var url = "DeleteUserServlet?id=" + id;
          window.location.href = url;
        }
      }
    </script>
  </head>
  <body>
    <h1>My Contacts</h1>

    <div class="container">
      <div class="contact">
        <c:choose>
          <c:when test="${fn:length(contacts) > 0}">
            <table class="contact-details">
              <thead>
                <tr>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Cellphone</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${contacts}" var="contact">
                  <tr>
                    <td>${contact.name}</td>
                    <td>${contact.email}</td>
                    <td>${contact.cellphone}</td>
                    <td>
                      <button
                        class="btn view"
                        onclick="viewDetail(${contact.id})"
                      >
                        View Details
                      </button>
                      <button
                        class="btn delete"
                        onclick="confirmDelete(${contact.id})"
                      >
                        Delete
                      </button>
                    </td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
          </c:when>
          <c:otherwise>
            <div class="span empty">There are no contacts registered yet</div>
          </c:otherwise>
        </c:choose>
      </div>

      <div class="buttons">
        <button
          class="btn create"
          onclick="window.location.href='registerContact.jsp'"
        >
          Add contact
        </button>
      </div>
    </div>
  </body>
</html>
