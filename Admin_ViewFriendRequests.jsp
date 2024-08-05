<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Friend Requests Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style3 {
	font-size: 14px;
	color: #660000;
	font-weight: bold;
}
.style5 {font-size: 12px}
.style6 {font-size: 12px; color: #660000; font-weight: bold; }

-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><small>Segregating Spammers and Unsolicited Bloggers from Genuine Experts on Twitter
        Spammers in Twitter</small></a></h1>
      </div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="UserLogin.jsp"><span>Users</span></a></li>
          <li><a href="AdminLogin.jsp"><span>Twitter Admin</span></a></li>
          
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /><span><big>A Hybrid Approach for Detecting Automated Spammers in Twitter</big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /><span><big>A Hybrid Approach for Detecting Automated Spammers in Twitter</big></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /><span><big>A Hybrid Approach for Detecting Automated Spammers in Twitter</big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>All Friend Requests and Responses..</span></h2>          
          <div class="clr"></div>          
		 
		  <p>&nbsp;</p>
		  <table width="650" border="1" align="center">
                    <tr>
                      <td width="27" height="47" align="center" valign="middle"><div align="center" class="style33 style49"><span class="style67 style3 style5"><strong>Id </strong></span></div></td>
                      <td width="100" align="center" valign="middle"><div align="center" class="style36 style64 style70"><strong><span class="style6">Request From </span></strong></div></td>
                      <td width="105" align="center" valign="middle"><div align="center" class="style36 style64 style70"><strong><span class="style6">Requested User </span></strong></div></td>
                      <td width="101" align="center" valign="middle"><div align="center" class="style55 style34 style65"><strong><span class="style6">Request To </span></strong></div></td>
                      <td width="105" align="center" valign="middle"><div align="center" class="style34 style50"><span class="style6"> Request To Name </span></div></td>
					  <td width="87" align="center" valign="middle"><div align="center" class="style38 style67 style70"><strong><span class="style6">Community</span></strong></div></td>
                      <td width="70" align="center" valign="middle"><div align="center" class="style38 style67 style70"><strong><span class="style6">Status</span></strong></div></td>
                      <td width="87" align="center" valign="middle"><div align="center" class="style38 style67 style70"><strong><span class="style6">Date</span></strong></div></td>
                    </tr>
                    <%
 
      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0,k=0;

     try 
	{
           			   
					   String query="select * from frequest"; 
					   Statement st=connection.createStatement();
					   ResultSet rs=st.executeQuery(query);
					   while( rs.next() )
					   {
						
								i=rs.getInt(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(4);
							
				
								String query1="select * from user where username='"+s2+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
							 	while( rs1.next() )
							 	{
									j=rs1.getInt(1);  
							
									String query2="select * from user where username='"+s3+"'"; 
									Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(query2);
									while( rs2.next() )
								 	{
										k=rs2.getInt(1);  
								
		
%>
                    <tr>
                      <td height="111"><div align="center" class="style48 style52 style54" style="color:#000000"><%=i%></div></td>
                      <td><div align="center" class="style48 style52 style54">
                          <input  name="image" type="image" src="user_Pic.jsp?id=<%=j%>" width="100" height="100" alt="Submit" />
                      </div></td>
                      <td><div align="center" class="style48 style52 style56"><a href="Admin_UserProfile.jsp?uname=<%=s2%>&type=<%="Admin_FriendRequests"%>&id=<%=j%>" style="color:#CC0000"><strong><%=s2 %></strong></a></div></td>
                      <td><div align="center" class="style52 style54">
                          <input  name="image2" type="image" src="user_Pic.jsp?id=<%=k%>" width="100" height="100" alt="Submit" />
                      </div></td>
                      <td><div align="center" class="style48 style52 style56"><a href="Admin_UserProfile.jsp?uname=<%=s3%>&type=<%="Admin_FriendRequests"%>&id=<%=k%>" style="color:#CC0000"><strong><%=s3 %></strong></a></div></td>
					  <td><div align="center" class="style48 style52 style54" style="color:#006600"><strong><%= s6%></strong></div></td>
                      <td><div align="center" class="style48 style52 style54" style="color:#000000"><strong><%= s5%></strong></div></td>
                      <td><div align="center" class="style48 style52 style54" style="color:#000000"><%= s4%></div></td>
                    </tr>
                    <%
		  }
	  }
		
	   }
	 

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>
					<p>&nbsp;</p>
			<table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="right"><a href="AdminMain.jsp" class="style14">Back</a></div></td>
            </tr>
          </table>
                          
		  
		  
		  
		  
		  
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="AdminMain.jsp">Home</a></li>
			<li><a href="AdminLogin.jsp">Logout</a></li>
            
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
</body>
</html>
