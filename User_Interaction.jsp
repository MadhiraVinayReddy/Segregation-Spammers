<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Interaction Status Page</title>
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
.style1 {color: #000000}
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
          <h2><span>User Interaction Status..</span></h2>          
          <div class="clr"></div>          
		  <p>&nbsp;</p>
		  <%
		  
		  String user=(String)application.getAttribute("uname");
		  String community=(String)application.getAttribute("ucommunity");
		  String interaction=request.getParameter("interaction").toLowerCase();
		  String tname=request.getParameter("tname");
		  String upname=request.getParameter("upname");
		  String t2="";

try {
    


            SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
			String interaction_reason =" Spamming words found in Interaction.";
			String as="Spamming";
			


PreparedStatement pst=connection.prepareStatement("insert into interactions(tname,publisher,iname,community,interactions,dt) values(?,?,?,?,?,?)");
             
			pst.setString(1,tname);
            pst.setString(2,upname);
            pst.setString(3,user);
            pst.setString(4,community);
			pst.setString(5,interaction);
			pst.setString(6,dt);
			pst.executeUpdate();			
			
			String spamt="Spam";
			
			String sql1="select filtername from spam_filter where Stype='"+spamt+"' ";
					Statement qst1=connection.createStatement();
			  		ResultSet qrs1=qst1.executeQuery(sql1);
					while ( qrs1.next() )
			   			{
			   			 
			              t2=qrs1.getString(1).toLowerCase();
			   			 	
							  if (interaction.contains(t2))
									{
									
									String ac_stat="UPDATE user SET ac_status='"+as+"',interaction_reason='"+interaction_reason+"' where username='"+user+"' and community='"+community+"'";
									Statement acst=connection.createStatement();
									acst.executeUpdate(ac_stat);
									
									 }
									
									
									
																					
						}
						
			
			
		
		
					
		
					
					
		
					
					 
                  %> 
<span class="style4"> Interaction Given Successfully...</span>
  <p align="right"><a href="User_SearchTweet.jsp" class="style47">Back</a></p>
                  <%
				  
				 
								
		} 
		catch (Exception e) {
		e.printStackTrace();
		}	
	
	%>
		  
		  
		  
		  
		  
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
