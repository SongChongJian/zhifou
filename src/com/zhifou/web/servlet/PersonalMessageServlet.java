package com.zhifou.web.servlet;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import com.zhifou.bean.Answer;
import com.zhifou.bean.User;
import com.zhifou.service.PersonalMessageService;
import com.zhifou.service.RecommendService;


@WebServlet("/personalmessageservlet")
public class PersonalMessageServlet extends BaseServlet {
	RecommendService recommendService = new RecommendService();
	PersonalMessageService personalmessageservice = new PersonalMessageService();
	public void uploadpersonalmessage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userphoto = request.getParameter("userphoto");
		String username = request.getParameter("username");
		String userpassword = request.getParameter("userpassword");
		String usermail = request.getParameter("usermail");
		String usermeans = request.getParameter("usermeans");
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");		
		int row = personalmessageservice.uploadpersonalmessage(user.getUserid(),userphoto,username,userpassword,usermail,usermeans);
		response.getWriter().write(row>0?"1":"0");
	}
	
	
	public void personalAnswer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	   User user = (User)request.getSession().getAttribute("user");
	   int userid = user.getUserid();
	   List<Answer> answers = personalmessageservice.personalAnswer(userid);
	   request.setAttribute("answers", answers);
	   request.getRequestDispatcher("personalCenter.jsp").forward(request, response);		
	}
	
	
	public void modifyData(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");		
		User user = (User)request.getSession().getAttribute("user");
		Integer userid = user.getUserid();
		String username = null;
		String userpassword = null;
		String usermail = null ;
		String userphoto = null;
		String usermeans =null;
		try {
			// 使用Apache文件上传组件处理文件上传步骤：
			// 1、创建一个DiskFileItemFactory工厂
			DiskFileItemFactory factory = new DiskFileItemFactory();
			// 2、创建一个文件上传解析器
			ServletFileUpload upload = new ServletFileUpload(factory);
			// 解决上传文件名的中文乱码  
            upload.setHeaderEncoding("utf-8"); 
						
			// 4、使用ServletFileUpload解析器解析上传数据，解析结果返回的是一个List<FileItem>集合，每一个FileItem对应一个Form表单的输入项
			List<FileItem> list = upload.parseRequest(request);
			for (FileItem item : list) {
				// 如果fileitem中封装的是普通输入项的数据
				if (item.isFormField()) {
					String name = item.getFieldName();
					String value = item.getString("UTF-8");
					switch(name){
						case "username": 
							username = value;
							break;
						case "userpassword":
							userpassword= value;
							break;
						case "usermail": 
							usermail=value;
							break;
						case "usermeans":
							usermeans = value;
							break;						
					}
					System.out.println(name + "=" + value);

				} else {
					
					//读取上传的文件
					InputStream is = item.getInputStream();
					//aa.jpg  bb.txt  cc.rar
					String filename = item.getName();					
					String subfix = filename.substring(filename.indexOf("."));					
					String nfilename = new Date().getTime()+subfix;
					
					userphoto ="/img/"+filename;
					
					File file = new File("E:\\upload\\"+filename);
					if(!file.exists()){
						file.createNewFile();
					}
					
					FileOutputStream fos = new FileOutputStream(file);
					
					//转存文件
					byte[] b = new byte[512];
					int len=-1;//标记文件是否读取结束
					while((len=is.read(b))!=-1){
						fos.write(b,0,len);
					}									
					is.close();				
					fos.close();
					
				}
			}
		}  catch (Exception e) {
			e.printStackTrace();
		}
		
		//调用service层插入数据库
		int row = personalmessageservice.uploadpersonalmessage(userid, userphoto, username, userpassword, usermail, usermeans);
		//更新用户信息
		User user1 = recommendService.FindUserByID(userid);
		request.getSession().setAttribute("user", user1);
		request.getRequestDispatcher("personalmessageservlet?method=personalAnswer").forward(request, response);	
	}


}












