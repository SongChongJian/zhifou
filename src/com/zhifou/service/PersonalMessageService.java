package com.zhifou.service;

import com.zhifou.dao.PersonalMessageDao;

public class PersonalMessageService {
	PersonalMessageDao personalmessagedao =new PersonalMessageDao();
	public int uploadpersonalmessage(Integer userid,String userphoto, String username, String userpassword, String usermail,
			String usermeans) {
		return personalmessagedao.uploadpersonalmessage(userid, userphoto, username, userpassword, usermail, usermeans);
	}

}
