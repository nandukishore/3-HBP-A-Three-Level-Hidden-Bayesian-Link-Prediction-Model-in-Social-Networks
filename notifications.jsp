<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Distorted</title>
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
.style36 {	font-size: 24px;
	color: #003300;
}
.style39 {	color: #6600FF;
	font-size: 14px;
}
.style41 {font-size: 14px}
.style42 {	color: #CC0000;
	font-weight: bold;
}
.style43 {color: #FF00FF}
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
          <li><a href="support.html"><span>Home</span></a></li>
          <li><a href="about.html"><span>User</span></a></li>
          <li><a href="blog.html"><span>Admin</span></a></li>
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
          <div class="col_allw280 fp_service_box">
            <table width="348" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="340"><span class="style36">Password Re-use Notifications.. </span></td>
              </tr>
            </table>
            <p>&nbsp;</p>
            <p> </p>
            <p class="style39">
              <%
			  try
			  {
			  
			  
 					   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   	           SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			           Date now = new Date();

			           String strDate = sdfDate.format(now);
			           String strTime = sdfTime.format(now);
			           String dt = strDate + "   " + strTime;
					   
					   
						  String pass="",address="",email="",pass1="",address1="",email1="",s4="",s5="",s6="";
						  int a=0;
						  
						  String username=(String)application.getAttribute("uname");
						  String usersite=(String)application.getAttribute("usite");
						  String upass=(String)application.getAttribute("upass");
						  
						  String q1="select * from user where username='"+username+"' and site='"+usersite+"'";
						  Statement st1=connection.createStatement();
						  ResultSet rs1=st1.executeQuery(q1);
						  
						  if(rs1.next())
						  {
								pass=rs1.getString(3);
								email=rs1.getString(4);
								address=rs1.getString(6);
								//s1=rs.getString(3);					 
								
									  String q2="select * from user where (password='"+upass+"' and site='"+usersite+"') and username!='"+username+"'";
									  Statement st2=connection.createStatement();
									  ResultSet rs2=st2.executeQuery(q2);
									  
									  if(rs2.next()==true)
									  {
						  
												a=1;
												
									  }
						  
						  }
						  int b=0;
						  String q3="select * from user where username='"+username+"' and site!='"+usersite+"'";
						  Statement st3=connection.createStatement();
						  ResultSet rs3=st3.executeQuery(q3);
						  
						  if(rs3.next())
						  {
								pass1=rs3.getString(3);
								email1=rs3.getString(4);
								address1=rs3.getString(6);
								//s1=rs.getString(3);					 
								
									  String q4="select * from user where ((username='"+username+"' and password='"+upass+"') and site!='"+usersite+"')";
									  Statement st4=connection.createStatement();
									  ResultSet rs4=st4.executeQuery(q4);
									  
									  if(rs4.next()==true)
									  {
						  						b=1;
											
									  }
						  
						  }
						  
						  if(a==1 && b==1)
						  {
						  
						  			/*Statement st201 = connection.createStatement();
									String query201 ="select * from attacks where user='"+username+"'and type='intra_sites'";
									ResultSet rs201=st201.executeQuery (query201);
									if(rs201.next()==true)
									{
											/*Statement st22 = connection.createStatement();
											String query22 ="select * from results where sites='intra_sites'";
											ResultSet rs22=st22.executeQuery (query22);
											if(rs22.next()==true)
											{
											
													int s_initial=rs22.getInt(3);
													int s_total=s_initial+1;
											
													Statement st23 = connection.createStatement();
													String query23="update results set counts='"+s_total+"' where sites='intra_sites'";
													st23.executeUpdate (query23);
											}
									}
									else
									{*/
									
												String intra_sites="intra_sites";
												
												PreparedStatement ps=connection.prepareStatement("insert into attacks(user,site,pass,type,date) values(?,?,?,?,?)");
									
												ps.setString(1,username);
												ps.setString(2,usersite);
												ps.setString(3,pass);	
												ps.setString(4,intra_sites);
												ps.setString(5,dt);
												ps.executeUpdate();
												
												Statement st212 = connection.createStatement();
												String query212 ="select * from results where sites='intra_sites'";
												ResultSet rs212=st212.executeQuery (query212);
												if(rs212.next()==true)
												{
												
														int s_initial212=rs212.getInt(3);
														int s_total212=s_initial212+1;
												
														Statement st213 = connection.createStatement();
														String query213="update results set counts='"+s_total212+"' where sites='intra_sites'";
														st213.executeUpdate (query213);
												}
										
									
									
									/*
									Statement st202 = connection.createStatement();
									String query202 ="select * from attacks where user='"+username+"'and type='cross_sites'";
									ResultSet rs202=st202.executeQuery (query202);
									if(rs202.next()==true)
									{*/
									
											/*
											Statement st24 = connection.createStatement();
											String query24 ="select * from results where sites='cross_sites'";
											ResultSet rs24=st24.executeQuery (query24);
											if(rs24.next()==true)
											{
											
													int s_initial24=rs24.getInt(3);
													int s_total24=s_initial24+1;
											
													Statement st25 = connection.createStatement();
													String query25="update results set counts='"+s_total24+"' where sites='cross_sites'";
													st25.executeUpdate (query25);
											}
									
									
									}
									else
									{*/
												
												String cross_sites="cross_sites";
												
												PreparedStatement ps1=connection.prepareStatement("insert into attacks(user,site,pass,type,date) values(?,?,?,?,?)");
									
												ps1.setString(1,username);
												ps1.setString(2,usersite);
												ps1.setString(3,pass);	
												ps1.setString(4,cross_sites);
												ps1.setString(5,dt);
												ps1.executeUpdate();
												
												Statement st224 = connection.createStatement();
												String query224 ="select * from results where sites='cross_sites'";
												ResultSet rs224=st224.executeQuery (query224);
												if(rs224.next()==true)
												{
												
														int s_initial224=rs224.getInt(3);
														int s_total224=s_initial224+1;
												
														Statement st225 = connection.createStatement();
														String query225="update results set counts='"+s_total224+"' where sites='cross_sites'";
														st225.executeUpdate (query225);
												}
									// }
									
									
						  					out.print("<br>Please change your password!!..<br>");
											%>
              </span></p>
            <table width="388" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="380"><p class="style42"><span class="style41">Other users are using this password in this site and you are using this for your other sites accounts too!!..</span></p>
                    <p class="style42">&nbsp;</p>
                  <p align="right" class="style42 style43"><span class="style41"><a href="userlogin.jsp"><strong>Go To User Main </strong></a></span></p></td>
              </tr>
            </table>
            <p>&nbsp;</p>
            <span class="style41"></span><span class="style39">
            <%
						  
						  
						  }
						  else if(a==1)
						  {
						  
						  
						  			/*Statement st20 = connection.createStatement();
									String query20 ="select * from attacks where user='"+username+"'and type='intra_sites'";
									ResultSet rs20=st20.executeQuery (query20);
									if(rs20.next()==true)
									{
						  
						  					out.print("<br>Please change your password!!..<br>");
											%>
            </span>
            </p>
            <table width="388" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="380"><p class="style42"><span class="style41">Other users are using this password in this site!!..</span></p>
                    <p class="style42">&nbsp;</p>
                  <p align="right" class="style42"><a href="userlogin.jsp"><strong>Go To User Main </strong></a></p></td>
              </tr>
            </table>
            <p>&nbsp;</p>
            <span class="style41"></span><span class="style39">
            <%
										}
										else
										{*/
													Statement st26 = connection.createStatement();
													String query26 ="select * from results where sites='intra_sites'";
													ResultSet rs26=st26.executeQuery (query26);
													if(rs26.next()==true)
													{
													
															int s_initial26=rs26.getInt(3);
															int s_total26=s_initial26+1;
													
															Statement st23 = connection.createStatement();
															String query23="update results set counts='"+s_total26+"' where sites='intra_sites'";
															st23.executeUpdate (query23);
													}
													String intra_site2="intra_sites";
													
													PreparedStatement ps2=connection.prepareStatement("insert into attacks(user,site,pass,type,date) values(?,?,?,?,?)");
										
													ps2.setString(1,username);
													ps2.setString(2,usersite);
													ps2.setString(3,pass);	
													ps2.setString(4,intra_site2);
													ps2.setString(5,dt);
													ps2.executeUpdate();
													
						  					out.print("<br>Please change your password!!..<br>");
											%>
            </span>
            </p>
            <table width="388" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="380"><p class="style42"><span class="style41">Other users are using this password in this site!!..</span></p>
                    <p class="style42">&nbsp;</p>
                  <p align="right" class="style42"><span class="style41"><a href="userlogin.jsp"><strong>Go To User Main </strong></a></span></p></td>
              </tr>
            </table>
            <p>&nbsp;</p>
            <span class="style41"></span><span class="style39">
            <%
									//	}
										
						  
						  
						  }
						   else if(b==1)
						  {
						  /*
						  			Statement st29 = connection.createStatement();
									String query29 ="select * from attacks where user='"+username+"' and type='cross_sites'";
									ResultSet rs29=st29.executeQuery (query29);
									if(rs29.next()==true)
									{
													
													
													out.print("<br>Please change your password!!..<br>");
															%>
            </span>
            </p>
            <table width="388" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="380"><p class="style42"><span class="style41">You are using this password  for your other sites accounts too!!..</span></p></td>
              </tr>
            </table>
            <p align="right"><span class="style42"><strong><a href="userlogin.jsp">Go To User Main</a></strong> </span></p>
            <span class="style41"></span><span class="style39">
            <%
									}	
									else
									{*/
													Statement st27 = connection.createStatement();
													String query27 ="select * from results where sites='cross_sites'";
													ResultSet rs27=st27.executeQuery (query27);
													if(rs27.next()==true)
													{
													
															int s_initial27=rs27.getInt(3);
															int s_total27=s_initial27+1;
													
															Statement st28 = connection.createStatement();
															String query28="update results set counts='"+s_total27+"' where sites='cross_sites'";
															st28.executeUpdate (query28);
													}
													String cross_site2="cross_sites";
													
													PreparedStatement ps3=connection.prepareStatement("insert into attacks(user,site,pass,type,date) values(?,?,?,?,?)");
										
													ps3.setString(1,username);
													ps3.setString(2,usersite);
													ps3.setString(3,pass1);	
													ps3.setString(4,cross_site2);
													ps3.setString(5,dt);
													ps3.executeUpdate();
													
													out.print("<br>Please change your password!!..<br>");
															%>
            </span>
            </p>
            <table width="388" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="380"><p class="style42"><span class="style41">You are using this password  for your other sites accounts too!!..</span></p></td>
              </tr>
            </table>
            <p align="right"><span class="style42"><strong><a href="userlogin.jsp">Go To User Main</a></strong> </span></p>
            <span class="style41"></span><span class="style39">
            <%
										//}	
													
										  
										  
						  }
						  else
						  {
						  		response.sendRedirect("UserMain.jsp");
						  }
						  
						  
						  
			  }
			  catch(Exception e)
			  {
			  	out.print(e);
			  }
			   %>
            </span>
            </p>
          </div>
          <h2>&nbsp;</h2>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="g1">
          <div class="g2">
            <div class="gadget">
              <h2 class="star"><span>Sidebar</span> Menu</h2>
              <div class="clr"></div>
              <ul class="sb_menu">
                <li><a href="#">Home</a></li>
                <li><a href="#">Admin</a></li>
                <li><a href="#">Users</a></li>
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
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
