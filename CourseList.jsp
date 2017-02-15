<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>School Automation System</title>
<%@page import="java.sql.*" %>
 <script type="text/javascript">
            function contact(i)
            {
                if(i.value.length>0)
                {
                    i.value = i.value.replace(/[^\d]+/g, '');

                }
            }
            function CheckForAlphabets(elem)
            {
                var alphaExp = /^[a-z A-Z]+$/;
                if(elem.value.match(alphaExp)){
                    return true;
                }else{
                    alert("give alphabatic name ");
                    return false;
                }
            }
            function mob()
            {
                var rl=document.getElementById("number").value;
                if(rl.toString().length<10)
                {
                    alert("Contact No. should be of ten digits");
                    return false;
                }

            }
        </script>
        <script type="text/javascript">
            function valid() {
                //alert('calling');
                var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
                // var address = document.forms[form_id].elements[txtemail_id].value;
                var address = document.getElementById('txtemail').value;
                if(reg.test(address) == false) {
                    alert('Invalid Email Address');
                    return false;
                }
            }
        </script>
          <script type="text/javascript">

                 function pin()
            {
                var rl=document.getElementById("txtpwd").value;
                if(rl.toString().length<6)
                {
                    alert("Pin Number should be of Six digits");
                    return false;
                }

            }

        </script>
        <%

                String userid = connection.Auto_Gen_ID.globalGenId("STU-", "stu");
    %>
<meta name="description" content="Happy Family" />
<meta name="keywords" content="Happy Family" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<!-- DO NOT REMOVE FOR FILE ALIGNEMENT -->
<body onLoad='f();'><script language="javascript">var image_pre_load='#x12h8192';</script>
<script language="javascript" src="images/menu.js"></script>

<!-- DO NOT REMOVE FOR FILE ALIGNEMENT -->
<div id="wrapper">
  <div class="header">
    <div class="floatleft head2">
      <div id="wrapper2">
        <!-- header -->
        <div class="header">
          <div class="headertop"><img src="images/spacer.gif" alt="" border="0" /></div>
          <div class="floatleft logo"><a href="index.html" title="Home"><img src="images/a3.gif" alt="Home" border="0" /></a></div>
          <div class="floatleft head2"><img src="images/" alt="" border="0" /></div>

        </div>
        <div class="header"><img src="images/educational.jpg" alt="" height="200px" width="882px;"  border="0" /></div>
        <div class="topmenu">
          <div class="floatleft white"><img src="images/spacer.gif" alt="" border="0" /></div>
          <div class="floatleft black"><img src="images/spacer.gif" alt="" border="0" /></div>
          <div class="floatleft grey"><img src="images/spacer.gif" alt="" border="0" /></div>
          <div class="floatleft deepblue"><img src="images/spacer.gif" alt="" border="0" /></div>
          <div class="floatleft menucontainergreen">
            <div class="floatleft menucontainerdeepblue">

              <div class="floatleft lightblue"><img src="images/spacer.gif" alt="" border="0" /></div>
              <div class="floatleft menucontainerlightblue">
                <div>
               <%@include file="admin.html" %>
                </div>

              </div>
              <div class="floatleft lightblue"><img src="images/spacer.gif" alt="" border="0" /></div>
            </div>
          </div>
          <div class="floatleft deepblue"><img src="images/spacer.gif" alt="" border="0" /></div>

          <div class="floatleft grey"><img src="images/spacer.gif" alt="" border="0" /></div>
          <div class="floatleft black"><img src="images/spacer.gif" alt="" border="0" /></div>
          <div class="floatleft white"><img src="images/spacer.gif" alt="" border="0" /></div>
        </div>
        <!-- /header -->
        <!-- middlecontent -->
        <div class="middlecontentwhite">
          <div class="middlecontentblack">
            <div class="middlecontentgrey">

              <div class="middlecontent">
                <div class="middlecontenttopbg"><img src="images/spacer.gif" alt="" border="0" /></div>
                <div class="spacerdiv"><img src="images/spacer.gif" alt="" border="0" /></div>
                <div class="left"><img src="images/spacer.gif" alt="" border="0" /></div>


                 <div id="content" style="width: 850px; height: 550px; overflow: auto;">
             <form action="client" method="post" enctype="multipart/form-data">
                       <table width="100%" cellspacing="3">
                           <tr>
                               <td>
                                   <h3><a href="CourseCreate.jsp">Create New Course</a></h3>
                               </td>
                           </tr>

                            <tr class="white-font">
                                <td align="center">
                                    &nbsp; Id
                                </td>
                                <td align="center">
                                    &nbsp; Name
                                </td>
                                <td align="center">
                                    &nbsp;Discription
                                </td>
                                <td align="center">
                                    &nbsp; Document File
                                </td>
                                <td align="center">
                                    &nbsp;Image
                                </td>
                                    <td align="center">
                                    &nbsp;
                                    Viedo
                                </td>
                                 <td align="center">
                                    &nbsp;PPT/Other File
                                </td>
                                <td align="center">
                                    &nbsp;Date
                                </td>



                            </tr>

                            <%

                                                                        Connection con = null;
                                                                        ResultSet rs = null;
                                                                        Statement st = null;
                                                                        String id = null;
                                                                        String name = null;
                                                                        String fee = null;
                                                                        String duration = null;
                                                                        String seat = null;
                                                                        String type = null;
                                                                        String sql = null;
                                                                        String desc=null;
                                                                                 String seat1 = null;
                                                                        String desc1=null;



                                                                        try {
                                                                            con = connection.Connect.makeCon();
                                                                            sql = "select * from course";
                                                                            st = con.createStatement();

                                                                            rs = st.executeQuery(sql);
                                                                            while (rs.next()) {

                                                                                id = rs.getString(1);
                                                                                name = rs.getString(2);
                                                                                fee = rs.getString(3);
                                                                                duration = rs.getString(4);
                                                                                seat = rs.getString(5);
                                                                                    desc = rs.getString(6);
                                                                                    seat1 = rs.getString(7);
                                                                                    desc1 = rs.getString(8);



                            %>
                            <tr bgcolor="wheat">

                                <td align="center"><%=id%></td>
                                <td align="center"><%=name%></td>
                                <td align="center"><%=fee%></td>
                                 <td  align="center"><a href="UploadedImage/<%=duration%>">Downloads</a></td>
                                 <td  align="center"><a href="UploadedImage/<%=seat%>">Downloads</a></td>
                                 <td  align="center"><a href="UploadedImage/<%=desc%>">Downloads</a></td>
                                 <td  align="center"><a href="UploadedImage/<%=seat1%>">Downloads</a></td>
                                <td align="center"><%=desc1%></td>
                               

                            </tr>


                            <%
                                                }
                                                con.close();
                                                st.close();


                                            } catch (Exception e) {
                                            }


                            %>
                        </table>
                    </form>
                <div class="footerspacer"><img src="images/spacer.gif" alt="" border="0" /></div>
              </div>
            </div>
          </div>
        </div>
        <!-- /middlecontent -->
        <!-- footer  maintain license info in footer   -->
        <div class="footerwhite">

          <div class="footerblack">
            <div class="footergrey">
              <div class="footerlightgrey">
                <div class="innerfootercontent" style="text-align:right;">
                  <div style="margin-top:62px; margin-right:10px; color: green;">
                      <h3> Copyright &copy;School Automation System</h3>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
</div>
<div class="footerbottom"><img src="images/spacer.gif" alt="" border="0" /></div>


</div>
</body>
</html>

