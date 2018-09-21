import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "LoginController", urlPatterns = "/login")
public class LoginController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {

        String username = request.getParameter("txtUsername");
        String password = request.getParameter("txtPassword");


        HttpSession session = request.getSession();
        if (username.equals("admin") && password.equals("admin")) {

            Cookie user = new Cookie("user", "admin");
            Cookie pass = new Cookie("pass", "admin");
            if (request.getParameter("chkRemember") != null) {
                user.setMaxAge(60 * 60 * 24);
                pass.setMaxAge(60 * 60 * 24);
            } else {
                user.setMaxAge(0);
                pass.setMaxAge(0);
            }
            response.addCookie(user);
            response.addCookie(pass);

            session.setAttribute("username", "admin");

            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request, response);
        } else {

            request.setAttribute("error", "Invalid username or password");

            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);

        }
    }
}