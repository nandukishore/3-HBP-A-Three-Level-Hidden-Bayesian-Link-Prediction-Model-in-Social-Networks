<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Post</title>
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
.style6 {color: #0000FF}
.style7 {color: #000000}
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
          <li><a href="adminmain.jsp"><span>Home</span></a></li>
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
        <h2 class="style5">Post <%= request.getParameter("tname")%> Details...</h2>
        <p class="style6">&nbsp;</p>
        <p>
          <%@ include file="connect.jsp" %>
          <%@ page import="java.util.*"%>
          <%@ page import="java.text.*"%>
          <%@ page import="java.util.Date"%>
          <%@ page import="java.sql.*"%>
          <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
          <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
          <%@ page import="org.bouncycastle.util.encoders.Base64"%>
          <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
          <%
          
		   String type=request.getParameter("type");
		   int one= Integer.parseInt(request.getParameter("id"));
           String s0="",s1="",Keyword="",s2="",s3="",s4="",s5="",s7="",s8="";
	       int i=0,rank=0,k=0,rank1=0;
  try 
	{	
  String str="select * from tweets where id='"+one+"' "; 
  Statement st=connection.createStatement();
   ResultSet rs=st.executeQuery(str);
   	   
	if ( rs.next() )
	   {
		i  = rs.getInt(1);
		s0 = rs.getString(2);
		s1 = rs.getString(3);
		s2 = rs.getString(4);
		s3 = rs.getString(5);
		s4 = rs.getString(6);
		rank=rs.getInt(8);
		k=rs.getInt(9);
		
	
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					
					String descr = new String(Base64.decode(s3.getBytes()));
									
				
									
	
%>
        </p>
        <table border="1" align="center" cellpadding="0" cellspacing="0"  width="600" >
          <tr >
            <td width="148" rowspan="9" bgcolor="#FFFFFF" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                <div align="center"><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="images.jsp?value=<%="tweet"%>&amp;id=<%=i%>" style="width:120px; height:120px;">
                </a> </div>
            </div></td>
            <td width="128" height="27" bgcolor="#FFFFFF" ><div align="center" class="style10 style7 style6"><strong>Uploader Name </strong></div></td>
            <td width="316" bgcolor="#FFFFFF"><div align="center" class="style8 style7"><strong><a href="A_UserProfile.jsp?uname=<%=s1%>&amp;type=<%=type%>&amp;id=<%=i%>&amp;name=<%=s0%>"><%= s1%></a></strong></div></td>
          </tr>
          <tr/></tr>
          <tr>
            <td width="128" height="27" bgcolor="FFFFFF" ><div align="center" class="style10 style7 style6"><strong>Post Name </strong></div></td>
            <td bgcolor="#FFFFFF"><div align="center" class="style8 style7"><strong><%= s0%></strong></div></td>
          </tr>
          <tr>
            <td width="128" height="27" bgcolor="#FFFFFF"><div align="center" class="style10 style7 style6"><strong>Post  Description </strong></div></td>
            <td bgcolor="#FFFFFF"><div align="center" class="style8 style7"><strong>
              <textarea name="textarea" cols="43" rows="3" style="background:#FFFFFF" ><%= s3%> </textarea>
            </strong></div></td>
          </tr>
          <tr>
            <td width="128" height="27" bgcolor="#FFFFFF"><div align="center" class="style10 style7 style6"><strong>Post Uses </strong></div></td>
            <td bgcolor="#FFFFFF"><div align="center" class="style8 style7"><strong><%= s2%></strong></div></td>
          </tr>
          <tr>
            <td width="128" height="27" bgcolor="#FFFFFF"><div align="center" class="style10 style7 style6"><strong>Uploaded Date </strong></div></td>
            <td bgcolor="#FFFFFF"><div align="center" class="style8 style7"><strong><%= s4%></strong></div></td>
          </tr>
          <tr> </tr>
          <tr>
            <td width="128" height="27" bgcolor="#FFFFFF"><div align="center" class="style10 style7 style6"><strong>Post Rank </strong></div></td>
            <td bgcolor="#FFFFFF"><div align="center" class="style8 style7"><strong><%= rank%></strong></div></td>
          </tr>
          <tr>
            <td width="128" height="27" bgcolor="#FFFFFF"><div align="center" class="style10 style7 style6"><strong>Post Rate </strong></div></td>
            <td bgcolor="#FFFFFF"><div align="center" class="style8 style7"><strong>
                <% 
		  
	    if(k==3)
	    {
	    	%>
                <input required="required" name="image2" type="image" src="Gallery/1.png" width="30" height="30">
                <%
	    }
	    if(k>3 && k<=6)
	    {
	    	%>
                <input required="required"  name="image2" type="image" src="Gallery/2.png" width="80" height="30">
                <%
	    }
	    if(k>6 && k<=9)
	    {
	    	%>
                <input required="required" name="image2" type="image" src="Gallery/3.png" width="100" height="30">
                <%
	    }
	    if(k>9 && k<=12)
	    {
	    	%>
                <input required="required" name="image2" type="image" src="Gallery/4.png" width="120" height="30">
                <%
	    }
	    if(k>12 && k<=15)
	    {
	    	%>
                <input required="required" name="image2" type="image" src="Gallery/5.png" width="140" height="30">
                <%
	    }
	    if(k>15 && k<=30)
	    {
	    	%>
                <input required="required"  name="image2" type="image" src="Gallery/6.png" width="170" height="30">
                <%
	    }
	    %>
            </strong></div></td>
          </tr>
          <%
						}
						
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
        </table>
        <h2 align="center" class="style5">All User Reviews On The Posts </h2>
        <p></p>
        <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
          <tr bgcolor="#FFFFFF">
            <td width="127" height="44" valign="middle" style="color: #2c83b0;"><div align="left" class="style5 style14 style7 style6" style="	margin-left:20px;"><strong><strong>Image</strong></strong></div></td>
            <td width="80" height="44" valign="middle" style="color: #2c83b0;"><div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> Reviewed User</strong></div></td>
            <td width="80" height="44" valign="middle" style="color: #2c83b0;"><div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> Reviews </strong></div></td>
            <td width="80" height="44" valign="middle" style="color: #2c83b0;"><div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> Reviewed Date </strong></div></td>
          </tr>
          <%
						
						int count=0;
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
                <input  name="image2" type="image" src="images.jsp?value=<%="tweet"%>&amp;id=<%=one%>" style="width:50px; height:50px;">
            </a></div></td>
            <%if(c_user.equalsIgnoreCase("Admin")){%>
            <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;"><div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em>
                <%out.println(c_user);%>
            </em></strong></div></td>
            <%}else{%>
            <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;"><div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em><a href="A_UserProfile.jsp?uname=<%=c_user%>&amp;type=<%=type%>&amp;id=<%=one%>&amp;name=<%=s0%>">
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
										out.print("No one User Have Reviewed On This Post");
								}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
        </table>
        <p><a href="A_UserActivity.jsp">Back</a></p>
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
                <li><a href="adminmain.jsp">Home</a></li>
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
