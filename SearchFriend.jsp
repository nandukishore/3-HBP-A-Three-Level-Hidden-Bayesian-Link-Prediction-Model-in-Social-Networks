<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Friends</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.form1.keyword.value;
if(na3=="")

{
alert("Please Write comment");
document.form1.keyword.focus();
return false;
}
else
{

}
}
</script>

<style type="text/css">
<!--
.style11 {color: #FF00FF;
	font-weight: bold;
}
.style8 {color: #006600; font-size: 12px; font-weight: bold; }
.style44 {font-family: Georgia, "Times New Roman", Times, serif;
	color: #FF00FF;
	font-weight: bold;
	font-size: 14px;
}
.style49 {color: #006600;
	font-weight: bold;
	font-size: 14px;
}
.style51 {color: #9900CC}
.style53 {color: #9900CC; font-size: 24px; }
.style56 {font-family: "Times New Roman", Times, serif;
	color: #FF00FF;
	font-weight: bold;
	font-size: 14px;
}
.style66 {color: #006600}
.style67 {color: #009900}
.style69 {color: #FF3300}
.style72 {font-size: 13px; color: #000000; font-weight: bold; }
.style81 {color: #009900; font-weight: bold; font-size: 14px; }
.style83 {font-size: 13px;
	color: #FF00FF;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
.style87 {font-size: 15px}
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
          <li><a href="UserMain.jsp">Home</a><a href="support.html"></a></li>
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
      <div class="sb_menu">
        <div class="col_allw280 fp_service_box">
          <table width="492" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="484"><span class="style53">Search Friends In Same Site..</span></td>
            </tr>
          </table>
          <p class="style51">&nbsp;</p>
          <p class="style51">&nbsp;</p>
          <form id="form1" name="form1" method="post" action="SearchFriend.jsp">
            <table width="459" border="0" align="center" cellpadding="2" cellspacing="2">
              <tr>
                <td width="204"><div align="center"><span class="style49">Enter Friend Name :</span></div></td>
                <td width="174"><input type="text" name="keyword" /></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><input class="art-button" name="submit" type="submit" value="Search" /></td>
              </tr>
              <tr>
                <td height="80">&nbsp;</td>
                <td><div align="right"><a href="UserMain.jsp" class="style44"><strong>Back</strong></a></div></td>
              </tr>
            </table>
          </form>
        </div>
        <div class="col_allw280 fp_service_box">
          <p>&nbsp;</p>
        </div>
        <div class="cleaner h60"></div>
        <div class="content_panel_3col_section margin_right_60">
          <div class="header_01">
            <table width="751" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="743"><p align="left" class="style53"><span class="style51">Results Found in</span><span class="style67"><span class="style66"> <%=(String)application.getAttribute("usite")%></span></span></p></td>
              </tr>
            </table>
            <p>
              <%
	  			
						String s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null,s9=null,s10=null,s11=null,s12=null,s13=null;
						String user = (String)application.getAttribute("uname");
						String usite = (String)application.getAttribute("usite");
						String username = request.getParameter("keyword");
						int i=0;
						try 
						{
						
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							Date now = new Date();
										
							String strDate = sdfDate.format(now);
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
						
						
						//if(username!=""){
						   	
							%>
              </a> <span class="box">
              <%
							if(!(username.equals("")))
								{
									Statement st3 = connection.createStatement();
									String query3 ="insert into fsearch(user,keyword,date) values('"+user+"','"+username+"','"+dt+"')";
									st3.executeUpdate (query3); 	   
								}
							
							
							
							String query="select * from user where  (username!='"+user+"' and (username  LIKE '%"+username+"%' and site='"+usite+"' ))"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								s7=rs.getString(9);
								s8=rs.getString(10);
								
	  							
								
	  %>
            </span></p>
            <table width="521" border="2" align="left"  cellpadding="0" cellspacing="0"  >
              <tr>
                <td rowspan="8" width="153" ><input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:150px; height:150px;" class="image_wrapper" />
                </td>
                <td width="157" height="27" align="center" valign="middle"><div align="left" class="style81 style87 style69">
                    <div align="center"><span style="margin-left:20px;">User Name:</span></div>
                </div></td>
                <td width="201" style="margin-left:20px; color:#000000;"><div align="left" class="style72">
                    <div align="left"><%=s1%></div>
                </div></td>
              </tr>
              <tr>
                <td height="28" align="center" valign="middle"><div align="left" class="style81 style87 style69">
                    <div align="center"><span style="margin-left:20px;">E-Mail:</span></div>
                </div></td>
                <td style="margin-left:20px; color:#000000;"><div align="left" class="style72">
                    <div align="left"><%=s2%></div>
                </div></td>
              </tr>
              <tr>
                <td height="24" align="center" valign="middle"><div align="left" class="style81 style87 style69">
                    <div align="center"><span style="margin-left:20px;">Mobile:</span></div>
                </div></td>
                <td style="margin-left:20px; color:#000000;"><div align="left" class="style72">
                    <div align="left"><%=s3%></div>
                </div></td>
              </tr>
              <tr>
                <td height="24" align="center" valign="middle"><div align="left" class="style81 style87 style69">
                    <div align="center"><span style="margin-left:20px;">Address:</span></div>
                </div></td>
                <td style="margin-left:20px; color:#000000;"><div align="left" class="style72">
                    <div align="left"><%=s4%></div>
                </div></td>
              </tr>
              <tr>
                <td height="27" align="center" valign="middle"><div align="left" class="style81 style87 style69">
                    <div align="center"><span style="margin-left:20px;">DOB:</span></div>
                </div></td>
                <td style="margin-left:20px; color:#000000;"><div align="left" class="style72">
                    <div align="left"><%=s5%></div>
                </div></td>
              </tr>
              <tr>
                <td height="29" align="center" valign="middle"><div align="left" class="style81 style87 style69">
                    <div align="center"><span style="margin-left:20px;">Gender:</span></div>
                </div></td>
                <td style="margin-left:20px; color:#000000;"><div align="left" class="style72">
                    <div align="left"><%=s6%></div>
                </div></td>
              </tr>
              <tr>
                <td height="40" align="center" valign="middle"><div align="left" class="style81 style87 style69">
                    <div align="center">Social Site :</div>
                </div></td>
                <td style="margin-left:20px; color:#000000;"><div align="left" class="style72">
                    <div align="left"><%=s8%></div>
                </div></td>
              </tr>
              <tr>
                <td height="46" align="center" valign="middle"><div align="left" class="style81 style87 style69">
                    <div align="center"><span style="margin-left:20px;">Status:</span></div>
                </div></td>
                <td style="margin-left:20px; color:#000000;"><p align="center" class="style83"><%=s7%><span style="float:right"><a href="updaterequest.jsp?rname=<%=s1%>">
                    <input class="art-button" name="button" type="button" value="Request" />
                </a></span></p></td>
              </tr>
            </table>
            <%
				  			//}
				  
	  						}
							}catch(Exception e){
								e.getMessage();
							}
	  
				  
				  %>
          <a href="UserMain.jsp" class="style56"></a></div>
        </div>
        <div class="cleaner"></div>
      </div>
      <form id="form2" name="form2" method="post" action=""><strong><a href="UserMain.jsp"></a></strong><strong><a href="UserMain.jsp"></a></strong>
      </form>
    
      <div align="right">
        <p>&nbsp;</p>
        <p class="pages style54">&nbsp;</p>
        <p class="pages style54">&nbsp;</p>
        <p class="pages style54">&nbsp;</p>
        <p align="left" class="pages style54"><strong><a href="UserMain.jsp">Back</a></strong></p>
      </div>
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
