<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Spam Reason Page</title>
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
          <h2><span>User <%=request.getParameter("uname")%>'s Account Status Reason </span></h2>          
          <div class="clr"></div>          
		  <p>&nbsp;</p>
		  		<p>&nbsp;</p>
		  		<p><table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr bgcolor="#FFFFFF">
			<td width="250" height="44" valign="middle" style="color: #660033;">
			<div align="left" class="style7 " style="margin-left:20px;"><strong> Account Status </strong></div></td>
			<td width="250" height="44" valign="middle" style="color: #660033;">
			<div align="left" class="style7 " style="margin-left:20px;"><strong> Reason for Account Status </strong></div></td>
			</tr>
			

					<%
					
						
						
						
						String uname=request.getParameter("uname");
						String community=request.getParameter("community");
						String one=request.getParameter("id");
						
						int count=0;
						try 
						{   
						
							
							   
						 String query="select * from user where username='"+uname+"' and community='"+community+"' "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query);
					   		while ( rs1.next() )
					   		{
								
								String acstat=rs1.getString(12);
								String reason=rs1.getString(13);
								String reason1=rs1.getString(14);
								
							    
								
								count++;
						
					%>
		<tr>
			
			<td  width="250" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em><%out.println(acstat);%> 
		    </em></strong></div></td>
			<%if(acstat.equalsIgnoreCase("Normal")){%>
			 <td  width="250" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em><%out.println(reason+" "+reason1);%> 
		    </em></strong></div></td>
			<%}else if(acstat.equalsIgnoreCase("Spamming") && reason.equalsIgnoreCase("No Spamming Activities")){%>
			<td  width="250" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em><%out.println(reason1);%> 
		    </em></strong></div></td>
			<%}else{%>   
			<td  width="250" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em><%out.println(reason+" "+reason1);%> 
		    </em></strong></div></td>
			<%}%>
			
</tr>
<%					
					}
					
						if(count==0){
										out.print("No Reason Found");
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
	         <div align="right" class="style22"><a href="Admin_ViewSpam_NormalAccounts.jsp?community=<%=community%>" class="style11">Back</a></div>
			 
			 
			 
			 
			 
			 
		  
		  
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
