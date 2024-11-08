<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leopard Sighting Portal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-image: url('https://images2.alphacoders.com/654/thumb-1920-654149.jpg'); 
            background-size: cover;
            background-position: center;
            height: 75vh;
            display: flex;
            flex-direction: column; 
            justify-content: flex-start; 
            align-items: center;
            color: white;
            text-align: center;
            position: relative;
        }
        header:before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.2); /* Black overlay */
            z-index: 0;
        }
        header h1 {
            font-size: 4rem;
            z-index: 1;
            color: #ffeb3b; 
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.6); 
            font-weight: bold; 
        }
        .content {
            padding: 30px;
            text-align: center;
        }
        .signup-btn, .login-btn {
            background-color: green;
            color: white;
            padding: 15px 30px;
            border: none;
            cursor: pointer;
            font-size: 1.2rem;
            transition: 0.3s;
            border-radius: 25px;
            text-decoration: none;
            margin: 10px;
        }
        .login-btn {
            background-color: black;
        }
        footer {
            background-color: green;
            color: black;
            text-align: center;
            padding: 10px;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <header>
        <div>
            <h1>Welcome to the Leopard Sighting Portal</h1>
        </div>
    </header>
    <div style="text-align: center; margin-top: 20px;">
        <a href="signup.jsp" class="signup-btn">Sign Up to Report a Sighting</a>
        <a href="login.jsp" class="login-btn">Login into existing account</a>
    </div>
    
    <div class="content">
        <h2>Track Leopard Sightings in the Wild</h2>
        <p>Our portal helps you report, view, and track leopard sightings from various jungle regions. Join our community to help protect these majestic creatures.</p>
    </div>

    <footer>
        <p>&copy; 2024 Leopard Sighting Portal. All rights reserved.</p>
    </footer>

    <%
       
        String url = "jdbc:mysql://localhost:3306/leopard";
        String user = "root";
        String password = "negs27@sql"; 
        
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
           
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    %>

</body>
</html>