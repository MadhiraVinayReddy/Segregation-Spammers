<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Tweet Page</title>
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
.style4 {color: #D64F14}
.style5 {color: #000000}
.style6 {color: #D64F14; font-weight: bold; }
.style8 {color:#006666}
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
          <h2><span>Search Tweet..</span></h2>          
          <div class="clr"></div>          
		  <p>&nbsp;</p>
		  <form name="s" action="User_SearchTweet.jsp" method="post" onSubmit="return valid()"  ons target="_top">   
                <div style="width:600px;">
                  <Table align="center" style="margin:0 0 0 30px;">
                    <tr>
                      <td width="174"><div align="center">
                        <div align="right" class="style12">
                          <div align="center" class="style6">Enter Keyword</div>
                        </div>
                      </div></td>
                      <td width="152">
                      <div align="left"><INPUT TYPE="text" name="keyword" /></div></TD>
					  <td width="155"><INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/></td>
                    </tr>
                    <tr>
                      <td COLSPAN="3"><div class="style2">
                        <div align="center" class="style13 style5">( Searching Tweet Based on Keyword)</div>
                      </div></td>
                    </tr>
                  </Table>
               </div>
                <P>&nbsp; </P>
        </FORM>
			
			
				 <p><%
	  					
	 				 try
						{
							String user=(String)application.getAttribute("uname");
							String community=(String)application.getAttribute("ucommunity");
								String s1="",keyword="",s2="",s3="",s4="",s5="",s6="",up_Name="";
								String strDate="",strTime="",dt="";
								int score=0,i=0;
								double found=0,total=0,ratio=0;
								
							    String	input= request.getParameter("keyword");	
								keyword = input.toLowerCase();
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

								Date now = new Date();
						
								strDate = sdfDate.format(now);
								strTime = sdfTime.format(now);
								dt = strDate + "   " + strTime;
								
								String sql8="select * from tweets where uname!='"+user+"' and community='"+community+"' ";
								Statement st8=connection.createStatement();
								ResultSet rs8=st8.executeQuery(sql8);
								while(rs8.next())
										{
									i=rs8.getInt(1);
								    s1 = rs8.getString(2);
									s2 = rs8.getString(4); //
									s3 = rs8.getString(7); //
									s4 = rs8.getString(9);
									
					
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					
					
					String descr = new String(Base64.decode(s3.getBytes())).toLowerCase();
									
									score=rs8.getInt(14);
									
									int newscore=score+1;
									
					String t=s1.toLowerCase();
					String mt=s4.toLowerCase();				
					
					if ( (t.contains(keyword)) || (descr.contains(keyword)) || (mt.contains(keyword)) )
									{
									
												
									
									
									
									
					String str1="select * from frequest where ((requestfrom='"+s2+"'&&requestto='"+user+"') || (requestfrom='"+user+"'&&requestto='"+s2+"'))&& status='Accepted'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(str1);
						if ( rs1.next() )
	   					{
									
										 found++ ;
								
				
									%>
          </P>
 </p>
              <td width="86">
			<div align="center" class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="Tweet"%>" style="width:50px; height:50px;"  />
			 </a></div>	</td>
               <p class="style4"> <div align="center" ><strong><span class="style5">Tweet Name :</span> <span class="style8"><%=s1%></span> </strong>
                 </p>
</div>
               <p class="style4"><div align="center" ><strong><span class="style5">Tweet Score :</span> <span class="style8"> <%=score%> </span> </strong></div>
               </p>
                <p><div align="center" class="style5"><strong>View <a href="User_SearchTweetDetails.jsp?up_Name=<%=s2%>&tname=<%=s1%>&id=<%=i%>&type=<%="search"%>&score=<%=newscore%>">Details</a></strong></div>
                </p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
								}
						  	}
						 }
					if(found==0){out.print("No Tweets Found For Keyword "+keyword);}
					%>
			
			<p>&nbsp;</p>
						
				<%	}
					
					catch(Exception e)
					{						  
						e.printStackTrace();
					}
					%>	  
	  
	  </p>        
                  <div align="right"><a href="UserMain.jsp">Back</a></div>
		  
		  
		  
		  
		  
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
