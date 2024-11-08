import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/leopard", "root", "negs27@sql");

            // Retrieve username and password from the form
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            // Corrected SQL query
            String query = "SELECT userName FROM member WHERE userName = ? AND password = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);

            // Execute the query
            ResultSet rs = ps.executeQuery();

            // Check if login is successful
            if (rs.next()) {
                // Redirect to the second page on successful login
                RequestDispatcher rd = request.getRequestDispatcher("second.html");
                rd.forward(request, response);
            } else {
                // Display error message on failed login
                out.println("<font color='red' size='18'>Login Failed !!</font><br>");
                out.println("<a href='login.jsp'>Try Again</a>");
            }

            // Close resources
            rs.close();
            ps.close();
            con.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
