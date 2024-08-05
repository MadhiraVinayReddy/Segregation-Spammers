<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Spam/Normal Accounts Page</title>
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
.style1 {color: #FFFF00}
.style2 {
	font-size: 36px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #660000}
.style4 {color: #660000;
		 font-size: 14px}
.style5 {color:#990066;
		font-size: 16px;
		font-weight:bold}
.style7 {color: #2C83B0}
.style13 {
	font-size: 16px;
	color: #CC0033;
	font-weight: bold;
}
.style15 {color:#003300}
.style16 {color:#006699;
		font-size:12px;
		font-weight:bold}
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
          <h2><span>All Spam Account And Normal Account Based on Random Forest Tree</span></h2>          
          <div class="clr"></div>          
		  <p>&nbsp;</p>
		  <p>
                    <%@ include file="connect.jsp" %>
                  <%
	String community=request.getParameter("community");
    int num=1,count=0;
try 
{
	String str= "select distinct(ac_status) from user where ac_status!='"+"Blocked"+"' and community='"+community+"'";
	Statement st = connection.createStatement();
	ResultSet rs= st.executeQuery(str);
	
	while(rs.next())
	{	
		String ac_status=rs.getString(1);
		
		%><p class="style14 style18"><span class="style5"><%=num%> . <%="  "+ac_status%></span> <span class="style4 style3">(Account )</span><br />
                  <br /><%
		String str1= "select id,username from user where ac_status='"+ac_status+"' and  ac_status!='"+"Blocked"+"' and community='"+community+"'";
		Statement st1 = connection.createStatement();
		ResultSet rs1 = st1.executeQuery(str1);
		while(rs1.next())
		{	
			int i=rs1.getInt(1);
			String user=rs1.getString(2);
			
			
				count++;
			
			out.print("<input type=\"radio\" name=\"t_task\" ");
			
			%>
                  <p class="style16"><span class="style16"><a href="Admin_UserProfile.jsp?id=<%=i%>&uname=<%=user%>&community=<%=community%>&type=<%="Admin_ViewAccount"%>" title="Click to View User Details"><%=""+user%></a></span><span> __   </span><span class="style16"><a href="Admin_SpamReason.jsp?uname=<%=user%>&community=<%=community%>&type=<%="Admin_ViewAccount"%>" title="Click to View Spamming Reason" style="color:#006633">View Reason</a></span></p>
                  <p><%
		}
		num++;
	}         
	connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}

	if(count==0){out.print("No Account details Found");}

     %>
			  </table>
			</p>
        	
		<p align="center"><a href="Admin_ViewCommunity_Spam_NormalAccounts.jsp" class="style95">Back</a></p>
                          
		  
		  
		  
		  
		  
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
