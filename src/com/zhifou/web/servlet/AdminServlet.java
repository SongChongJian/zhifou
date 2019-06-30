package com.zhifou.web.servlet;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhifou.bean.Admin;
import com.zhifou.bean.Category;
import com.zhifou.bean.Notice;
import com.zhifou.bean.Question;
import com.zhifou.bean.User;
import com.zhifou.service.Adminservice;
import com.zhifou.utils.JsonUtils;



@WebServlet("/adminservlet")
public class AdminServlet extends BaseServlet {
	Adminservice adminservice = new Adminservice();
	//管理员登录
	public void adminlogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");
		String adminmail = request.getParameter("adminmail");
		String adminpassword = request.getParameter("adminpassword");
		Admin admin = adminservice.adminlogin(adminmail,adminpassword);
		if(admin!=null){
			HttpSession session2 = request.getSession();
			session2.setAttribute("admin", admin);
			response.sendRedirect("admin/admin-index.jsp");
		}
	}
	public void questionmanage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//问题首页
		//分页显示
	 	//获取当前页currentpage
	 	int currentpage = 1;
	 	if(request.getParameter("currentpage")!=null){
	 		currentpage = Integer.parseInt(request.getParameter("currentpage"));
	 	}
	 	//根据当前页获取数据集合
	 	List<Question> list = adminservice.getcurrentlist(currentpage);
	 	
	 	//获取数据总数totalquestion  总页数page
	 	int totalquestion = adminservice.totalquestion();
	 	int page = totalquestion%15==0?totalquestion/15:totalquestion/15+1;
	 	request.setAttribute("totalquestion", totalquestion);
	 	request.setAttribute("page", page);
	 	request.setAttribute("list", list);
	 	request.setAttribute("currentpage", currentpage);
	 	request.setAttribute("method", "questionmanage");
	 	
	 	//获取问题的类型
	 	List<Category> categorylist = adminservice.getcategory();
	 	request.setAttribute("categorylist", categorylist);
	 	//查询所有用户
	 	List<User> userlist = adminservice.getallusers();
		request.setAttribute("userlist", userlist);
	 	request.getRequestDispatcher("admin/admin-table.jsp").forward(request, response);
	}
	//审核通过
	public void ispassaudit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String questionid = request.getParameter("questionid");
		int ispassaudit = adminservice.ispassaudit(Integer.parseInt(questionid));
		response.getWriter().write(ispassaudit==1?"1":"0");

	}
	
	//撤销通过
	public void nopassaudit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String questionid = request.getParameter("questionid");
		int nopassaudit = adminservice.nopassaudit(Integer.parseInt(questionid));
		response.getWriter().write(nopassaudit==1?"1":"0");

	}
	//问题类型下拉框选择
	public void issearched(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取当前页currentpage
	 	int currentpage = 1;
	 	if(request.getParameter("currentpage")!=null){
	 		currentpage = Integer.parseInt(request.getParameter("currentpage"));
	 	}
		//根据类型id得到集合
	 	int categoryid = 0;
	 	if(request.getParameter("categoryid")!=null){
	 		categoryid = Integer.parseInt(request.getParameter("categoryid"));
	 	}
		List<Question> list = adminservice.issearched(categoryid,currentpage);
		
	 	//获取数据总数totalquestion  总页数page
	 	int totalquestion = adminservice.categorytotalquestion(categoryid);
	 	int page = totalquestion%15==0?totalquestion/15:totalquestion/15+1;
	 	request.setAttribute("totalquestion", totalquestion);
	 	request.setAttribute("page", page);
	 	request.setAttribute("list", list);
	 	request.setAttribute("currentpage", currentpage);
	 	request.setAttribute("method", "issearched");
	 	request.setAttribute("categoryid", categoryid);
	 	//获取问题的类型
	 	List<Category> categorylist = adminservice.getcategory();
	 	request.setAttribute("categorylist", categorylist);
	 	request.getRequestDispatcher("admin/admin-table.jsp").forward(request, response);
	}
	//搜索字段自动显示
	public void searchword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String word = request.getParameter("word");
		if(word!=null){
			List<Object> list = adminservice.searchword(word);
			String json = JsonUtils.objectToJson(list);
			/*Gson gson = new Gson();
			String json = gson.toJson(list);*/
			response.getWriter().write(json);
		}
	}
	//模糊查询
	public void fuzzysearch(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		//获取当前页currentpage
	 	int currentpage = 1;
	 	if(request.getParameter("currentpage")!=null){
	 		currentpage = Integer.parseInt(request.getParameter("currentpage"));
	 	}
		//根据模糊条件得到集合
	 	String fuzzy = request.getParameter("fuzzy");
		List<Question> list = adminservice.fuzzysearch(fuzzy,currentpage);
		
	 	//获取数据总数totalquestion  总页数page
	 	int totalquestion = adminservice.fuzzytotalquestion(fuzzy);
	 	int page = totalquestion%15==0?totalquestion/15:totalquestion/15+1;
	 	request.setAttribute("totalquestion", totalquestion);
	 	request.setAttribute("page", page);
	 	request.setAttribute("list", list);
	 	request.setAttribute("currentpage", currentpage);
	 	request.setAttribute("method", "fuzzysearch");
	 	request.setAttribute("fuzzy", fuzzy);
	 	//获取问题的类型
	 	List<Category> categorylist = adminservice.getcategory();
	 	request.setAttribute("categorylist", categorylist);
	 	request.getRequestDispatcher("admin/admin-table.jsp").forward(request, response);
	}
	//公告
	public void notice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String noticetitle = request.getParameter("noticetitle");
		String noticecontent = request.getParameter("noticecontent");
		int noticeproposer = 1;
		//查询所有管理员
	 	List<Admin> adminlist = adminservice.getalladmin();
	 	if(adminlist!=null){
	 		for(Admin i: adminlist){
	 			if(i.getAdminname().equals(request.getParameter("noticeproposer"))){
	 				noticeproposer = i.getAdminid();
	 			}
	 		}
	 	}
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
		String noticerelease = df.format(new java.util.Date());// new Date()为获取当前系统时间 
		Notice notice = adminservice.addnotice(noticetitle,noticecontent,noticeproposer,noticerelease);
		String json = JsonUtils.objectToJson(notice);
		response.getWriter().write(json);
		System.out.println(json);
	}
}
