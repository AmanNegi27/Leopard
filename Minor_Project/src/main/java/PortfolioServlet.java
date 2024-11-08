import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/PortfolioServlet")
public class PortfolioServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database credentials
    String dbUrl = "jdbc:mysql://localhost:3306/leopard";
    String dbUser = "root";
    String dbPassword = "negs27@sql";

    // Register MySQL driver explicitly (Optional)
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String username = request.getParameter("username"); // Get the username from request

        // Query the database for the user's data
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
            String sql = "SELECT * FROM Collection WHERE username = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username); // Use the username to filter data

            ResultSet resultSet = statement.executeQuery();

            // Forward the results to the portfolio page
            if (resultSet.next()) {
                // You can forward the result to an HTML page or send it back to the front-end dynamically (via JSP or JSON)
                request.setAttribute("portfolioData", resultSet); // Set the results in the request attribute
                request.getRequestDispatcher("portfolio.jsp").forward(request, response); // Forward to JSP page
            } else {
                response.getWriter().println("No data found for this user.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Database error: " + e.getMessage());
        }
    }
}
