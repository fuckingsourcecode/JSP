package servletest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by whistle on 16-10-4.
 */
@WebServlet(name = "HelloServlet")
public class HelloServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<!doctype html><html><head><meta charset='utf-8'/><title>A Servlet</title><head><body>hello,  " + request.getParameter("username") + "" + "</body></html");
        out.flush();
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<!doctype html><html><head><meta charset='utf-8'/><title>A Servlet</title><head><body>this is " + this.getClass() + ", using the GET method" + "</body></html");
        out.flush();
        out.close();
    }

//    public void destroy() {
//        super.destroy();
//    }
}
