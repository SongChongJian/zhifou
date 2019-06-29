package com.zhifou.bean;

public class Answer {
	private String answerid;//回答ID
	private String answerproposer;//回答提出者(userID)
	private String answercontent;//回答内容
	private String answertime;//回答时间
	private String questionid;//外键问题(quesID)
	private String answer_count;//回答浏览次数
	public String getAnswerid() {
		return answerid;
	}
	public void setAnswerid(String answerid) {
		this.answerid = answerid;
	}
	public String getAnswerproposer() {
		return answerproposer;
	}
	public void setAnswerproposer(String answerproposer) {
		this.answerproposer = answerproposer;
	}
	public String getAnswercontent() {
		return answercontent;
	}
	public void setAnswercontent(String answercontent) {
		this.answercontent = answercontent;
	}
	public String getAnswertime() {
		return answertime;
	}
	public void setAnswertime(String answertime) {
		this.answertime = answertime;
	}
	public String getQuestionid() {
		return questionid;
	}
	public void setQuestionid(String questionid) {
		this.questionid = questionid;
	}
	public String getAnswer_count() {
		return answer_count;
	}
	public void setAnswer_count(String answer_count) {
		this.answer_count = answer_count;
	}
	
}
