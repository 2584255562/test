package org.java.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.java.dao.bbs_article_typeDao;

public class article_typeServlet extends HttpServlet {

	bbs_article_typeDao dao=new bbs_article_typeDao();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String method=request.getParameter("method");
		if("findAll".equals(method))findAll(request,response);
		out.flush();
		out.close();
	}
	
	
	public void findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Map<String, Object>> list=dao.findAll();
		request.setAttribute("typelist", list);
		System.out.println(list);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
