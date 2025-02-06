package codegym.c10.baitapreal.controller;

import codegym.c10.baitapreal.dao.IUserDAO;
import codegym.c10.baitapreal.dao.UserDAOImpl;
import codegym.c10.baitapreal.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "user", urlPatterns = "/users")
public class UserServlet extends HttpServlet {
    private static final IUserDAO userDAO = new UserDAOImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> userList = userDAO.selectAllUsers();
        req.setAttribute("userList", userList);
        req.getRequestDispatcher("/list.jsp").forward(req, resp);
    }
}
