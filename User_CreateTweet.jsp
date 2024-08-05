<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Tweet Creation Page</title>
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
.style7 {color:#000000}
-->
</style>
<script language="javascript" type='text/javascript'>
        function loadFileAsText()
    {
	
	    var fileToLoad = document.getElementById("file").files[0];
		var l=document.getElementById("file").value;
		document.getElementById("t42").value=document.getElementById("file").value.substring(l.lastIndexOf("\\")+1,l.lastIndexOf(""));
	    var fileReader = new FileReader();
	    fileReader.onload = function(fileLoadedEvent) 
    {
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
		
	};
	    fileReader.readAsText(fileToLoad, "UTF-8");
		
    }
	
</script>


<script language="javascript" type="text/javascript">
function valid()
{
var na3=document.s.t42.value;

var na31=document.s.tname.value;
if(na31=="")

{
alert("Please Enter Tweet Post Name");
document.s.pname.focus();
return false;
}

var na4=document.s.tabout.value;
if(na4=="")

{
alert("Please Enter Tweet About");
document.s.tabout.focus();
return false;
}

var na5=document.s.tuses.value;
if(na5=="")

{
alert("Please Enter Tweet Uses");
document.s.tuses.focus();
return false;
}

var na6=document.s.mdesc.value;
if(na6=="")

{
alert("Please Enter Meta Data Description");
document.s.mdesc.focus();
return false;
}

var na7=document.s.turl.value;
if(na7=="")

{
alert("Please Enter Tweet URL");
document.s.turl.focus();
return false;
}
var na7=document.s.towner.value;
if(na7=="")

{
alert("Please Enter Tweet Owner");
document.s.towner.focus();
return false;
}

}

</script>
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
          <h2><span>Create Tweet..</span></h2>          
          <div class="clr"></div>          
		  <p>&nbsp;</p>
		  <form action="User_CreateTweet1.jsp" method="post" name="s" target="_top" id="s" onsubmit="return valid()"  ons="ons">
              
              <table width="553" border="0" align="center">
                <tr>
                  <td width="157" height="37"><span class="style7"> <strong>Tweet Post Name :</strong></span></td>
                  <td width="386"><input required="required" type="text" name="tname" id="tname" /></td>
                </tr>
				<tr>
                  <td width="157" height="37"><span class="style7"> <strong>Tweet About :</strong></span></td>
                  <td width="386"><input required="required" type="text" name="tabout" id="tabout" /></td>
                </tr>
				<tr>
                  <td width="157" height="37"><span class="style7"> <strong>Tweet Uses :</strong></span></td>
                  <td width="386"><input required="required" type="text" name="tuses" id="tuses" /></td>
                </tr>
				<tr>
                  <td height="42" ><span class="style7"> <strong>Tweet Description :</strong> </span></td>
                  <td><textarea name="tdesc" id="tdesc" cols="25" rows="4"></textarea></td>
                </tr>
                <tr>
                  <td width="157" height="37"><span class="style7"> <strong>Browse Meta Data Description :</strong></span></td>
                  <td width="386"><input required="required" type="file" name="t42" id="file"  onchange="loadFileAsText()" /></td>
                </tr>	
				 <tr>
               <td width="157" height="37"><span class="style7"> <strong>File Name :</strong></span></td>
              <td width="386"> <input required="required" name="tt" type="text" id="t42" readonly="readonly" size="21"/></td>
             </tr>
             <tr>
              <td height="37">&nbsp;</td>
               <td width="386"><textarea name="text" id="textarea" cols="25" rows="4"></textarea></td>
             </tr>							
				<tr>
                   <td width="157" height="37"><span class="style7"> <strong>Tweet URL :</strong></span></td>
                  <td width="386"><input required="required" type="text" name="turl" id="turl" /></td>
                </tr>
				 <tr>
                  <td height="42" ><span class="style7"> <strong>Tweet Owner :</strong> </span></td>
                  <td width="386"><input required="required" type="text" name="towner" id="towner" /></td>
                </tr>
				 <tr>
                  <td width="157" height="37"><span class="style7"> <strong>Tweet Date & Time :</strong></span></td>
                  <td><p align="left" style="color:#000000"> <%=new java.util.Date()%></p></td>
                </tr>
                <tr>
                  <td><div align="right"><span class="style8"></span></div></td>
                  <td><input type="submit" name="Submit" value="Encrypt" /></td>
                </tr>
              </table>
             
            </form>
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
