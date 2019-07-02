package com.zhifou.dao;
import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import com.zhifou.utils.DataSourceUtils;
public class PersonalMessageDao {
	QueryRunner quarryrunner = new QueryRunner(DataSourceUtils.getDataSource());
	public int uploadpersonalmessage(Integer userid, String userphoto, String username, String userpassword,
			String usermail, String usermeans) {
		String sql = "UPDATE user SET username = ?, userpassword = ?,usermail = ?, userphoto = ? , usermeans = ? WHERE questionid = ?";
		int row = 0;
		try {
			row = quarryrunner.update(sql, username,userpassword,usermail,userphoto,usermeans,userid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return row;
	}

}
