<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>

    <!-- Signature Google Font -->
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
            0% { background-position: 0%
