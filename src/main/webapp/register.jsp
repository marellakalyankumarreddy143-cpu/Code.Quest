<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Register</title>

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

        <h1>Student Registration</h1>

        <% 
            if ("exists".equals(request.getParameter("error"))) {
        %>
            <p>Username/email already exists.</p>
        <% 
            } 

            if ("invalid".equals(request.getParameter("error"))) {
        %>
            <p>Fill all fields; password must be 8+ characters.</p>
        <% 
            } 
        %>

        <form action="Reg" method="post">

            Username
            <input name="username" required>

            Email
            <input type="email" name="email" required>

            Password
            <input type="password" name="password" minlength="8" required>

            <button>Register</button>

        </form>

        <a href="login.jsp">Login</a>

    </div>

</body>
</html>


