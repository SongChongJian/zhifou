package com.zhifou.web.servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.mail.Session;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

import com.zhifou.bean.Answer;
import com.zhifou.bean.Collection;
import com.zhifou.bean.Question;
import com.zhifou.bean.User;
import com.zhifou.bean.UserIndex;
import com.zhifou.service.CollectionService;

@WebServlet("/collection")
public class CollectionServlet extends BaseServlet{
	CollectionService collectionservice=new CollectionService();
	//查询显示在用户收藏页面收藏列表的
	public void getMyCollection(HttpServletRequest request, HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");
		
		int userid=1;
		
		List<UserIndex> Uindex=new ArrayList();
		List<Collection> list=collectionservice.getCollection(userid);
		for (Collection collection : list) {
			Answer answer=collectionservice.getAnswer(collection.getAnswerid());
			Question question=collectionservice.getQuestion(answer.getQuestionid());
			//这个是从回答表中得到回答者的id
			int id=answer.getAnswerproposer();
			//调用方法得到回答者的信息
			User user=collectionservice.FindUserByID(id);
			//得到的都封装到一个userindex对象里
			UserIndex userindex=new UserIndex();
			userindex.setAnswer_count(answer.getAnswer_count());
			userindex.setAnswercontent(answer.getAnswercontent());
			userindex.setAnswerid(answer.getAnswerid());
			userindex.setAnswerproposer(answer.getAnswerproposer());
			userindex.setAnswertime(answer.getAnswertime());
			userindex.setCategoryid(question.getCategoryid());
			userindex.setIspassaudit(question.getIspassaudit());
			userindex.setQuestion_count(question.getQuestion_count());
			userindex.setQuestioncontent(question.getQuestioncontent());
			userindex.setQuestionid(question.getQuestionid());
			userindex.setQuestionmadetime(question.getQuestionmadetime());
			userindex.setQuestionphoto(question.getQuestionphoto());
			userindex.setQuestionproposer(question.getQuestionproposer());
			userindex.setQuestiontitle(question.getQuestiontitle());
			userindex.setUserid(user.getUserid());
			userindex.setUsermail(user.getUsermail());
			userindex.setUsername(user.getUsername());
			userindex.setUserphoto(user.getUserphoto());
			userindex.setUserpassword(user.getUserpassword());
			//再添加到一个Uindex集合
			Uindex.add(userindex);
		
		}
		request.getSession().setAttribute("uindex", Uindex);
		response.sendRedirect("html/collect.jsp");
//		for (UserIndex uindex : Uindex) {
//			System.out.println("回答内容："+uindex.getAnswercontent()+"问题："+uindex.getQuestioncontent()+"回答者："+uindex.getUsername());
//		}		
	}
	
	//点击收藏添加到收藏表中
	
	public void addCollection(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");
		User user=(User)request.getSession().getAttribute("user");
		int userid=user.getUserid();
		String answerid=request.getParameter("answerid");
		int answerid1=Integer.parseInt(answerid);
		String questionid=request.getParameter("questionid");
		int questionid1=Integer.parseInt(questionid);
		
		Boolean collect=collectionservice.addCollection(userid, questionid1, answerid1);
		try {
			response.getWriter().write(collect==true?"true":"false");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
}
