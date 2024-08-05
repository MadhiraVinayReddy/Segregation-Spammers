<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Tweet Details Page</title>
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
.style7 {color:#660000}
.style8 {color: #000000}
.style9 {color: #006666}
.style11 {color: #006600}
.style12 {color:#D64F14}
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
          <h2><span>Tweet <%=request.getParameter("tname") %> Details..</span></h2>          
          <div class="clr"></div>          
		  <p>&nbsp;</p>
		  	<p>
			 
			 <%
          String uname=(String)application.getAttribute("uname");
		  
		  	String type=request.getParameter("type");
		    String tname=request.getParameter("tname");
			String up_Name=request.getParameter("up_Name");
			String sc= request.getParameter("score");
		    String one=request.getParameter("id");
		  
           String s0="",s1="",Keyword="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",url="";
	       int i=0,k=0,rank1=0;
  try 
	{	
	
	int score = Integer.parseInt(sc);
	int id = Integer.parseInt(one);
	
	String sql1="update tweets set score='"+score+"' where id='"+id+"' ";
	Statement stmt1 = connection.createStatement();
	stmt1.executeUpdate(sql1);
	
	
  String str="select * from tweets where tname='"+tname+"' and uname='"+up_Name+"' "; 
  Statement st=connection.createStatement();
   ResultSet rs=st.executeQuery(str);
   	   
	if ( rs.next() )
	   {
		i  = rs.getInt(1);
		s0 = rs.getString(2);
		s1 = rs.getString(5);
		s2 = rs.getString(6);
		s3 = rs.getString(7);
		s4 = rs.getString(11);
		s5 = rs.getString(10);
		s6 = rs.getString(4);
		s7 = rs.getString(12);
		url = rs.getString(10);
		
		
					
				
				
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					
					String descr = new String(Base64.decode(s3.getBytes()));
									
				
									
	
%>
          </p>
          
 <table border="1" align="center" cellpadding="0" cellspacing="0"  width="600" >
				 				<tr >
								    <td width="148" rowspan="10" bgcolor="#FFFFFF" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > 
									    <div align="center"><a class="#" id="img1" href="#" >
		                        <input  name="image" type="image" src="images.jsp?value=<%="Tweet"%>&id=<%=i%>" style="width:120px; height:120px;"  />
								                                  </a> </div>
								  </div></td>
								  	<td width="128" height="27" bgcolor="#FFFFFF" >
								  <div align="center" class="style7"><strong>Published By </strong></div></td>
							      <td width="316" bgcolor="#FFFFFF"><div align="center" class="style8"><strong><a href="User_UProfile.jsp?uname=<%=s6%>&up_Name=<%=up_Name%>&type=<%=type%>&id=<%=one%>&tname=<%=tname%>&score=<%=sc%>" style="color:#CC0033"><%= s6%></a></strong></div></td>
		  						<tr/>
								<tr>
									<td width="128" height="27" bgcolor="#FFFFFF" >
								  <div align="center" class="style7"><strong>Tweet Name </strong></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style12"><strong><%= s0%></strong></div></td>
				    			</tr>
								<tr>
									<td width="128" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><strong>Tweet About </strong></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style8"><strong><%= s1%></strong></div></td>
				    			</tr>
								<tr>
									<td width="128" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><strong>Tweet Uses </strong></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style8"><strong><%= s2%></strong></div></td>
				    			</tr>
				    
				    			<tr>
									<td width="128" height="27" bgcolor="#FFFFFF">
						  		  <div align="center" class="style7"><strong>Tweet Description </strong></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style8"><strong><%= descr%></strong></div></td>
								</tr>
								
								<tr>
										<td width="128" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style10 style7"><strong>Published Date </strong></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8"><strong><%= s7%></strong></div></td>
								</tr>
								<tr>
										<td width="128" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style10 style7"><strong>Tweet Owner </strong></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8"><strong><%= s4%></strong></div></td>
								</tr>
								<tr>
										<td width="128" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><strong>Tweet URL</strong></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style9"><strong><a href="http://<%= url%>" style="color:#006666"><%= url%></a></strong></div></td>
								</tr>
								<tr>
										<td width="128" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style7"><strong>Tweet Score</strong></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8"><strong><%= score%></strong></div></td>
								</tr>
								
								
						<%
						}
						
						
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		</table>
		
		
		
				 
            <p align="right"><a href="UserMain.jsp" class="style4">Back</a></p>
	  
	  <p>&nbsp;</p>
		<form name="s" action="User_Interaction.jsp?tname=<%=s0%>&upname=<%=s6%>" method="post"  onSubmit="return valid()"  ons target="_top">
    
	<table width="600" border="0" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr><td></td><td></td>
 						<td   width="200" align="left" valign="middle" height="45" style="color: #660000;"><div align="right" class="style7"  style="margin-left:20px;">Give Interactions </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><textarea name="interaction" rows="3" cols="23"></textarea></div></td>
					
					  <td height="45" colspan="2" id="learn_more" align="center"  style="color:#003399;"><span style="font-size: 18px">
				      <input type="submit" value="Add Interaction" style="width:100px; height:35px; background-color:#fc6400; color:#FFFFFF;"/>
					    </span></td>
					</tr>
          </table>


	 </form>
	  
	  
	  
	  <p>&nbsp;</p>
	  
	  
	   <h2 align="center" class="style9">All User Interactions On The Tweet </h2>
	
		<p><table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr bgcolor="#FFFFFF"><td width="127" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 " style="	margin-left:20px;"><strong><strong>Image</strong></strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 " style="margin-left:20px;"><strong> Interacted By</strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 " style="margin-left:20px;"><strong> Interactions </strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 " style="margin-left:20px;"><strong> Interacted Date </strong></div></td>
			</tr>
			

					<%
						
						int count=0;
						try 
						{   
							int id = Integer.parseInt(one);
							   
						   	String query="select * from interactions where tname='"+tname+"' and publisher='"+up_Name+"' "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query);
					   		while ( rs1.next() )
					   		{
								int j=rs1.getInt(1);
								
								String i_user=rs1.getString(4);
								String dt=rs1.getString(7);
							    String interaction=rs1.getString("interactions");
								
								count++;
						
					%>
		<tr>
			<td width="50" bgcolor="#FFFFFF">
			<div class="style8 style2" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="images.jsp?value=<%="Tweet"%>&id=<%=id%>" style="width:50px; height:50px;"  />
		    </a></div>	</td>
			
			
			<%if(i_user.equalsIgnoreCase(uname)){%>
			   <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
			   <div align="left" class="style11" style="margin-left:20px;"><strong><em> <%out.println(i_user);%> 
 		    </em></strong></div></td>
			
			<%}else{%>
			
			 <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em><a href="User_UProfile.jsp?uname=<%=i_user%>&up_Name=<%=up_Name%>&type=<%=type%>&id=<%=one%>&tname=<%=tname%>&score=<%=sc%>" style="color:#006600"> <%out.println(i_user);%> 
		    </a></em></strong></div></td>
			<%}%>
			
			
			    <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
				<div align="left" class="style8" style="margin-left:20px;"><strong><em>
		        <%out.println(interaction);%>
			</em></strong></div></td>
				 <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
				<div align="left" class="style8" style="margin-left:20px;"><strong><em>
		        <%out.println(dt);%>
			</em></strong></div></td>
</tr>
<%					
					}
					
						if(count==0){
										out.print("No User Has Interacted On This Tweet");
								}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>


			</table>
		  
		  
		  
		  
		  
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="UserMain.jsp">Home</a></li>
			<li><a href="UserLogin.jsp">Logout</a></li>
            
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
