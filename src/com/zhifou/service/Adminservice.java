package com.zhifou.service;

import java.util.List;

import com.zhifou.bean.Admin;
import com.zhifou.bean.Category;
import com.zhifou.bean.Notice;
import com.zhifou.bean.Question;
import com.zhifou.bean.User;
import com.zhifou.dao.Admindao;


public class Adminservice {
	Admindao admindao = new Admindao();
	//获取每页的问题集合
	public List<Question> getcurrentlist(int currentpage) {
		return admindao.getcurrentlist(currentpage);
	}
	//获取问题总数
	public int totalquestion() {
		return admindao.totalquestion();
	}
	//获取问题类型
	public List<Category> getcategory() {
		return admindao.getcategory();
	}
	//审核通过
	public int ispassaudit(int questionid) {
		return admindao.ispassaudit(questionid);
	}
	//撤销通过
	public int nopassaudit(int questionid) {
		return admindao.nopassaudit(questionid);
	}
	//获取问题类型结果集合 下拉框
	public List<Question> issearched(int categoryid, int currentpage) {
		return admindao.issearched(categoryid,currentpage);
	}
	//获取问题类型结果总数 下拉框
	public int categorytotalquestion(int categoryid) {
		return admindao.categorytotalquestion(categoryid);
	}
	//搜索字段自动显示
	public List<Object> searchword(String word) {
		return admindao.searchword(word);
	}
	//模糊查询
	//根据模糊条件得到集合
	public List<Question> fuzzysearch(String fuzzy, int currentpage) {
		return admindao.fuzzysearch(fuzzy,currentpage);
	}
	//获取数据总数totalquestion
	public int fuzzytotalquestion(String fuzzy) {
		return admindao.fuzzytotalquestion(fuzzy);
	}
	//管理员登录
	public Admin adminlogin(String adminmail, String adminpassword) {
		return admindao.adminlogin(adminmail,adminpassword);
	}
	//查询所有用户
	public List<User> getallusers() {
		return admindao.getallusers();
	}
	//发布公告
	public Notice addnotice(String noticetitle, String noticecontent, Integer noticeproposer, String noticerelease) {
		return admindao.addnotice(noticetitle,noticecontent,noticeproposer,noticerelease);
	}
	public List<Admin> getalladmin() {
		return admindao.getalladmin();
	}
	

}
