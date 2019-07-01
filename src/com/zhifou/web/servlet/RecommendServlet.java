package com.zhifou.web.servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhifou.bean.Answer;
import com.zhifou.bean.Category;
import com.zhifou.bean.Question;
import com.zhifou.bean.User;
import com.zhifou.bean.UserIndex;
import com.zhifou.service.RecommendService;
import com.zhifou.utils.JsonUtils;

@WebServlet("/recommend")
public class RecommendServlet extends BaseServlet{
	private int pz=3;//定义每页显示的记录数
	private int count = 1;//进入首页后默认查看更多是没有点击过的，直接查询前十条
	
	public void searchQuestionIndex(HttpServletRequest request,HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");
		RecommendService service = new RecommendService();
		count=1;
		List<Answer> answers = service.FindQuestionByPage(count, pz);
		count++;
		List<UserIndex> userindexs = new ArrayList<>();
		for (Answer answer : answers) {
			User user = service.FindUserByID(answer.getAnswerproposer());
			Question question = service.FindQuestionById(answer.getQuestionid());
			Category category = service.FindCategoryByID(question.getCategoryid());
			UserIndex userindex = service.CreateUserIndex(user, answer, question, category);
			userindexs.add(userindex);
		}
		request.getSession().setAttribute("userindexs", userindexs);
		try {
			response.sendRedirect("index.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void searchQuestionByPage(HttpServletRequest request,HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		RecommendService service = new RecommendService();
		List<Answer> answers = service.FindQuestionByPage(count, pz);
		count++;
		List<UserIndex> userindexs = new ArrayList<>();
		for (Answer answer : answers) {
			User user = service.FindUserByID(answer.getAnswerproposer());
			Question question = service.FindQuestionById(answer.getQuestionid());
			Category category = service.FindCategoryByID(question.getCategoryid());
			UserIndex userindex = service.CreateUserIndex(user, answer, question, category);
			userindexs.add(userindex);
		}
		String jsonData=JsonUtils.objectToJson(userindexs);
		System.out.println(jsonData);
		response.getWriter().write(jsonData);
	}

	public void showAnswerDetail(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String value = request.getParameter("answerid");
		int answerid = Integer.parseInt(value);
		RecommendService service = new RecommendService();
		Answer answer = service.FindAnswerByID(answerid);
		User user = service.FindUserByID(answer.getAnswerproposer());
		Question question = service.FindQuestionById(answer.getQuestionid());
		Category category = service.FindCategoryByID(question.getCategoryid());
		UserIndex userindex = service.CreateUserIndex(user, answer, question, category);
		request.getSession().setAttribute("AnswerDetail", userindex);
		response.sendRedirect("/zhifou/html/detail.jsp");
	}
}
