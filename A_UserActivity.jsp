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
<title>User Activity</title>
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
.style5 {color: #FF00FF}
.style6 {color: #0000FF}
.style12 {color: #FFFFFF; font-weight: bold; }
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
        <div class="article">
          <div class="mainbar">
            <h2 class="style5">All Posts Details by Latent Dirichlet Allocation...</h2>
            <%
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s10="";
	int i=0,count=0,k=0;
	try
	{
			String sql3="select distinct tname from tweets";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1=rs3.getString(1);
			 
			%>
            <table width="572" border="1">
              <tr bgcolor="#CCCCCC">
                <td colspan="6" ><h2 class="style6" >Tweet Name : <%=s1%> </a> </h2></td>
              </tr>
              <tr bgcolor="#999999">
                <td width="174" ><div align="left" class="style12" >
                    <div align="center">Poster Name </div>
                </div></td>
                <td width="174" ><div align="left" class="style12" >
                    <div align="center">Post Image </div>
                </div></td>
                <td width="174" ><div align="left" class="style12" >
                    <div align="center"> Post Rank </div>
                </div></td>
                <td width="174" ><div align="left" class="style12" >
                    <div align="center"> Post Rate </div>
                </div></td>
                <td width="174" ><div align="left" class="style12" >
                    <div align="center"> Post Deails </div>
                </div></td>
                <td width="174" ><div align="left" class="style12" >
                    <div align="center"> Reviews Details </div>
                </div></td>
				
				 <td width="174" ><div align="left" class="style12" >
                    <div align="center"> Site Name </div>
                </div></td>
              </tr>
              <%

				  String query="select * from tweets where tname='"+s1+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i=rs.getInt(1);
					s2=rs.getString(3);
					s3=rs.getString(8);
					k=rs.getInt(9);
					s10=rs.getString(10);
						
							count++;
			   
					 %>
              <tr>
                <td width="174" height="0" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" ><strong> <%=s2%> </strong></div></td>
                <td width="146" height="0" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" ><strong>
                    <input  name="image" type="image" src="images.jsp?value=<%="tweet"%>&amp;id=<%=i%>" style="width:50px; height:50px;" />
                </strong></div></td>
                <td width="174" height="0" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" ><strong> <%=s3%> </strong></div></td>
                <td width="174" height="0" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" ><strong>
                    <% 
		  
	    if(k==3)
	    {
	    	%>
                    <input required="required" name="image2" type="image" src="images/1.png" width="30" height="30">
                    <%
	    }
	    if(k>3 && k<=6)
	    {
	    	%>
                    <input required="required"  name="image2" type="image" src="images/2.png" width="80" height="30">
                    <%
	    }
	    if(k>6 && k<=9)
	    {
	    	%>
                    <input required="required" name="image2" type="image" src="images/3.png" width="100" height="30">
                    <%
	    }
	    if(k>9 && k<=12)
	    {
	    	%>
                    <input required="required" name="image2" type="image" src="images/4.png" width="120" height="30">
                    <%
	    }
	    if(k>12 && k<=15)
	    {
	    	%>
                    <input required="required" name="image2" type="image" src="images/5.png" width="140" height="30">
                    <%
	    }
	    if(k>15 && k<=30)
	    {
	    	%>
                    <input required="required"  name="image2" type="image" src="images/6.png" width="170" height="30">
                    <%
	    }
	    %>
                </strong></div></td>
                <td width="174" height="0" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" ><strong> <a href="A_Post.jsp?id=<%=i%>&amp;tname=<%=s1%>&amp;type=<%="cluster"%>"> Post Details </a> </strong></div></td>
                <td width="174" height="0" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" ><strong> <a href="A_ActiReviews.jsp?id=<%=i%>&amp;type=<%="clusters"%>"> Reviews Details </a> </strong></div></td>
				
				 <td width="174" height="0" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" ><strong> <%=s10%> </strong></div></td>
				
              </tr>
              <%
					 }
			
			       %>
            </table>
            <p>&nbsp;</p>
            <%
			}
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%>
            </table>
            <p>&nbsp;</p>
            <%if(count==0){out.print("There Is no users Added Posts");}%>
            <p align="right"><a href="A_Main.jsp" class="style2"></a></p>
          </div>
          <h2>&nbsp;</h2>
        </div>
        <p class="pages"><strong><a href="adminmain.jsp">Back</a></strong></p>
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
