<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Profile</title>
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
.style8 {color: #006600; font-size: 12px; font-weight: bold; }
.style3 {	font-size: 36px;
	color: #FF0000;
}
.style4 {	font-weight: bold;
	color: #000000;
}
.style5 {font-size: 14px}
.style6 {color: #FF00FF}
.style12 {font-size: 16px}
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
        <h2 class="style6">User <%=request.getParameter("uname")%>'s Profile...</h2>
        <div class="clr"></div>
        <p>&nbsp;</p>
        <table width="533" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
          <%@ include file="connect.jsp" %>
          <%
						String user=request.getParameter("uname");
						String type=request.getParameter("type");
						String name=request.getParameter("name");
						
						String s1,s2,s3,s4,s5,s6,s7,s8;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(9);
								s4=rs.getString(7);
								s5=rs.getString(8);
								s6=rs.getString(12);
								
					%>
          <tr>
            <td width="226" rowspan="8" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                <input  name="image" type="image" src="images.jsp?value=<%="user"%>&amp;id=<%=i%>" style="width:200px; height:200px;" />
            </a></strong></div></td>
          </tr>
          <tr>
            <td  width="141" height="37" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style5" style="margin-left:10px;"><strong>E-Mail</strong></div></td>
            <td  width="158" valign="middle" style="color:#000000;"><div align="left" class="style40 style62 style4 style3 style9 style7 style5" style="margin-left:10px;"><strong>
                <%out.println(s1);%>
            </strong></div></td>
          </tr>
          <tr>
            <td  width="141" height="40" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style5" style="margin-left:10px;"><strong>Mobile</strong></div></td>
            <td  width="158" valign="middle" ><div align="left" class="style40 style62 style4 style3 style9 style7 style5" style="margin-left:10px;"><strong>
                <%out.println(s2);%>
            </strong></div></td>
          </tr>
          <tr>
            <td height="43" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style5" style="margin-left:10px;"><strong>Location</strong></div></td>
            <td align="left" valign="middle"><div align="left" class="style40 style62 style4 style3 style9 style7 style5" style="margin-left:10px;"><strong>
                <%out.println(s3);%>
            </strong></div></td>
          </tr>
          <tr>
            <td  width="141" height="43" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style5" style="margin-left:10px;"><strong>Date of Birth</strong></div></td>
            <td  width="158" align="left" valign="middle"><div align="left" class="style40 style62 style4 style3 style9 style7 style5" style="margin-left:10px;"><strong>
                <%out.println(s4);%>
            </strong></div></td>
          </tr>
          <tr>
            <td  width="141" height="47" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style5" style="margin-left:10px;"><strong>Gender</strong></div></td>
            <td  width="158" align="left" valign="middle" ><div align="left" class="style40 style62 style4 style3 style7 style9 style5" style="margin-left:10px;"><strong>
                <%out.println(s5);%>
            </strong></div></td>
          </tr>
          <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
        </table>
        
        <p><span class="style12"><a href="SocialMain.jsp">Back</a></span></p>
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
