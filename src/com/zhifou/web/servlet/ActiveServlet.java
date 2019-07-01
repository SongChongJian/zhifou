package com.zhifou.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhifou.service.StatisticaldataService;

import net.sf.json.JSONArray;
/**
 * Servlet implementation class ActiveServlet
 */
@WebServlet("/ActiveServlet")
public class ActiveServlet extends BaseServlet {
	StatisticaldataService dataService = new StatisticaldataService();
	public void quearys(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
      
        String activeArr = dataService.querys();
        response.setContentType("text/html; charset=utf-8");
        //ArrayList对象转化为JSON对象
        JSONArray json = JSONArray.fromObject(activeArr);
        System.out.println(json.toString());
        //返回到JSP
        PrintWriter writer = response.getWriter();
        writer.println(json);
        writer.flush();
        //关闭输出流
        writer.close();		
	}
       


}
