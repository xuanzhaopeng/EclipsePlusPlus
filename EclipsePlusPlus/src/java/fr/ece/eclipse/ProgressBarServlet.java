/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.ece.eclipse;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author xuanzhaopeng
 */
public class ProgressBarServlet extends HttpServlet {

    private static final long serialVersionUID = 7778778056341326522L;
    private String percentStr = null;
    private PrintWriter out = null;

    @SuppressWarnings("unchecked")
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        String task = request.getParameter("task");
        String res = "";
        out = response.getWriter();
        if (task.equals("first")) {
            res = "1";

            //此处可以对非第1次的异步访问公共的内容，做一些初始化工作  
            request.getSession().setAttribute("percent", 1);
            percentStr = "1";
        } else {
            //模拟进度条  
            if (!"100".equals(percentStr)) {
                String p = request.getSession().getAttribute("percent").toString();
                int temp_percent = Integer.valueOf(p) + 4;
                temp_percent = temp_percent > 100 ? 100 : temp_percent;
                percentStr = String.valueOf(temp_percent);
                if (percentStr.equals("100")) {
                    request.getSession().removeAttribute("percent");
                } else {
                    request.getSession().setAttribute("percent", percentStr);
                }
            }
            System.out.println("percentStr:" + percentStr);
            res = percentStr;
        }

        response.setContentType("text/xml");
        response.setHeader("Cache-Control", "no-cache");
        out.println(res);
        out.close();
    }

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    /**
     * Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }

}
