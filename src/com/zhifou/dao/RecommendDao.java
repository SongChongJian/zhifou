package com.zhifou.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.zhifou.bean.Answer;
import com.zhifou.bean.Category;
import com.zhifou.bean.Question;
import com.zhifou.bean.User;
import com.zhifou.bean.UserIndex;
import com.zhifou.utils.DataSourceUtils;

public class RecommendDao {
	QueryRunner queryrunner = new QueryRunner(DataSourceUtils.getDataSource());
	public List<Answer> FindQuestionByPage(int count,int pagesize){
		String sql="select * from answer  order by answer_count desc limit "+(count-1)*pagesize+","+pagesize;
		List<Answer> answers = null;
		try {
			answers = queryrunner.query(sql, new BeanListHandler<Answer>(Answer.class));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return answers;
	}
	
	//获取所有用户
	public List<User> FindAllUsers(){
		String sql = "select * from user";
		List<User> users = null;
		try {
			users = queryrunner.query(sql, new BeanListHandler<User>(User.class));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	}
	
	//根据问题id找到该问题
	public Answer FindAnswerByID(int id){
		String sql = "select * from answer where answerid = ?";
		Answer answer = null;
		try {
			answer =queryrunner.query(sql, new BeanHandler<Answer>(Answer.class),id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return answer;	
	}
	
	//根据问题提出者id找到该用户
	public User FindUserByID(int id){
		String sql = "select * from user where userid = ?";
		User user = null;
		try {
			user = queryrunner.query(sql, new BeanHandler<User>(User.class),id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
	
	//根据回答表的问题id查询出该问题
	public Question FindQuestionById(int id){
		String sql = "select * from question where questionid = ?";
		Question question = new Question();
		try {
			question = queryrunner.query(sql, new BeanHandler<Question>(Question.class),id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return question;	
	}
	
	//根据问题表的类别id查询出类别的名称
	public Category FindCategoryByID(int id){
		String sql = "select * from category where categoryid = ?";
		Category category = new Category();
		try {
			category = queryrunner.query(sql, new BeanHandler<Category>(Category.class),id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return category;
	}
	
	//根据User,Category,Question,Answer对象生成一个UserIndex对象
	public UserIndex CreateUserIndex(User user,Answer answer,Question question,Category category){
		UserIndex userindex = new UserIndex();
		userindex.setAnswerid(answer.getAnswerid());
		userindex.setAnswerproposer(answer.getAnswerproposer());
		userindex.setAnswercontent(answer.getAnswercontent());
		userindex.setAnswertime(answer.getAnswertime());
		userindex.setAnswer_count(answer.getAnswer_count());		
		userindex.setQuestionid(question.getQuestionid());
		userindex.setQuestionproposer(question.getQuestionproposer());
		userindex.setQuestionmadetime(question.getQuestionmadetime());
		userindex.setQuestiontitle(question.getQuestiontitle());
		userindex.setQuestioncontent(question.getQuestioncontent());
		userindex.setQuestionphoto(question.getQuestionphoto());
		userindex.setIspassaudit(question.getIspassaudit());
		userindex.setQuestion_count(question.getQuestion_count());
		userindex.setCategoryid(category.getCategoryid());
		userindex.setCategoryname(category.getCategoryname());
		userindex.setUserid(user.getUserid());
		userindex.setUsername(user.getUsername());
		userindex.setUserpassword(user.getUserpassword());
		userindex.setUsermail(user.getUsermail());
		userindex.setUserphoto(user.getUserphoto());
		userindex.setUsermeans(user.getUsermeans());
		return userindex;
	}
}
