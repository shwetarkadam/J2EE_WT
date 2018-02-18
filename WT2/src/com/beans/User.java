package com.beans;

public class User {
	private int uid;
	private String uname;
	private String uemail;
	private String upassword;
	private String ucontact;
	private String msg3="";
	private String msgfullname="";
	public String getMsgfullname() {
		return msgfullname;
	}
	public void setMsgfullname(String msgfullname) {
		this.msgfullname = msgfullname;
	}
	private String msgpassword="";
	private String msgrepassword="";
	private String msgcontact="";
	private String msgaddress="";
	
	public String getMsgpassword() {
		return msgpassword;
	}
	public void setMsgpassword(String msgpassword) {
		this.msgpassword = msgpassword;
	}
	public String getMsgrepassword() {
		return msgrepassword;
	}
	public void setMsgrepassword(String msgrepassword) {
		this.msgrepassword = msgrepassword;
	}
	public String getMsgcontact() {
		return msgcontact;
	}
	public void setMsgcontact(String msgcontact) {
		this.msgcontact = msgcontact;
	}
	public String getMsgaddress() {
		return msgaddress;
	}
	public void setMsgaddress(String msgaddress) {
		this.msgaddress = msgaddress;
	}
	public String getMsg3() {
		return msg3;
	}
	public void setMsg3(String msg3) {
		this.msg3 = msg3;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getUcontact() {
		return ucontact;
	}
	public void setUcontact(String ucontact) {
		this.ucontact = ucontact;
	}
	public boolean validate(String email, String fullname, String address, String password, String repassword, String contact) {
		
		if(fullname.equals("")){
			msgfullname="Please Enter name";
		}
		if(address.equals("")){
			msgaddress="Please Enter address";
		}
		if(contact.equals("")){
			msgcontact="Please Enter contact";
		}
		else if(!(contact.length()<=10 || contact.length()>=11)){
			msgcontact="Contact should be of 10/11 digits";
		}
		if(email.equals(""))
			msg3="Please enter email";
			else if(!(email.matches("\\w+\\@\\w+\\.\\w{2,4}")))
				msg3="Email not Valid,Please Enter Valid email";
		if(password.equals(""))
			msgpassword="Please Enter password";
		if(repassword.equals(""))
			msgrepassword="Please Enter repassword";
		
		else if(!(password.equals(repassword)))
			msgrepassword="Repassword should match password";
		
		if(msg3.equals("") && msgfullname.equals("") && msgcontact.equals("") && msgpassword.equals("") && msgrepassword.equals("") && msgaddress.equals(""))
			return true;
		
		return false;
	}
	
	

	public boolean validateDoctor(String email, String fullname, String clinical_address, String password, String repassword, String contact) {
		
		if(fullname.equals("")){
			msgfullname="Please Enter name";
		}
		if(clinical_address.equals("")){
			msgaddress="Please Enter address";
		}
		if(contact.equals("")){
			msgcontact="Please Enter contact";
		}
		else if(!(contact.length()<=10 || contact.length()>=11)){
			msgcontact="Contact should be of 10/11 digits";
		}
		if(email.equals(""))
			msg3="Please enter email";
			else if(!(email.matches("\\w+\\@\\w+\\.\\w{2,4}")))
				msg3="Email not Valid,Please Enter Valid email";
		if(password.equals(""))
			msgpassword="Please Enter password";
		if(repassword.equals(""))
			msgrepassword="Please Enter repassword";
		
		else if(!(password.equals(repassword)))
			msgrepassword="Repassword should match password";
		
		if(msg3.equals("") && msgfullname.equals("") && msgcontact.equals("") && msgpassword.equals("") && msgrepassword.equals("") && msgaddress.equals(""))
			return true;
		
		return false;
	}
	public boolean validateResetPassword(String email, String password,
			String repassword) {
		if(email.equals(""))
			msg3="Please enter email";
			else if(!(email.matches("\\w+\\@\\w+\\.\\w{2,4}")))
				msg3="Email not Valid,Please Enter Valid email";
		if(password.equals(""))
			msgpassword="Please Enter password";
		if(repassword.equals(""))
			msgrepassword="Please Enter repassword";
		
		else if(!(password.equals(repassword)))
			msgrepassword="Repassword should match password";
		
		if(msg3.equals("") &&  msgpassword.equals("") && msgrepassword.equals(""))
			return true;
		
		return false;
	}
}
