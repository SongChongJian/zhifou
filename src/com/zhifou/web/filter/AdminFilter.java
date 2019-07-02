package com.zhifou.web.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhifou.bean.Admin;

@WebFilter(urlPatterns = {"/admin/*"})
public class AdminFilter implements Filter {
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		HttpServletResponse resp = (HttpServletResponse)response;
		HttpServletRequest req = (HttpServletRequest)request;
		Object obj = req.getSession().getAttribute("admin");
		if(obj == null) {
			resp.sendRedirect("/zhifou/adminlogin.jsp");
		}
		chain.doFilter(request, response);
		
	}
    public AdminFilter() {
        // TODO Auto-generated constructor stub
    }
	public void destroy() {
		// TODO Auto-generated method stub
	}
	
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
