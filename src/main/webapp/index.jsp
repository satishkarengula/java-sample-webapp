<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>

    <!-- Signature Font -->
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap" rel="stylesheet">

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
            width: 480px;
            text-align: center;
            padding: 60px 40px 45px;
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(14px);
            box-shadow: 0 15px 45px rgba(0, 0, 0, 0.25);
            border: 2px solid rgba(255, 255, 255, 0.25);
            animation: fadeIn 1.5s ease-out;
        }

        /* Signature logo */
        .signature-logo {
            font-family: 'Great Vibes', cursive;
            font-size: 80px;
            background: linear-gradient(45deg, #fff5c3, #ffd700, #fff7d1);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            text-shadow: 0 0 14px rgba(255, 223, 0, 0.8);

            opacity: 0;
            animation: handwriting 3s ease-out forwards;
            margin-bottom: 25px;
        }

        /* Signature animation */
        @keyframes handwriting {
            0% { opacity: 0; clip-path: inset(0 100% 0 0); }
            100% { opacity: 1; clip-path: inset(0 0 0 0); }
        }

        h1 {
            font-size: 40px;
            color: #ffffff;
            text-shadow: 0 3px 8px rgba(0, 0, 0, 0.3);
            animation: fadeIn 2s ease-out;
        }

        .author {
            margin-top: 10px;
            font-size: 18px;
            color: #e9e9e9;
            opacity: 0.9;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>

<body>
    <div class="container">

        <!-- Signature Logo -->
        <div class="signature-logo">Hello Team</div>

        <h1>Welcome to DevOps</h1>
        <div class="author">- Arun K B</div>

    </div>
</body>
</html>
