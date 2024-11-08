<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
    <script src="login.js" defer></script>
</head>
<body>
    <h2>Login</h2>
    <form action=LoginServlet method=post>
    
        <label for="username">User Name:</label>
        <input type="text" id="username" name="username" required><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>

        <button type="submit">Login</button>
        <button type="button" onclick="window.location.href='forgot_password.html'">Forgot Password</button>
    </form>
</body>
</html>
