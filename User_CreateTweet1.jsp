<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Adding Tweet Details</title>
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
.style2 {font-size: 18px}
.style3 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
.style7 {color:#000000}
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
          <h2><span>Adding Tweet Details..</span></h2>          
          <div class="clr"></div>          
		  <p>&nbsp;</p>
		  <%
	  	
		String tname=request.getParameter("tname");
		String tabout=request.getParameter("tabout");
		String tuses=request.getParameter("tuses");
		String tdesc=request.getParameter("tdesc");
		String file = request.getParameter("t42");
		String mdesc=request.getParameter("text");
		String turl=request.getParameter("turl");
		String towner=request.getParameter("towner");
	  	
		String keys = "ef50a0ef2c3e3a5f";
		byte[] keyValue = keys.getBytes();
		Key key = new SecretKeySpec(keyValue, "AES");
		Cipher c = Cipher.getInstance("AES");
		c.init(Cipher.ENCRYPT_MODE, key);
		String descr1 = new String(Base64.encode(tdesc.getBytes()));
		
		
	  %>
	  
	  		
			 <form action="User_CreateTweet2.jsp" method="post" enctype="multipart/form-data" name="s" target="_top" id="s">
              
              <table width="553" border="0" align="center">
                <tr>
                  <td width="157" height="37"><span class="style7"> <strong>Tweet Post Name :</strong></span></td>
                  <td width="386"><input required="required" type="text" name="tname" id="tname" value="<%=tname%>" /></td>
                </tr>
				<tr>
                  <td width="157" height="37"><span class="style7"> <strong>Tweet About :</strong></span></td>
                  <td width="386"><input required="required" type="text" name="tabout" id="tabout" value="<%=tabout%>" /></td>
                </tr>
				<tr>
                  <td width="157" height="37"><span class="style7"> <strong>Tweet Uses :</strong></span></td>
                  <td width="386"><input required="required" type="text" name="tuses" id="tuses" value="<%=tuses%>"/></td>
                </tr>				
                <tr>
                  <td height="42" ><span class="style7"> <strong>Description content :</strong> </span></td>
                  <td><textarea name="tdesc" id="textarea" cols="25" rows="4"><%=descr1%></textarea></td>
                </tr>
				<tr>
                  <td height="42" ><span class="style7"> <strong>Meta Data Description :</strong> </span></td>
                  <td><textarea name="text" id="textarea" cols="25" rows="4"><%=mdesc%></textarea></td>
                </tr>
				<tr>
                   <td width="157" height="37"><span class="style7"> <strong>Tweet URL :</strong></span></td>
                  <td width="386"><input required="required" type="text" name="turl" id="turl" value="<%=turl%>" /></td>
                </tr>
				 <tr>
                  <td height="42" ><span class="style7"> <strong>Tweet Owner :</strong> </span></td>
                  <td width="386"><input required="required" type="text" name="towner" id="towner" value="<%=towner%>" /></td>
                </tr>
				<tr>
            	   <td height="42" ><span class="style7"> <strong>Select Image :</strong> </span></td>
            		    <td><input name="pic" type="file" class="file " id="pic" required />                </td>
              		</tr>
				 <tr>
				 <tr>
                  <td width="157" height="37"><span class="style7"> <strong>Tweet Date & Time :</strong></span></td>
                  <td><p align="left" style="color:#000000"> <%=new java.util.Date()%></p></td>
                </tr>
                <tr>
                  <td><div align="right"><span class="style8"></span></div></td>
                  <td><input  type="hidden" name="fname" id="fname" value="<%=file%>" />
				  		<input type="submit" name="Submit" value="Upload Tweet" /></td>
                </tr>
              </table>
             
            </form>
			
			
          
            <p>&nbsp;</p>
            <div align="center" class="style22"><a href="User_CreateTweet.jsp" class="style11">Back</a></div>
		  
		  
		  
		  
		  
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
