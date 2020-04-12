package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.pojo.student;
import com.util.MySQL;
public class RequestDAO {

	public List<student> getAllStudentDetails(String roll_num) throws Exception	{
		Connection con = null;
		List<student> student = new ArrayList<>();
		try {
			con=MySQL.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from STUDENT where roll_num=?");
				ps.setString(1,roll_num);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				student st = new student();
				st.setRollnum(rs.getString("roll_num"));
				st.setFname(rs.getString("first_name"));
				st.setLname(rs.getString("last_name"));
				student.add(st);
			}
			return student;	
		}
		catch(Exception e)
		{
			throw e;
		}
		finally {
			con.close();
		}
		
	}
}
