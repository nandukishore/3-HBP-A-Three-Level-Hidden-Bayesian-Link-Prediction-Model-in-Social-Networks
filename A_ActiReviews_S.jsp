<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Activity Reviews</title>
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
.style11 {color: #FF00FF;
	font-weight: bold;
}
.style8 {color: #006600; font-size: 12px; font-weight: bold; }
.style4 {	font-weight: bold;
	color: #000000;
}
.style5 {color: #FF00FF}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">3-HBP A Three-Level Hidden Bayesian Link Prediction Model in Social Networks</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="SocialMain.jsp"><span>Home</span></a></li>
          <li><a href="index.html">Logout</a><a href="about.html"></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"><a href="#"><img src="images/slide1.jpg" width="935" height="307" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="935" height="307" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="935" height="307" alt="" /></a></div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="mainbar">
          <h2 align="center" class="style5">All User Relevant Reviews On The Posts </h2>
          <p></p>
          <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
            <tr bgcolor="#FFFFFF">
              <td width="127" height="44" valign="middle" style="color: #2c83b0;"><div align="left" class="style5 style14 style7 style6" style="	margin-left:20px;"><strong><strong>Image</strong></strong></div></td>
              <td width="80" height="44" valign="middle" style="color: #2c83b0;"><div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> Reviewed User</strong></div></td>
              <td width="80" height="44" valign="middle" style="color: #2c83b0;"><div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> Reviews </strong></div></td>
              <td width="80" height="44" valign="middle" style="color: #2c83b0;"><div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> Reviewed Date </strong></div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%
						String uname=(String )application.getAttribute("uname");
						String type=request.getParameter("type");
						
					   int one= Integer.parseInt(request.getParameter("id"));	
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0,count=0;
						try 
						{   
							   
						   	String query="select * from re_tweet where tid='"+one+"' "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query);
					   		while ( rs1.next() )
					   		{
								int j=rs1.getInt(1);
								String tname=rs1.getString(2);
								String c_user=rs1.getString(3);
								String dt=rs1.getString(5);
							    String retweet=rs1.getString("re_tweet");
								
								count++;
						
					%>
            <tr>
              <td width="50" bgcolor="#FFFFFF"><div class="style8 style2" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="images.jsp?value=<%="tweet"%>&amp;id=<%=one%>" style="width:50px; height:50px;">
              </a></div></td>
              <%if(c_user.equalsIgnoreCase("Admin")){%>
              <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;"><div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em>
                  <%out.println(c_user);%>
              </em></strong></div></td>
              <%}else{%>
              <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;"><div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em><a href="A_UserProfile.jsp?uname=<%=c_user%>&amp;type=<%=type%>&amp;id=<%=one%>">
                  <%out.println(c_user);%>
              </a></em></strong></div></td>
              <%}%>
              <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;"><div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em>
                  <%out.println(retweet);%>
              </em></strong></div></td>
              <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;"><div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em>
                  <%out.println(dt);%>
              </em></strong></div></td>
            </tr>
            <%					
					}
					
						if(count==0){
										out.print("No one User Have Reviwed On This Post");
								}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <h2 align="right">&nbsp;</h2>
          <p align="right">&nbsp;</p>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
          <div class="clr"></div>
        <a href="SocialMain.jsp">Back</a></div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="searchform"></div>
        <div class="clr"></div>
        <div class="g1">
          <div class="g2">
            <div class="gadget">
              <h2 class="star"><span>Sidebar</span> Menu</h2>
              <div class="clr"></div>
              <ul class="sb_menu">
                <li><a href="SocialMain.jsp">Home</a></li>
                <li><a href="index.html">Logout</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="g1">
          <div class="g2"></div>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
