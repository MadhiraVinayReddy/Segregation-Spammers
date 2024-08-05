<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Filter List Page</title>
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
          <h2><span>Normal Filter List</span></h2>          
          <div class="clr"></div>          
		  <p>&nbsp;</p>
		  
          <table width="250" border="1" align="left"  cellpadding="0" cellspacing="0">
                    <tr>
                      <td  width="50"  valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style7"><b>Si.No</b></div></td>
                      <td  width="116" valign="middle" height="34" style="color: #660000;"><div align="center" class="style57 style56 style7"><b>Filtername</b></div></td>
                     
                    </tr>
                    <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from normal_filter"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								
								
								
								
								
								
							
						
					%>
                    <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style5 style37 style54 style55 style22"><span class="style22" style="color:#000000">
                        <%out.println(i);%>
                      </span></div></td>
                      
          			   <td height="0" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22">
                            <span class="style10" style="color:#006666">
                            <b><%out.println(s1);%></b>
                            </span></div></td>					
						
                    </tr>
                    <%
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
		          
		          <p align="left">&nbsp;</p>
		          <p align="left">&nbsp;</p>
		          <p align="left">&nbsp;</p>
		          <p align="right"><a href="Admin_AddNormalFilter.jsp" class="style16">Back</a></p>                
		  
		  
		  
		  
		  
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
