<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Student Login</title>

    <style>
        body {
            font-family: Arial;
            background: #171329;
            color: white;
            padding: 25px;
        }

        .box {
            max-width: 440px;
            margin: 30px auto;
            background: #251d40;
            padding: 25px;
            border-radius: 18px;
        }

        input {
            width: 95%;
            padding: 11px;
            margin: 8px 0 15px;
            background: #171329;
            color: white;
            border-radius: 8px;
        }

        button {
            padding: 12px;
            background: #a78bfa;
            border: 0;
            border-radius: 10px;
        }
    </style>
</head>

<body>

    <div class="box">

        <h1>Student Login</h1>

        <% 
            if ("invalid".equals(request.getParameter("error"))) {
        %>
            <p>Incorrect username/email or password.</p>
        <% 
            } 

            if ("empty".equals(request.getParameter("error"))) {
        %>
            <p>Enter both fields.</p>
        <% 
            } 

            if ("success".equals(request.getParameter("registered"))) {
        %>
            <p>Registration successful. Please login.</p>
        <% 
            } 
        %>

        <form action="Login" method="post">

            Username or email
            <input name="identity" required>

            Password
            <input type="password" name="password" required>

            <button>Login</button>

        </form>

        <a href="reg.jsp">Register</a>

    </div>

</body>
</html>


