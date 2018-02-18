package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import com.beans.Post;
import com.beans.User;


public class Account {
	
	
	//declare variables
	String userdb="root";
	String passdb="";
	String driver="com.mysql.jdbc.Driver";
	
	String url="jdbc:mysql://localhost:3306/wt";
	private Connection con;
	 private PreparedStatement pstmt;
	 ArrayList<User> list;
	 ArrayList<Post> list1;
	private void dbConnect() throws ClassNotFoundException, SQLException{
		Class.forName(driver);	//loading the driver
		con=DriverManager.getConnection(url,userdb,passdb);
	}
	private void dbClose() throws SQLException{
		con.close();
	}

	public void insertQuery(String name, String email, String message) throws ClassNotFoundException, SQLException {
		dbConnect();
		String sql="insert into querybox(name,email,message) values (?,?,?)";
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, email);
		pstmt.setString(3, message);
		pstmt.executeUpdate();//executeUpdate for insert
		dbClose();
				
	}
	public boolean checkLogin(String email, String password) throws ClassNotFoundException, SQLException {
		dbConnect();
		String sql="select * from user";//put the first statement of sql query as string
		pstmt=con.prepareStatement(sql);//convert into sql query
		ResultSet result=pstmt.executeQuery();
		list=new ArrayList<User>();
		while(result.next()){
			int id=result.getInt("uid");
			String uemail=result.getString("uemail");
			String upassword=result.getString("upassword");
		User user=new User();
		user.setUemail(uemail);
		user.setUid(id);
		user.setUpassword(upassword);
			list.add(user);
		}
		dbClose();
		Iterator itr=list.iterator();
	while(itr.hasNext()){
		User u=(User) itr.next();
		if(u.getUemail().equals(email) && u.getUpassword().equals(password)){
			return true;
		}
	
	}return false;
	}
	public void insertUser(String fullname, String address, String password,
			String repassword, String email, String contact) throws ClassNotFoundException, SQLException {
		dbConnect();
		String sql="insert into user(uname,uemail,ucontact,upassword) values (?,?,?,?)";
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, fullname);
		pstmt.setString(2, email);
		pstmt.setString(3, contact);
		pstmt.setString(4, password);
		
		pstmt.executeUpdate();//executeUpdate for insert
		dbClose();
		
	}
	public void insertDoctor(String fullname, String password,
			String repassword, String email, String contact,
			String qualification, String clinical_address) throws ClassNotFoundException, SQLException {
		dbConnect();
		String sql="insert into doctor(dname,demail,dcontact,dpassword,dqualification,daddress) values (?,?,?,?,?,?)";
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, fullname);
		pstmt.setString(2, email);
		pstmt.setString(3, contact);
		pstmt.setString(4, password);
		pstmt.setString(5, qualification);
		pstmt.setString(6, clinical_address);
		
		pstmt.executeUpdate();//executeUpdate for insert
		dbClose();
		dbConnect();
		 sql="insert into user(uname,uemail,ucontact,upassword) values (?,?,?,?)";
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, fullname);
		pstmt.setString(2, email);
		pstmt.setString(3, contact);
		pstmt.setString(4, password);
		
		pstmt.executeUpdate();//executeUpdate for insert
		dbClose();
		
	}
	public void insertResearcher(String fullname, 
			String password, String repassword, String email, String contact,
			String qualification, String clinical_address) throws ClassNotFoundException, SQLException {
		
	dbConnect();
	String sql="insert into researcher(rname,remail,rcontact,rposition,rpassword,raddress) values (?,?,?,?,?,?)";
	pstmt=con.prepareStatement(sql);
	pstmt.setString(1, fullname);
	pstmt.setString(2, email);
	pstmt.setString(3, contact);
	pstmt.setString(4, qualification);
	pstmt.setString(5, password);
	pstmt.setString(6, clinical_address);
	pstmt.executeUpdate();//executeUpdate for insert
	dbClose();
	dbConnect();
	 sql="insert into user(uname,uemail,ucontact,upassword) values (?,?,?,?)";
	pstmt=con.prepareStatement(sql);
	pstmt.setString(1, fullname);
	pstmt.setString(2, email);
	pstmt.setString(3, contact);
	pstmt.setString(4, password);
	
	pstmt.executeUpdate();//executeUpdate for insert
	dbClose();

	}
	public ArrayList<Post> searchPost(String title) throws ClassNotFoundException, SQLException {
		dbConnect();
		String sql="select * from blog_post where btitle LIKE ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, "%" + title + "%");
		ResultSet rst =pstmt.executeQuery();
		list1 = new ArrayList<Post>();
		while(rst.next()){
			Post p =new  Post();
			p.setBid(rst.getInt("bid"));
			p.setBtitle(rst.getString("btitle"));
			p.setBarticle(rst.getString("barticle"));
			p.setDate_published(rst.getString("date_published"));
			p.setViews(rst.getInt("views"));
			p.setCat_id(rst.getInt("cat_id"));
			list1.add(p);
			p=null;	
	
	}dbClose();
return list1;
}
	public boolean insertBlog(String blog, String title,String date,String type) throws SQLException, ClassNotFoundException {
		
		boolean st;
		dbConnect();
		 st=true;
		String sql="insert into blog_post(btitle,barticle,dt_id,date_published,views,cat_id) values(?,?,?,?,?,?)";
		 pstmt=con.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, blog);
			pstmt.setString(3, "2");
			pstmt.setString(4, date);
			pstmt.setInt(5, 10);
			if(type.equals("Inspirational Stories"))
			pstmt.setInt(6, 1);
			else if(type.equals("Research Stuff"))
				pstmt.setInt(6, 2);
			else 
				pstmt.setInt(6, 3);
			
			pstmt.executeUpdate();
		
		
		dbClose();
		if(st==true)
			return true;
		
		return false;
		
	}
	public boolean resetPassword(String email, String password) throws ClassNotFoundException, SQLException {
		
		boolean status=false;
		dbConnect();
		String sql="update user set upassword=? where uemail=?";
		 pstmt=con.prepareStatement(sql);
			pstmt.setString(1, password);
			pstmt.setString(2, email);
		
		pstmt.executeUpdate();
		status=true;
		dbClose();
		if(status==true)
			return true;
		
		return false;
		
	}
	}
	

