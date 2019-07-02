package com.zhifou.web.servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhifou.bean.User;
import com.zhifou.service.PersonalMessageService;


@WebServlet("/personalmessageservlet")
public class PersonalMessageServlet extends BaseServlet {
	public void uploadpersonalmessage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userphoto = request.getParameter("userphoto");
		String username = request.getParameter("username");
		String userpassword = request.getParameter("userpassword");
		String usermail = request.getParameter("usermail");
		String usermeans = request.getParameter("usermeans");
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		PersonalMessageService personalmessageservice = new PersonalMessageService();
		int row = personalmessageservice.uploadpersonalmessage(user.getUserid(),userphoto,username,userpassword,usermail,usermeans);
		response.getWriter().write(row>0?"1":"0");
	}
/*
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String photo = request.getParameter("photo");
		new 
		System.out.println(photo);
		//1.创建解析工厂
		try {
			DiskFileItemFactory factory = new DiskFileItemFactory();
			//2.创建解析器
			ServletFileUpload upload = new ServletFileUpload(factory);
			//3.解析request请求
			List<FileItem> list = upload.parseRequest(request);
			//4.遍历集合		
			for(FileItem item:list){
				if (item.isFormField()){
					String name = item.getName();
					String value = item.getString();
					System.out.println();
				}else{
					InputStream is = item.getInputStream();
					//aa.jpg  bb.txt  cc.rar
					String filename = item.getName();
					String subfix = filename.substring(filename.indexOf("."));
					
					String nfilename = new Date().getTime()+subfix;
					String uploadname="/img"+nfilename;
					File file = new File("E:\\upload\\"+nfilename);
					if(!file.exists()){
						file.createNewFile();
					}
					FileOutputStream fos = new FileOutputStream(file);
					byte[] b = new byte[512];
					int len = -1;
					while((len=is.read(b))!=-1){
						fos.write(b,0,len);
					}		
					//关闭流
					is.close();
					fos.close();
				}
			}
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();	
		}
	}*/


}












