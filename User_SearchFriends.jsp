<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Friends Page</title>
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
.style8 {font-weight: bold; color: #660000; }
.style9 {color: #FF3300}
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
          <h2><span>Search Friends..</span></h2>          
          <div class="clr"></div>          
		  <p>&nbsp;</p>
		  <form id="form1" method="post" action="User_SearchFriends.jsp">
              <table width="392" border="0" align="center" cellpadding="2" cellspacing="2">
                <tr>
                  <td width="145"><span class="style49 style9">Enter Friend Name:</span></td>
                  <td width="214"><input type="text" name="keyword" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><input class="art-button" name="submit" type="submit" value="Search" /></td>
                </tr>
              </table>
              <p align="center">&nbsp;</p>
              <p align="right"><a href="UserMain.jsp" class="style75">Back</a></p>
            </form>
        </div>
		  
          
          <p>&nbsp;</p>
          <div class="article">
		   <h2><span>Results Found..</span></h2>
          <p>&nbsp;</p>
            <%
			
	  			
						String s1=null,ss1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null,s9=null,s10=null,s11=null,s12=null,s13=null;
						String user = (String)application.getAttribute("uname");
						String community=(String)application.getAttribute("ucommunity");
						String keyword = request.getParameter("keyword");
						int i=0;
						try 
						{
							
						
						
									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
									SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
									Date now = new Date();
												
									String strDate = sdfDate.format(now);
									String strTime = sdfTime.format(now);
									String dt = strDate + "   " + strTime;
							
							
								
									if(!keyword.equals(""))
										{
											
											Statement st3 = connection.createStatement();
											String query3 ="insert into fsearch(username,keyword,dt) values('"+user+"','"+keyword+"','"+dt+"')";
											st3.executeUpdate (query3);
											 	   
								
							
											String query="select * from user where (username!='"+user+"' and community='"+community+"') and status='"+"Authorized"+"' and username  LIKE '%"+keyword+"%'"; 
											Statement st=connection.createStatement();
											ResultSet rs=st.executeQuery(query);
											while ( rs.next() )
											{
												i=rs.getInt(1);
												s1=rs.getString(2);
												s2=rs.getString(4);
												s3=rs.getString(5);
												s4=rs.getString(6);
												s5=rs.getString(7);
												s6=rs.getString(8);
												s7=rs.getString(10);
												s8=rs.getString(9);
												
										
										
			  %>
            
              <table border="1" width="518" style="margin:5px 10px 10px 5px;">
                <tr>
                  <td rowspan="8" width="148" ><input  name="image2" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:150px; height:150px;" class="image_wrapper" />
                  </td>
                  <td width="118" height="27" align="left"><div align="left" class="style30"><span class="style8" style="margin-left:20px;">User Name :</span></div></td>
                  <td width="249" style="margin-left:20px; color:#CC0000;"><div align="left" class="style75"><strong><%=s1%></strong></div></td>
                </tr>
                <tr>
                  <td height="25" align="left"><div align="left" class="style30"><span class="style8" style="margin-left:20px;"><strong>E-Mail :</strong></span></div></td>
                  <td style="margin-left:20px; color:#006600;"><div align="left" class="style75"><%=s2%></div></td>
                </tr>
                <tr>
                  <td height="30" align="left"><div align="left" class="style30"><span class="style8" style="margin-left:20px;"><strong>Mobile :</strong></span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s3%></div></td>
                </tr>
                <tr>
                  <td height="22" align="left"><div align="left" class="style30"><span class="style8" style="margin-left:20px;"><strong>Address :</strong></span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s4%></div></td>
                </tr>
                <tr>
                  <td height="26" align="left"><div align="left" class="style30"><span class="style8" style="margin-left:20px;"><strong>DOB :</strong></span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s5%></div></td>
                </tr>
                <tr>
                  <td height="24" align="left"><div align="left" class="style30"><span class="style8" style="margin-left:20px;">Gender :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s6%></div></td>
                </tr>
				<tr>
                  <td height="24" align="left"><div align="left" class="style30"><span class="style8" style="margin-left:20px;"><strong>Community :</strong></span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s8%></div></td>
                </tr>
                <tr>
                  <td height="46" align="left"><div align="left" class="style30"><span class="style8" style="margin-left:20px;"><strong>Status :</strong></span></div></td>
                  <td style="margin-left:20px; color:#000000;"><p align="left" class="style76"><strong><%=s7%></strong><span style="float:right"><a href="User_updaterequest.jsp?rname=<%=s1%>&amp;comn=<%=s8%>">
                      <input class="art-button" name="button2" type="button" value="Request" />
                  </a></span></p></td>
                </tr>
              </table>
            <p><span class="style72">
                <%
						
							
				
						
	  					}}
					}catch(Exception e){
								e.getMessage();
							}
	  
				  
				  %>
              </span></p>
		  
		  
		  
		  
		  
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
