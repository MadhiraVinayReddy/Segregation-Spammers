<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Spam and Normal Behaviours Page</title>
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
.style2 {color: #660033}
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
          <h2>Spam Behaviours Based On Interactions</h2>          
          <div class="clr"></div>          
		  <p>&nbsp;</p>
		  <%@ include file="connect.jsp" %>
		  <%@ page import="org.bouncycastle.util.encoders.Base64"%>
		  <%
			
	String community=request.getParameter("community"); 			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="" ;
	int i=0,count=0,count1=0;
	try
	{
			String sql3="select tname,uname from tweets where community='"+community+"'";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1=rs3.getString(1);
			   s7=rs3.getString(2);
			   
			   
			    
			%>
	<table width="572" border="1">
				  <tr>
				    <td colspan="5" ><h3 style="color:#000000">Spamming Behaviour Interactions of Tweet: <span style="color:#CC0033"> <%=s1%></span> </h3> <h3 style="color:#000000">[Publisher: <span style="color:#FF9900"> <%=s7%> </span>]  </h3></td>
			      </tr>
				  <tr>
					<td width="174" ><div align="left" class="style4 style5">
						<div align="center" class="style4 style2"><strong>Interacted User </strong></div>
					</div></td>
					<td width="146" ><div align="left" class="style4 style5">
						<div align="center" class="style6 style2"><strong>Interactions</strong></div>
					</div></td>
					<td width="128"><div align="left" class="style4 style5">
						<div align="center" class="style6 style2"><strong>Date</strong></div>
					</div></td>
				  </tr>
				 
				  <%

				  String query="select * from interactions where tname='"+s1+"' and publisher='"+s7+"' and community='"+community+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(4);
					s5=rs.getString(6).toLowerCase();
					s4=rs.getString(7);
					count++;

			   		
					
					String sql1="select * from spam_filter";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();
			   			 	
							  if (s5.contains(t2))
									{
								    
			                 count1++;
			      
									 %>
							  <tr>
								<td width="174" height="0"  style="color:#000000;"><div align="center" style="color:#CC0066"><b><%=s3%></b></div></td>
								<td width="146" height="0"  style="color:#000000;"><div align="center"><%=s5%></div></td>
								<td width="128" height="0"  style="color:#000000;"><div align="center"><%=s4%></div></td>
							  </tr>
							  
							
							  <%
			
						
				
							break;}

					 }  			
			
			}
			       
					
					%></table> <p>&nbsp;</p>
				
				<%
			
				
				}
   			
         
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>				
				<td width="293" height="0" align="left"  valign="middle">
											  <form id="form1" name="form1" method="post" action="Admin_ViewSpam_BehaviourInChart.jsp">
											  <label>
											   <input type="hidden" value=<%=community%> name="community"/>
											   <input type="hidden" value=<%=count1%> name="spamct"/>
												<input type="submit" name="Submit" value="View No Of Spamming Behaviour In Chart" />
											  </label>
		  </form>                </td>
		  
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <h2><span>Normal Behaviours Based On Interactions</span></h2>
		  <div class="clr"></div>
		  <p>&nbsp;</p>
		 
		  <%
	 			  
	String s9="",s10="",s11="",s12="",s13="",s14="",s15="",s16="" ;
	int j=0,count2=0,count3=0;
	try
	{
			String sql3="select tname,uname from tweets where community='"+community+"' ";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s9=rs3.getString(1);
			   s15=rs3.getString(2);
			   
			   
			    
			%>
							
			<table width="572" border="1">
				  <tr>
				    <td colspan="5" ><h3 style="color:#000000">Normal Behaviour Interactions of Tweet: <span style="color:#CC0033"> <%=s9%></span> </h3> <h3 style="color:#000000">[Publisher: <span style="color:#FF9900"> <%=s15%> </span>]  </h3></td>
			      </tr>
				  <tr>
					<td width="174" ><div align="left" class="style4 style5">
						<div align="center" class="style4 style2"><strong>Interacted User </strong></div>
					</div></td>
					<td width="146" ><div align="left" class="style4 style5">
						<div align="center" class="style6 style2"><strong>Interactions</strong></div>
					</div></td>
					<td width="128"><div align="left" class="style4 style5">
						<div align="center" class="style6 style2"><strong>Date</strong></div>
					</div></td>
				  </tr>
				 
				  <%

				  String query1="select * from interactions where tname='"+s9+"' and publisher='"+s15+"' and community='"+community+"' "; 
				   Statement st1=connection.createStatement();
				   ResultSet rs1=st1.executeQuery(query1);
				while ( rs1.next() )
			   {
					j=rs1.getInt(1);
					s10=rs1.getString(2);
					s11=rs1.getString(4);
					s12=rs1.getString(6).toLowerCase();
					s13=rs1.getString(7);
					count2++;

			   
			        String sql2="select * from normal_filter";
					Statement st2=connection.createStatement();
			  		ResultSet rs2=st2.executeQuery(sql2);
					while ( rs2.next() )
			   			{
			   			 String	t3=rs2.getString(1);
			             String t4=rs2.getString(2).toLowerCase();
			   			 	
							  if (s12.contains(t4))
									{
								    
			                 count3++; 
									 %>
							  <tr>
								<td width="174" height="0"  style="color:#000000;"><div align="center" style="color:#CC0066"><b><%=s11%></b></div></td>
								<td width="146" height="0"  style="color:#000000;"><div align="center"><%=s12%></div></td>
								<td width="128" height="0"  style="color:#000000;"><div align="center"><%=s13%></div></td>
							  </tr>
							  
							
							  <%
			
					
			
			
			
									break;}

						 }    
						 
			}
			       
					
					%></table> <p>&nbsp;</p>
				<%
			
				
				}
   			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>				
				<td width="293" height="0" align="left"  valign="middle">
											  <form id="form1" name="form1" method="post" action="Admin_ViewNormal_BehaviourInChart.jsp">
											  <label>
											   <input type="hidden" value=<%=community%> name="community"/>
											   <input type="hidden" value=<%=count3%> name="nrmct"/>
												<input type="submit" name="Submit" value="View No Of Normal Behaviour In Chart" />
											  </label>
		  </form>                </td>
				
				
				
				
				<p>&nbsp;</p>
		<div align="right" class="style22"><a href="Admin_ViewCommunitySpamBehaviour.jsp" class="style11">Back</a></div>
				
				
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
