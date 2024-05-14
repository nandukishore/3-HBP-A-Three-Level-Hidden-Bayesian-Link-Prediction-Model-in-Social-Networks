<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Social Users Posts</title>
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
.style3 {	font-size: 36px;
	color: #FF0000;
}
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
          <h2 class="style5">All <%out.println(application.getAttribute("site"));%> Users Posts Details</h2>
          <table width="687" border="1"  cellpadding="0" cellspacing="0"  >
            <tr bgcolor="#FFFFFF">
              <td  width="17" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4" >SI NO</div></td>
              <td  width="51" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4" > Poster Name </div></td>
              <td  width="76" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4" > Post Image </div></td>
              <td  width="108" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4" >Post Name</div></td>
              <td  width="90" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4" >Posted Date</div></td>
              <td  width="91" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4" >Rank </div></td>
              <td  width="226" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4" >Post Rate</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
				
				String sname=(String)application.getAttribute("site");
				
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="";
					  int i=1,j=0,count=0,rank=0,k=0;
					
						try 
						{
							
						   	String query="select * from tweets where sname='"+sname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s0=rs.getString(2);
								s1=rs.getString(4);
								s2=rs.getString(3);
								s3=rs.getString(6);
								rank=rs.getInt(8);
								k=rs.getInt(9);
								
								count++;
					%>
            <tr>
              <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style4" >
                  <div align="center">
                    <%out.println(i);%>
                  </div>
              </div></td>
              <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style4" >
                  <div align="center"> <a href="A_UserProfile_S.jsp?uname=<%=s2%>&amp;type=<%="user1"%>">
                    <%out.println(s2);%>
                  </a> </div>
              </div></td>
              <td width="76" valign="middle" bgcolor="#FFFFFF"><div class="style3 style7 style9 style9" style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="images.jsp?value=<%="tweet"%>&amp;id=<%=j%>" style="width:50px; height:50px;" />
              </div></td>
              <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style4"  >
                  <div align="center" > <a href="A_PostsDetails_S1.jsp?id=<%=j%>&amp;type=<%="alltweets"%>&amp;tname=<%=s0%>">
                    <%out.println(s0);%>
                  </a> </div>
              </div></td>
              <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style4" >
                  <%out.println(s3);%>
              </div></td>
              <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style4" >
                  <%out.println(rank);%>
              </div></td>
              <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style4" >
                  <% 
		  
	    if(k==3)
	    {
	    	%>
                  <input required="required" name="image" type="image" src="images/1.png" width="30" height="30">
                  <%
	    }
	    if(k>3 && k<=6)
	    {
	    	%>
                  <input required="required"  name="image" type="image" src="images/2.png" width="80" height="30">
                  <%
	    }
	    if(k>6 && k<=9)
	    {
	    	%>
                  <input required="required" name="image" type="image" src="images/3.png" width="100" height="30">
                  <%
	    }
	    if(k>9 && k<=12)
	    {
	    	%>
                  <input required="required" name="image" type="image" src="images/4.png" width="120" height="30">
                  <%
	    }
	    if(k>12 && k<=15)
	    {
	    	%>
                  <input required="required" name="image" type="image" src="images/5.png" width="140" height="30">
                  <%
	    }
	    if(k>15 && k<=30)
	    {
	    	%>
                  <input required="required"  name="image" type="image" src="images/6.png" width="170" height="30">
                  <%
	    }
	    %>
              </div></td>
            </tr>
            <%
					i=i+1;	
						
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0){out.print("No Users Have Uploaded Posts");}
					
					%>
          </table>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
                <p class="pages style54"><strong><a href="SocialMain.jsp">Back</a></strong></p>
          <div align="right"></div>
        </div>
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
