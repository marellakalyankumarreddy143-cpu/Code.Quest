<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Admin Login</title>

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

        <h1>Admin Login</h1>

        <% 
            if ("invalid".equals(request.getParameter("error"))) {
        %>
            <p>Incorrect admin credentials.</p>
        <% 
            } 
        %>

        <form action="ALogin" method="post">

            Username
            <input name="username" required>

            Password
            <input type="password" name="password" required>

            <button>Login</button>

        </form>

    </div>

</body>
</html>

