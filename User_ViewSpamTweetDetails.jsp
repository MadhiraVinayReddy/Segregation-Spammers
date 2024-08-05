<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Friends Spam Tweets Page</title>
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
.style4 {color: #660033}
.style5 {color:#000000}
.style7 {color:#006633}
.style8 {
	font-size: 14px;
	font-weight: bold;
}
.style9 {color:#990000}
.style10 {color:#FF6600}
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
          <h2> <%=(String)application.getAttribute("uname") %>'s All Spamming Behaviour Friends Tweets..</h2>          
          <div class="clr"></div>          
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  	<table width="500" border="1" align="center"  cellpadding="0" cellspacing="0"  >
               <tr bgcolor="#FFFFFF">
                 <td  width="25" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>SI NO</strong></div></td>
				  <td  width="176" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong> Published By </strong></div></td>
                 <td  width="176" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong> Tweet Image </strong></div></td>
                 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>Tweet Name</strong></div></td>
				 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>Tweet About</strong></div></td>
				 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>Tweet Uses</strong></div></td>
				 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>Tweet Meta Data</strong></div></td>
				 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>Tweet Owner</strong></div></td>
                 <td  width="81" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>Tweet Description </strong></div></td>
                 <td  width="68" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>Published Date & Time </strong></div></td>
				 <td  width="105" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>Tweet Score</strong></div></td>
				 
                 
               </tr>
         
		 
		   
            <%
					  
				
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="",fname="",mdesc="";
					  int i=1,j=0,count=0,s=0;
					
						try 
						{
							String user=(String)application.getAttribute("uname");
							String community=(String)application.getAttribute("ucommunity");
						   	String query="select * from tweets where uname!='"+user+"' and community='"+community+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s0=rs.getString(4);
								s1=rs.getString(2);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(11);
								s5=rs.getString(7);
								s6=rs.getString(12);
								s=rs.getInt(14);
								fname=rs.getString(8);
								mdesc=rs.getString(9);
								String decryptedDes= new String(Base64.decode(s5.getBytes()));
								String des=decryptedDes.toLowerCase();
								String fn=fname.toLowerCase();
								String mt=mdesc.toLowerCase();
								
								count++;
								
								String sql1="select * from spam_filter ";
								Statement qst1=connection.createStatement();
			  					ResultSet qrs1=qst1.executeQuery(sql1);
								while ( qrs1.next() )
			   					{
			   			 
			        		    String t2=qrs1.getString(2).toLowerCase();
			   			 	
								  if ((des.contains(t2)) || (mt.contains(t2)) || fn.endsWith(".ade") || fn.endsWith(".adp")	|| fn.endsWith(".bas")
              					|| fn.endsWith(".bat") || fn.endsWith(".chm") || fn.endsWith(".cmd") || fn.endsWith(".com") || fn.endsWith(".crt")
              					|| fn.endsWith(".dll") || fn.endsWith(".do*") || fn.endsWith(".hlp") || fn.endsWith(".hta")	|| fn.endsWith(".inf")
              					|| fn.endsWith(".ins") || fn.endsWith(".js")  || fn.endsWith(".jse") || fn.endsWith(".lnk")	|| fn.endsWith(".md*")
              					|| fn.endsWith(".msc") || fn.endsWith(".msi") || fn.endsWith(".mst") || fn.endsWith(".ocx")	|| fn.endsWith(".pcd")
              					|| fn.endsWith(".pif") || fn.endsWith(".pot") || fn.endsWith(".reg") || fn.endsWith(".scr") || fn.endsWith(".sct")
              					|| fn.endsWith(".shb") || fn.endsWith(".shs") || fn.endsWith(".sys") || fn.endsWith(".url") || mt.endsWith(".ade")
              					|| mt.endsWith(".adp") || mt.endsWith(".bas") || mt.endsWith(".bat") || mt.endsWith(".chm")	|| mt.endsWith(".cmd")
              					|| mt.endsWith(".com") || mt.endsWith(".crt") || mt.endsWith(".dll") || mt.endsWith(".do*") || mt.endsWith(".hlp")
              					|| mt.endsWith(".hta") || mt.endsWith(".inf") || mt.endsWith(".ins") || mt.endsWith(".js")  || mt.endsWith(".jse")
              					|| mt.endsWith(".lnk") || mt.endsWith(".md*") || mt.endsWith(".msc") || mt.endsWith(".msi")	|| mt.endsWith(".mst")
              					|| mt.endsWith(".ocx") || mt.endsWith(".pcd") || mt.endsWith(".pif") || mt.endsWith(".pot")	|| mt.endsWith(".reg")
              					|| mt.endsWith(".scr") || mt.endsWith(".sct") || mt.endsWith(".shb") || mt.endsWith(".shs") || mt.endsWith(".sys")
              					|| mt.endsWith(".url"))
									{
									
									
								
						String str1="select * from frequest where ((requestfrom='"+s0+"'&&requestto='"+user+"') || (requestfrom='"+user+"'&&requestto='"+s0+"'))&& status='Accepted'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(str1);
						if ( rs1.next() )
	   					{
						
						
					%>
            <tr>
              <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                    <div align="center">
                    <%out.println(i);%>
                </div>
              </div></td>
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style9" >
                    <div align="center">
                    <strong><a href="User_UProfile.jsp?uname=<%=s0%>&type=<%="User_SpamTweets"%>&up_Name=<%=s0%>&tname=<%=s1%>&id=<%=j%>&score=<%=s%>" style="color:#990000"><%out.println(s0);%></a></strong>
                </div>
              </div></td>
			   
			    <td width="176" valign="middle" bgcolor="#FFFFFF"><div class="style3 style7 style9 style9" style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="images.jsp?value=<%="Tweet"%>&id=<%=j%>" style="width:130px; height:100px;" />
              </div></td>
			   
			   <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style7"  >
                    
       			    <strong><%out.println(s1);%></strong> 
              </div></td>
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5"  >
                    
       			    <%out.println(s2);%> 
              </div></td>
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5"  >
                    
       			    <%out.println(s3);%> 
              </div></td>
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5"  >
                    
       			    <%out.println(mdesc);%> 
              </div></td>
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style10"  >
                    
       			    <strong><%out.println(s4);%></strong> 
              </div></td>
			  
              <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                 	 <%out.println(decryptedDes);%> 
              </div></td>
			  
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                 	 <%out.println(s6);%> 
              </div></td>
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                 	 <strong><%out.println(s);%></strong> 
              </div></td>
			 
			  
			  
			   
            </tr>
            <%
			
								}
							break; }	
						}
					i=i+1;	
						
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0){out.print("Any Friend's Spamming Behaviour Not Found");}
					
					%>
        </table>
		
			<p>&nbsp;</p>
		<div align="right" class="style22"><a href="UserMain.jsp" class="style11">Back</a></div>
		  
		  
		  
		  
		  
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
