import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/logincheck")
public class logincheck extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public logincheck() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("Akhilesh".equals(username) && "Aher".equals(password)) {
            pw.print("<h1>Welcome, " + username + "!</h1>");
        } else {
            pw.print("<h3>Invalid Credentials.</h3>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("login.html");
    }
}
