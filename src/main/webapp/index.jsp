<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .container {
            width: 100%;
    		max-width: 400px;
            margin: 0 auto;
            margin-top: 100px;
            padding: 20px;
            border-radius: 5px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            font-weight: bold;
        }

        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 95%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .form-group input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: black;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .form-group input[type="submit"]:hover {
            background-color: graytext;
        }
        
        .center-div {
		    margin: 0 auto;
		    padding: 20px;
		    margin-bottom: 20px;
		    text-align: center;
		    font-size: xx-large;
		}
		
		@media screen and (max-width: 768px) {
		    .container {
		        margin: inherit;
		        padding: 10px;
		        display: initial;
			}
			
			.form-group {
				max-width: 100%;
			}
		}
    </style>
    <script>
	    window.addEventListener('unload', function (e) {
	        var xhr = new XMLHttpRequest();
	        xhr.open('get', 'LoginServlet', true);
	        xhr.send();
	    });
    </script>
</head>
<body>
    <div class="container">
        <h2 class="center-div">Sign in to Contacts</h2>
        <form action="LoginServlet" method="post">
            <div class="form-group">
                <input type="text" id="username" name="username" placeholder="Username" required>
            </div>
            <div class="form-group">
                <input type="password" id="password" name="password" placeholder="Password" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Login">
            </div>
        </form>
    </div>
</body>
</html>
