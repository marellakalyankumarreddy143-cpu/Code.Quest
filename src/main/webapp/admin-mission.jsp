<%@ page contentType="text/html;charset=UTF-8" %>

<%
    if (session.getAttribute("adminId") == null) {
        response.sendRedirect("admin-login.jsp");
        return;
    }
%>

<html>
<head>
    <title>Add Mission</title>

    <style>
        body {
            font-family: Arial;
            background: #171329;
            color: white;
            padding: 25px;
        }

        .box {
            max-width: 650px;
            margin: auto;
            background: #251d40;
            padding: 25px;
            border-radius: 18px;
        }

        input, textarea {
            width: 95%;
            padding: 10px;
            margin: 7px 0 13px;
            background: #171329;
            color: white;
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

        <h1>Add Mission</h1>

        <form action="AddMission" method="post">

            Title
            <input name="title" required>

            Question
            <textarea name="question" required></textarea>

            Option 1
            <input name="option1" required>

            Option 2
            <input name="option2" required>

            Option 3
            <input name="option3" required>

            Option 4
            <input name="option4" required>

            Correct answer number (1-4)
            <input type="number" name="correctAnswer" min="1" max="4" required>

            XP reward
            <input type="number" name="xp" min="0" value="10" required>

            <button>Save Mission</button>

        </form>

    </div>

</body>
</html>

