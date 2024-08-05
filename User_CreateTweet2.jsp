<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="ISO-8859-1"%>
	  <%@ page import="java.io.*" %>
            <%@ page import="java.util.*" %>
            <%@ page import="com.oreilly.servlet.*" %>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Create Tweet Status</title>
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
.style7 {color:#CC3333}
.style8 {
	font-size: 16px;
	color: #006666;
}
.style9 {font-size: 14px}
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
          <h2><span> Tweet Creation Status..</span></h2>          
          <div class="clr"></div>          
		  <p>&nbsp;</p>
		  <p>
                    <%
			
			int j=0;
		String uname=(String)application.getAttribute("uname");
		String community=(String)application.getAttribute("ucommunity");
		
		try {
								
		
					 ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null,file="",tname="",fname="",tabout="",tuses="",tdesc="",mdesc="",turl="",towner="",mac="",image=null,cloud=null,bin = "";
				
					FileInputStream fs=null;
					
					File file1 = null;	
					
					
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("tname"))
							{
								tname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("tabout"))
							{
								tabout=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("tuses"))
							{
								tuses=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("tdesc"))
							{
								tdesc=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("fname"))
							{
								fname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("text"))
							{
								mdesc=multi.getParameter(paramname);
							}							
							if(paramname.equalsIgnoreCase("turl"))
							{
								turl=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("towner"))
							{
								towner=multi.getParameter(paramname);
							}
							
							
						}

						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) 
								{
									if (i != -1)
									 {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
							
						                }
									}	
									
								}
								
							}		
						}
						
		
						FileInputStream fs1 = null;
		
		
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		Date now = new Date();
		
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;
		
		
	    int score=0;
		
				String query1="select * from tweets  where tname='"+tname+"' and uname='"+uname+"' and community='"+community+"' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(query1);
					if ( rs1.next() )
					   {
					   		%>
        <p align="center" class="style7 style9" >This Tweet is Already Uploaded By You..</p>
              <%
					   }
					   else
					   {		
						
					 
					 
  PreparedStatement ps=connection.prepareStatement("insert into  tweets(tname,community,uname,tabout,tuses,tdesc,fname,mdesc,turl,towner,date,image,score) values (?,?,?,?,?,?,?,?,?,?,?,?,?)"); 
				
						ps.setString(1,tname);
						ps.setString(2,community);	
						ps.setString(3,uname);
						ps.setString(4,tabout);
						ps.setString(5,tuses);
						ps.setString(6,tdesc);
						ps.setString(7,fname);
						ps.setString(8,mdesc);
						ps.setString(9,turl);
						ps.setString(10,towner);
						ps.setString(11,dt);
						ps.setBinaryStream(12, (InputStream)fs, (int)(file1.length()));	
						ps.setInt(13,score);
						
						
						if(f == 0)
							ps.setObject(12,null);
						else if(f == 16)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(12,fs1,fs1.available());
						}	
						int x=ps.executeUpdate();
					
					
					String decryptedDes= new String(Base64.decode(tdesc.getBytes()));
					String des=decryptedDes.toLowerCase();	
					String fn=fname.toLowerCase();
					String mt=mdesc.toLowerCase();
					
					String spam_reason="Spamming words found in Tweet Content.";
					String mallware_reason="Tweet Contains Virus or Mallware.";	
						
					String as="Spamming";	
					String spamt="Spam";
						
					String sql1="select * from spam_filter where Stype='"+spamt+"'";
					Statement qst1=connection.createStatement();
			  		ResultSet qrs1=qst1.executeQuery(sql1);
					while ( qrs1.next() )
			   			{
			   			 
			             String t2=qrs1.getString(2).toLowerCase();
			   			 	
							  if ((des.contains(t2)) || (mt.contains(t2)))
									{
									
									String ac_stat="UPDATE user SET ac_status='"+as+"',ac_status_reason='"+spam_reason+"' where username='"+uname+"' and community='"+community+"'";
									Statement acst=connection.createStatement();
									acst.executeUpdate(ac_stat);
									
									}
									
									
									
																					
						}
						
							if ( fn.endsWith(".ade") || fn.endsWith(".adp")	|| fn.endsWith(".bas")
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
									
									String ac_stat1="UPDATE user SET ac_status='"+"Spamming"+"',ac_status_reason='"+mallware_reason+"' where username='"+uname+"' and community='"+community+"'";
									Statement acst1=connection.createStatement();
									acst1.executeUpdate(ac_stat1);
									
									}	
						
						
						
		%>
</p>
                  <h3 >&nbsp;</h3>
                  <h3 align="center" class="style6 style8" >Tweet Created Sucessfully!</h3>
                  <p class="style30">&nbsp;</p>
                  </p>
                  <%
		}
		connection.close();
		}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>
            <p>&nbsp;</p>
            <div align="center" class="style22"><a href="UserMain.jsp" class="style11">Back</a></div>
		  
		  
		  
		  
		  
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
