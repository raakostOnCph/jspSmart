import persistens.User;
import persistens.UserMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "getUser", urlPatterns = {"/getUser"} )
public class getUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        List<User> kundeliste = UserMapper.getUser();

        request.setAttribute("kunder",kundeliste);

        request.getRequestDispatcher("forsog.jsp").forward(request,response);




    }
}
