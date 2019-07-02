package com.zhifou.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhifou.bean.Admin;
import com.zhifou.bean.User;
import com.zhifou.service.Adminservice;
import com.zhifou.service.UserService;
import com.zhifou.utils.MailUtils;



@WebServlet("/userservlet")
public class UserServlet extends BaseServlet {
	UserService service = new UserService();
	private HttpSession session =null;
	//管理员登录
	public void adminlogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*request.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");*/
		String adminmail = request.getParameter("adminmail");
		String adminpassword = request.getParameter("adminpassword");
		Adminservice adminservice = new Adminservice();
		Admin admin = adminservice.adminlogin(adminmail,adminpassword);
		if(admin!=null){
			HttpSession session = request.getSession();
			session.setAttribute("admin", admin);
			response.sendRedirect("admin/admin-index.jsp");
		}else{
			response.sendRedirect("/zhifou/admin/adminlogin.jsp");
		}
	}
	//注册
	public void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*request.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");*/
		String username = request.getParameter("username");
		String userpassword = request.getParameter("password");
		String usermail = request.getParameter("mail");
		String code = request.getParameter("code");
		if(Integer.parseInt(code)==0){
			String content = "<p>"+username+"您好 O(∩_∩)O~~<br><br>欢迎加入知否!<br><br>帐户需要激活才能使用，赶紧激活成为知否正式的一员吧:)"
					+ "<br><br>请在24小时内点击下面的链接立即激活帐户："
	                +"<br><a href='http://localhost:8080/zhifou/userservlet?method=register&username="+username+"&password="+userpassword+"&mail="+usermail+"&code=1'>"
	                + "href='http://localhost:8080/zhifou/userservlet</a></p>";
			try {
				MailUtils.sendMail(usermail,"知否用户激活邮件",content);
			} catch (Exception e) {
				e.printStackTrace();
			}
			response.sendRedirect("jihuo.jsp");
		}else if(Integer.parseInt(code)==1){
			System.out.println(username+userpassword+usermail);
			Boolean sucsees = service.register(username,userpassword,usermail);
			if(sucsees){
				session = request.getSession();
				session.setAttribute("username", username);
				response.sendRedirect("login.jsp");
	//			System.out.println("注册成功");
			}else{
				response.sendRedirect("/zhifou/register.jsp");
			}
		}
	}
	//检查用户名是否存在
	public void userNameIsExit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*request.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");*/
		String username = request.getParameter("username");

		Boolean	isexit = service.userNameIsExit(username);
		response.getWriter().write(isexit?"1":"0");
	}
	//验证码校验
	public void codeCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*request.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");*/
		String checkcode = request.getParameter("checkcode");
		String checkcode_session = (String)request.getSession().getAttribute("checkcode_session");
		response.getWriter().write(checkcode.equals(checkcode_session)?"1":"0");
	}
	//登录
	public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*request.setCharacterEncoding("UTF-8");*/
		String usermail = request.getParameter("mail");
		String password = request.getParameter("password");
		User user= service.login(usermail,password);
		if(user!=null){
			session = request.getSession();
			session.setAttribute("user", user);
			response.sendRedirect("/zhifou/recommend?method=searchQuestionIndex");
		}else{
			response.sendRedirect("/zhifou/login.jsp");
		}
	}
	
	
}
