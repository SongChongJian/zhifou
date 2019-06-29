package com.zhifou.bean;

public class Question {
	private String questionid;//问题id
	private String questionproposer;//问题提出者(userID)
	private String questionmadetime;//问题提出时间
	private String questioncontent;//问题内容
	private String ispassaudit;//审核状态
	private String categoryid;//问题类型(categoryID)
	private String question_count;//问题浏览次数
	public String getQuestionid() {
		return questionid;
	}
	public void setQuestionid(String questionid) {
		this.questionid = questionid;
	}
	public String getQuestionproposer() {
		return questionproposer;
	}
	public void setQuestionproposer(String questionproposer) {
		this.questionproposer = questionproposer;
	}
	public String getQuestionmadetime() {
		return questionmadetime;
	}
	public void setQuestionmadetime(String questionmadetime) {
		this.questionmadetime = questionmadetime;
	}
	public String getQuestioncontent() {
		return questioncontent;
	}
	public void setQuestioncontent(String questioncontent) {
		this.questioncontent = questioncontent;
	}
	public String getIspassaudit() {
		return ispassaudit;
	}
	public void setIspassaudit(String ispassaudit) {
		this.ispassaudit = ispassaudit;
	}
	public String getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(String categoryid) {
		this.categoryid = categoryid;
	}
	public String getQuestion_count() {
		return question_count;
	}
	public void setQuestion_count(String question_count) {
		this.question_count = question_count;
	}
	
}
