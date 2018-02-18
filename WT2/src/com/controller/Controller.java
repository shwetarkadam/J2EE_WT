package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.Post;
import com.beans.User;
import com.model.Account;


public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
HttpSession session;
ArrayList<Post> list;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action==null){
			request.setAttribute("msg", "");
			request.setAttribute("email", "");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}else{
			doPost(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
String action=request.getParameter("action");//querybox--login_form--
Account account=new Account();
session=request.getSession();
		if(action.equals("querybox")){
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String message1=request.getParameter("message");
		//System.out.print("name"+name+"\t\temail:"+email+"\t\tmessage"+message);
			
		try {
			account.insertQuery(name,email,message1);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


        //Get the session object
          Properties props = new Properties();
          props.put("mail.smtp.host", "smtp.gmail.com");
          props.put("mail.smtp.socketFactory.port", "465");
          props.put("mail.smtp.socketFactory.class",
                    "javax.net.ssl.SSLSocketFactory");
          props.put("mail.smtp.auth", "true");
          props.put("mail.smtp.port", "465");

          Session session = Session.getDefaultInstance(props,
           new javax.mail.Authenticator() {
           protected PasswordAuthentication getPasswordAuthentication() {
           return new PasswordAuthentication("shwetarkadam259@gmail.com","i@mnoquitter");
           }
          });

        //compose message
          try {
           MimeMessage message = new MimeMessage(session);
           message.setFrom(new InternetAddress("shwetarkadam259@gmail.com"));
           message.addRecipient(Message.RecipientType.TO,new InternetAddress(email));
           message.setSubject("Did You Have Any Query?");
           message.setContent("Hi,will reply within a few days in the meanwhile do refer this   : https://medlineplus.gov/autismspectrumdisorder.html","text/html");

           //send message
           Transport.send(message);

           System.out.println("message sent successfully");

          } catch (MessagingException e) {throw new RuntimeException(e);}
    
      	request.getRequestDispatcher("index.jsp").forward(request, response);
	}
		
		if(action.equals("login_form")){
			request.setAttribute("msg", "");
			request.setAttribute("email", "");
		
			String email=request.getParameter("email");
			String password=request.getParameter("password");
	
			boolean status;
			try {
				status = account.checkLogin(email, password);
				if(status== true){
					request.setAttribute("msg", "");
					session.setAttribute("email", email);
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
				else{
					request.setAttribute("msg", "Invalid Login");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
					
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			
		}
		
		if(action.equals("sign_up")){
			request.setAttribute("msg3","");
		
			request.getRequestDispatcher("option.jsp").forward(request, response);
		}
		if(action.equals("user_signup_form")){
			String fullname=request.getParameter("fullname");
			String address=request.getParameter("address");
			String password=request.getParameter("password");
			String repassword=request.getParameter("repassword");
			String email=request.getParameter("email");
			String contact=request.getParameter("contact");
			User user=new User();
			boolean status=user.validate(email,fullname,address,password,repassword,contact);
			if(status==true){
						
				request.setAttribute("msg", "Registration Success,Please Login Again");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			else{
				request.setAttribute("msg3",user.getMsg3());
				request.setAttribute("msgfullname",user.getMsgfullname());
				request.setAttribute("msgcontact",user.getMsgcontact());
				request.setAttribute("msgpassword",user.getMsgpassword());
				request.setAttribute("msgrepassword",user.getMsgrepassword());
				request.getRequestDispatcher("user.jsp").forward(request, response);
			}
			try {
				account.insertUser(fullname,address,password,repassword,email,contact);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			response.getWriter().print("Your Query has been saved ....Will reply later ...");
		}
		
		
		
		if(action.equals("doctor_signup")){
			String fullname=request.getParameter("fullname");
		;
			String password=request.getParameter("password");
			String repassword=request.getParameter("repassword");
			String email=request.getParameter("email");
			String contact=request.getParameter("contact");
			String qualification=request.getParameter("qualification");
			String clinical_address=request.getParameter("clinical_address");
			User user=new User();
			boolean status=user.validateDoctor(email,fullname,clinical_address,password,repassword,contact);
			if(status==true){
						
				request.setAttribute("msg", "Registration Success,Please Login Again");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			else{
				request.setAttribute("msg3",user.getMsg3());
				request.setAttribute("msgfullname",user.getMsgfullname());
				request.setAttribute("msgcontact",user.getMsgcontact());
				request.setAttribute("msgpassword",user.getMsgpassword());
				request.setAttribute("msgrepassword",user.getMsgrepassword());
				request.setAttribute("msgaddress",user.getMsgaddress());
				
				request.getRequestDispatcher("doctor.jsp").forward(request, response);
			}
			try {
				account.insertDoctor(fullname,password,repassword,email,contact,qualification,clinical_address);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		
		if(action.equals("researcher_signup")){
			String fullname=request.getParameter("fullname");
		
			String password=request.getParameter("password");
			String repassword=request.getParameter("repassword");
			String email=request.getParameter("email");
			String contact=request.getParameter("contact");
			String qualification=request.getParameter("qualification");
			String clinical_address=request.getParameter("clinical_address");
			User user=new User();
			boolean status=user.validateDoctor(email,fullname,clinical_address,password,repassword,contact);
			if(status==true){
						
				request.setAttribute("msg", "Registration Success,Please Login Again");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			else{
				request.setAttribute("msg3",user.getMsg3());
				request.setAttribute("msgfullname",user.getMsgfullname());
				request.setAttribute("msgcontact",user.getMsgcontact());
				request.setAttribute("msgpassword",user.getMsgpassword());
				request.setAttribute("msgrepassword",user.getMsgrepassword());
				request.setAttribute("msgaddress",user.getMsgaddress());
				System.out.print(""+user.getMsgpassword());
				request.getRequestDispatcher("researcher.jsp").forward(request, response);
			}
			try {
				account.insertResearcher(fullname,password,repassword,email,contact,qualification,clinical_address);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			response.getWriter().print("Your doctor has been saved ....Will reply later ...");
		}
		
		
if(action.equals("blog_post")){
	String blog =request.getParameter("editor1");
	String title=request.getParameter("post_title");
	String date=request.getParameter("post_date");
	String type=request.getParameter("state");
	boolean status = false;
	try {
		status = account.insertBlog(blog,title,date,type);
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	if(status==true){
		request.setAttribute("msg", "Post Insertion successs");
		request.getRequestDispatcher("write.jsp").forward(request, response);
	}
	else{
		request.setAttribute("msg", "UNSUCCEFULL");
		request.getRequestDispatcher("write.jsp").forward(request, response);
	
	}
	
}
		if(action.equals("show_post")){
			String cat_id=request.getParameter("cat_id");//1
			String bid=request.getParameter("bid");
			String btitle=request.getParameter("btitle");
			String barticle=request.getParameter("barticle");
			String views=request.getParameter("views");


			request.setAttribute("cat_id", cat_id);
			request.setAttribute("flag", "100");

			request.getRequestDispatcher("inspire_option.jsp").forward(request, response);

			}
		
		if(action.equals("show_post_by_title")){
			
			String bid=request.getParameter("bid");
			String btitle=request.getParameter("btitle");
			
			
			request.setAttribute("bid", bid);
			request.setAttribute("btitle", btitle);
			System.out.print("btitle"+btitle);
			request.getRequestDispatcher("inspirational.jsp").forward(request, response);
			
		}
		if(action.equals("logout")){
			session.removeAttribute("email");
			System.out.print("logogged out");
			response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
			response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
			response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
			response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
			String userName = (String) session.getAttribute("User");
			if (null == userName) {
			   request.setAttribute("Error", "Session has ended.  Please login.");
			   request.getRequestDispatcher("logout.jsp").forward(request, response);
			}
			session.invalidate();
			
			
		}
		if(action.equals("search")){
			String title= request.getParameter("title");//j
			//DB check
			account = new Account();
		
			list = new ArrayList<Post>();
			
			try {
				list=account.searchPost(title);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			

			session.setAttribute("list", list);
			for(Post p :list){
			response.getWriter().print(p.getBtitle() + "<BR><BR>");

			}
			}
		
		if(action.equals("titlefound")){
			String title=request.getParameter("hiddenTitle");
			
			
		}
		
		if(action.equals("reset_password")){
			String password=request.getParameter("password");
			String repassword=request.getParameter("repassword");
			String email=request.getParameter("email");
			User user=new User();
			boolean status2=user.validateResetPassword(email,password,repassword);
			if(status2==true){
				boolean status3 = false;
				try {
					status3 = account.resetPassword(email,password);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				if(status3==true){request.setAttribute("msg", "Password reset Successfully,Please Login Again");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
				
				else{
					request.setAttribute("msg3",user.getMsg3());
					request.setAttribute("msgpassword",user.getMsgpassword());
					request.setAttribute("msgrepassword",user.getMsgrepassword());
					request.setAttribute("msg", "Password reset UnSuccessfully,Please try Again");
					request.getRequestDispatcher("reset_password.jsp").forward(request, response);
				}
			}else{
				request.setAttribute("msg3",user.getMsg3());
				request.setAttribute("msgpassword",user.getMsgpassword());
				request.setAttribute("msgrepassword",user.getMsgrepassword());
				request.setAttribute("msg", "Please FIll the details");
				request.getRequestDispatcher("reset_password.jsp").forward(request, response);
			}
				}
		
		        if(action.equals("sendmail"))
		        {
		            String to = request.getParameter("to");

		            //Get the session object
		              Properties props = new Properties();
		              props.put("mail.smtp.host", "smtp.gmail.com");
		              props.put("mail.smtp.socketFactory.port", "465");
		              props.put("mail.smtp.socketFactory.class",
		                        "javax.net.ssl.SSLSocketFactory");
		              props.put("mail.smtp.auth", "true");
		              props.put("mail.smtp.port", "465");

		              Session session = Session.getDefaultInstance(props,
		               new javax.mail.Authenticator() {
		               protected PasswordAuthentication getPasswordAuthentication() {
		               return new PasswordAuthentication("shwetarkadam259@gmail.com","i@mnoquitter");
		               }
		              });

		            //compose message
		              try {
		               MimeMessage message = new MimeMessage(session);
		               message.setFrom(new InternetAddress("shwetarkadam259@gmail.com"));
		               message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
		               message.setSubject("RESET PASSWORD");
		               message.setContent("Hi,Java mail works  : http://localhost:8080/WT2/reset_password.jsp","text/html");

		               //send message
		               Transport.send(message);

		               System.out.println("message sent successfully");

		              } catch (MessagingException e) {throw new RuntimeException(e);}
		        }
		}
		
		
	}
