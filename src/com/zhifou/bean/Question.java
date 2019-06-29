package com.zhifou.bean;

public class Question {
	private Integer questionid;//问题id
	private Integer questionproposer;//问题提出者(userID)
	private String questionmadetime;//问题提出时间
	private String questiontitle;//问题标题
	private String questioncontent;//问题内容
	private String questionphoto;//问题图片
	private Integer ispassaudit;//审核状态
	private Integer categoryid;//问题类型(categoryID)
	private Integer question_count;//问题浏览次数
	public Integer getQuestionid() {
		return questionid;
	}
	public void setQuestionid(Integer questionid) {
		this.questionid = questionid;
	}
	public Integer getQuestionproposer() {
		return questionproposer;
	}
	public void setQuestionproposer(Integer questionproposer) {
		this.questionproposer = questionproposer;
	}
	public String getQuestionmadetime() {
		return questionmadetime;
	}
	public void setQuestionmadetime(String questionmadetime) {
		this.questionmadetime = questionmadetime;
	}
	public String getQuestiontitle() {
		return questiontitle;
	}
	public void setQuestiontitle(String questiontitle) {
		this.questiontitle = questiontitle;
	}
	public String getQuestioncontent() {
		return questioncontent;
	}
	public void setQuestioncontent(String questioncontent) {
		this.questioncontent = questioncontent;
	}
	public String getQuestionphoto() {
		return questionphoto;
	}
	public void setQuestionphoto(String questionphoto) {
		this.questionphoto = questionphoto;
	}
	public Integer getIspassaudit() {
		return ispassaudit;
	}
	public void setIspassaudit(Integer ispassaudit) {
		this.ispassaudit = ispassaudit;
	}
	public Integer getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(Integer categoryid) {
		this.categoryid = categoryid;
	}
	public Integer getQuestion_count() {
		return question_count;
	}
	public void setQuestion_count(Integer question_count) {
		this.question_count = question_count;
	}
	
}
