<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Tweet Interactions Page</title>
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
.style14 {color:#006666}
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
          <h2><span>Interaction's On Tweet <%=request.getParameter("tname") %>..</span></h2>          
          <div class="clr"></div>   
		   <p>&nbsp;</p>
		   <%
		   
		 		    String tname=request.getParameter("tname");
					String up_Name=request.getParameter("up_Name");
						
			%>
						
						
		<form name="s" action="User_Interaction1.jsp?tname=<%=tname%>&upname=<%=up_Name%>" method="post"  onSubmit="return valid()"  ons target="_top">
    
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
	         <div align="right" class="style22"><a href="User_ViewFriendsTweetDetails.jsp" class="style11">Back</a></div>
			 
			 
		  <p>&nbsp;</p>
		  		<p><table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr bgcolor="#FFFFFF"><td width="127" height="44" valign="middle" style="color: #660033;">
			<div align="left" class="style7 " style="	margin-left:20px;"><strong><strong>Image</strong></strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #660033;">
			<div align="left" class="style7 " style="margin-left:20px;"><strong> Interacted By</strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #660033;">
			<div align="left" class="style7 " style="margin-left:20px;"><strong> Interactions </strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #660033;">
			<div align="left" class="style7 " style="margin-left:20px;"><strong> Interacted Date </strong></div></td>
			</tr>
			

					<%
					
						String user=(String)application.getAttribute("uname");
						
						
						String type=request.getParameter("type");
						String sc=request.getParameter("score");
						String one=request.getParameter("id");
						
						int count=0;
						try 
						{   
						
							int id= Integer.parseInt(one);
							   
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
			
			
			<%if(i_user.equalsIgnoreCase(user)){%>
			   <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
			   <div align="left" class="style14" style="margin-left:20px;"><strong><em> <%out.println(i_user);%> 
 		    </em></strong></div></td>
			
			<%}else{%>
			
			 <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em><a href="User_UProfile.jsp?uname=<%=i_user%>&type=<%=type%>&up_Name=<%=up_Name%>&tname=<%=tname%>&id=<%=one%>&score=<%=sc%>" style="color:#006600"> <%out.println(i_user);%> 
		    </a></em></strong></div></td>
			<%}%>
			
			
			    <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
				<div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em>
		        <%out.println(interaction);%>
			</em></strong></div></td>
				 <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
				<div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em>
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
