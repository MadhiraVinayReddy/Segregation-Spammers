<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Profile Page</title>
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
          <h2><span> <%=request.getParameter("uname")%>'s Profile..</span></h2>          
          <div class="clr"></div>          
		  <p>&nbsp;</p>
		  <table width="523" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            <%@ include file="connect.jsp" %>
            
            <%
									
						String user=request.getParameter("uname");
						
						String up_Name=request.getParameter("up_Name");
						
						String type=request.getParameter("type");		
						
						String tname=request.getParameter("tname");	
						
						String sc= request.getParameter("score");
					    String one=request.getParameter("id");
						
						String s1,s2,s3,s4,s5,s6,s7,s8;
						int i=0;
						try 
						{
							
							int score = Integer.parseInt(sc);
							int id = Integer.parseInt(one);
							
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(9);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								
								
					%>
            <tr>
              <td width="226" rowspan="8" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:180px; height:180px;" />
              </a></strong></div></td>
            </tr>
			<tr>
              <td  width="141" height="40" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style4" style="margin-left:10px;"><strong>Community</strong></div></td>
              <td  width="133" align="left" valign="middle" height="40" style="color: #FF3300;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <strong><%out.println(s1);%></strong>
                      </div></td>
            </tr>
            <tr>
              <td  width="141" height="37" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style4" style="margin-left:10px;"><strong>E-Mail</strong></div></td>
              <td  width="133" valign="middle" height="40" style="color:#006600;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s2);%>
                      </div></td>
            </tr>
            <tr>
              <td  width="141" height="40" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style4" style="margin-left:10px;"><strong>Mobile</strong></div></td>
              <td  width="133" valign="middle" height="40" style="color: #000000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s3);%>
                      </div></td>
            </tr>
            <tr>
              <td height="43" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style4" style="margin-left:10px;"><strong>Address</strong></div></td>
              <td  width="133" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s4);%>
                      </div></td>
            </tr>
            <tr>
              <td  width="141" height="43" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style4" style="margin-left:10px;"><strong>Date of Birth</strong></div></td>
              <td  width="133" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s5);%>
                      </div></td>
            </tr>
            <tr>
              <td  width="141" height="40" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style4" style="margin-left:10px;"><strong>Gender</strong></div></td>
              <td  width="133" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s6);%>
                      </div></td>
            </tr>
			
			
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
          </table>
	
				  
				  <h2 align="right">&nbsp;</h2>
			<% 
			if(type.equalsIgnoreCase("Search")){%>
            <h3 align="right"><a href="User_SearchTweetDetails.jsp?up_Name=<%=up_Name%>&type=<%=type%>&id=<%=one%>&tname=<%=tname%>&score=<%=sc%>" class="style4">Back</a></h3>
			<%}
			else if(type.equalsIgnoreCase("My_Tweet")){%>
            <h3 align="right"><a href="User_ViewTweetInteractions.jsp?up_Name=<%=up_Name%>&type=<%=type%>&tname=<%=tname%>&id=<%=one%>&score=<%=sc%>" class="style4">Back</a></h3>
			<%}	
			else if(type.equalsIgnoreCase("Friends_Tweet")){%>
            <h3 align="right"><a href="User_ViewTweetInteractions1.jsp?up_Name=<%=up_Name%>&type=<%=type%>&tname=<%=tname%>&id=<%=one%>&score=<%=sc%>" class="style4">Back</a></h3>
			<%}	
			else if(type.equalsIgnoreCase("User_SpamTweets")){%>
            <h3 align="right"><a href="User_ViewSpamTweetDetails.jsp" class="style4">Back</a></h3>
			<%}	

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
