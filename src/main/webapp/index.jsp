<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Segoe UI", Arial, sans-serif;
        }

        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(120deg, #6a11cb, #2575fc, #ff6a00);
            background-size: 400% 400%;
            animation: gradientMove 12s ease infinite;
        }

        @keyframes gradientMove {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .container {
            width: 460px;
            text-align: center;
            padding: 55px 40px 45px;
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(12px);
            box-shadow: 0 10px 35px rgba(0, 0, 0, 0.25);
            border: 2px solid rgba(255, 255, 255, 0.25);
            animation: fadeIn 1.5s ease-out;
            position: relative;
        }

        .container::before {
            content: "";
            position: absolute;
            inset: -3px;
            border-radius: 22px;
            padding: 3px;
            background: linear-gradient(135deg, rgba(255,255,255,0.7), rgba(255,255,255,0.1));
            z-index: -1;
        }

        .logo {
            width: 110px;
            height: 110px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 20px;
            border: 3px solid rgba(255,255,255,0.5);
            box-shadow: 0 6px 18px rgba(0,0,0,0.3);
        }

        h1 {
            font-size: 40px;
            font-weight: 700;
            color: #ffffff;
            text-shadow: 0 3px 8px rgba(0,0,0,0.3);
            margin-bottom: 10px;
        }

        .author {
            font-size: 18px;
            color: #f5f5f5;
            opacity: 0.9;
            letter-spacing: 1px;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .container:hover {
            transform: scale(1.03);
            transition: 0.4s ease;
            box-shadow: 0 15px 40px rgba(0,0,0,0.35);
        }
    </style>
</head>

<body>
    <div class="container">

        <!-- LOGO IMAGE -->
        <img src="logo.png" alt="Logo" class="logo">

        <h1>Welcome to DevOps</h1>
        <div class="author">- Arun K B</div>
    </div>
</body>
</html>
