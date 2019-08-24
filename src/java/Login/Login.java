package Login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.io.IOException;
import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.*;
 
public class Login extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String nombre = request.getParameter("nombre");
        String password = request.getParameter("password");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","admin","admin");
            PreparedStatement pst = conn.prepareStatement("Select usuario,password from usuario where usuario=? and password=?");
            pst.setString(1, nombre);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                HttpSession newSession = request.getSession();
                newSession.setAttribute("nombre", nombre);
                response.sendRedirect("menuprincipal.jsp");
            } 
            else {
                response.sendRedirect("usuarionoregistrado.jsp");
            }
        } 
        catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}