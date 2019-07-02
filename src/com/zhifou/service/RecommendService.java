package com.zhifou.service;

import java.util.List;

import com.zhifou.bean.Answer;
import com.zhifou.bean.Category;
import com.zhifou.bean.Question;
import com.zhifou.bean.User;
import com.zhifou.bean.UserIndex;
import com.zhifou.dao.RecommendDao;

public class RecommendService {
	private RecommendDao recommendDao = new RecommendDao();
	public List<Answer> FindQuestionByPage(int count,int pagesize){
		return recommendDao.FindQuestionByPage(count, pagesize);
	}
	public User FindUserByID(int id){
		return recommendDao.FindUserByID(id);
	}
	public Question FindQuestionById(int id){
		return recommendDao.FindQuestionById(id);
	}
	public Category FindCategoryByID(int id){
		return recommendDao.FindCategoryByID(id);
	}
	public UserIndex CreateUserIndex(User user,Answer answer,Question question,Category category){
		return recommendDao.CreateUserIndex(user, answer, question, category);
	}
	public Answer FindAnswerByID(int id){
		return recommendDao.FindAnswerByID(id);
	}
	public List<Question> searchLikeQuestion(String search){
		return recommendDao.searchLikeQuestion(search);
	}
	public Answer MaxCountAnswer(int id){
		return recommendDao.MaxCountAnswer(id);
	}
	public Question FindQuestionByQuestionID(int id){
		return recommendDao.FindQuestionByQuestionID(id);
	}
	public List<Answer> FindAllAnswer(int id){
		return recommendDao.FindAllAnswer(id);
	}
}
