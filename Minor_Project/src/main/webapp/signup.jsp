<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignUp</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h2>SignUp</h2>
    <form action="Register" method="post">
        <!-- Name -->
        <label for="name">Name:</label>
        <input type="text" name="name" maxlength="45" required><br><br>

        <!-- Mobile Number -->
        <label for="mobileNumber">Mobile Number:</label>
        <input type="text" name="mobileNumber" maxlength="20" required><br><br>

        <!-- Address -->
        <label for="address">Address:</label>
        <textarea id="address" name="address" maxlength="255" required></textarea><br><br>

        <!-- Date of Registration -->
        <label for="dateOfRegisteration">Date of Registration:</label>
        <input type="date" name="dateOfRegisteration" required><br><br>

        <!-- Password -->
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" maxlength="128" required><br><br>
        

        <label for="userName">User Name:</label>
        <input type="text" name="userName" maxlength="255" required><br><br>

        <!-- Submit Button -->
        <button type="submit">Register</button>
    </form>

    <!-- Add link to go to first.html -->
   

</body>
</html>
