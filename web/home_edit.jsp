<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
int uid=(int)session.getAttribute("uid");
String name="";
String dob="";
String yoa="";
String pemail="";
String inst="";
String dept="";
String eno="";
String gender="";
String mobno=""; 
String photo="";
String beuname="";
String suname="";
String huname="";
String hucity="";
String becity="";
String sucity="";
String beinst="";
String sinst="";
String hinst="";
String hinstcity="";
String sinstcity="";
String beinstcity="";
String beyear="";
String hyear="";
String syear="";
String becgpa="";
String scgpa="";
String hcgpa=""; 

Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","myroot"); 
PreparedStatement st= con.prepareStatement("select * from data where uid=?"); 
st.setInt(1,uid);

ResultSet rs = st.executeQuery();
if(rs.next())
{
    name=rs.getString(2);
dob=rs.getString(3);
yoa=rs.getString(4);
pemail=rs.getString(5);
inst=rs.getString(6);
dept=rs.getString(7);
eno=rs.getString(8);
gender=rs.getString(9);
mobno=rs.getString(10);
photo=rs.getString(11);
beuname=rs.getString(12);
suname=rs.getString(13);
huname=rs.getString(14);
hucity=rs.getString(15);
becity=rs.getString(16);
sucity=rs.getString(17);
beinst=rs.getString(18);
sinst=rs.getString(19);
hinst=rs.getString(20);
hinstcity=rs.getString(21);
sinstcity=rs.getString(22);
beinstcity=rs.getString(23);
beyear=rs.getString(24);
hyear=rs.getString(25);
syear=rs.getString(26);
becgpa=rs.getString(27);
scgpa=rs.getString(28);
hcgpa=rs.getString(29);


   
%><%}%>
<html>
<head>
<title>Portfolio</title>
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
	.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: absolute;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #4CAF50;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
</style>
</head>
<body >
<div style="background-image:url('back.jpg'); background-repeat: no-repeat;background-size: cover;"> 
 
  <div class="wrapper row1">
    <header id="header" class="hoc clear"> 
     
      <div id="logo" class="flex float-left">
        <h1><a href="index.html">Portfolio</a></h1>
      </div>
      <nav id="mainav" class="float-right">
    
            <ul>
             
          
          <li><a href="index.html">Logout</a></li>
        </ul>
      </nav>
    
    </header>
  </div>
<!--   <section id="pageintro" style="color: white"> -->
    <div class="container"style="background-color: white;color:black; height:90%;overflow:auto;">

    	<div class="sidebar">
  <a  href="home_home.jsp">Home</a>
  <a class="active" href="home_edit.jsp">Edit Portfolio</a>
  <a href="home_publish.jsp">Publish Setting</a>
  
</div>

        <div class="content">
            <form action="saveData.jsp" enctype="multipart/form-data" >
  <h2>Edit Portfolio</h2>

 
  <hr>
  <h4 style="text-decoration: underline">Personal Details</h4><br>

  <div class="form-group" >
   Name
   <input type="text" name="name" value="<%=name%>"class="form-control" id="exampleInputEmail1" >
   
  </div>
  <div class="form-group">
    Date Of Birth
    <input type="text"  name="dob"value="<%=dob%>"class="form-control" id="exampleInputPassword1" >
  </div>
        <div class="form-group">
       Year Of Admission
    <input type="text"  name="yoa" value="<%=yoa%>" class="form-control" id="exampleInputPassword1" >
  </div>
        <div class="form-group">
         Primary Email
    <input type="email"  name="pemail" value="<%=pemail%>"class="form-control" id="exampleInputPassword1" >
  </div>
        <div class="form-group">
 Institute
    <input type="text" value="<%=inst%>" name="inst"class="form-control" id="exampleInputPassword1" >
  </div>
        <div class="form-group">
Department
    <input type="text"  name="dept" value="<%=dept%>"class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
Enrollment No.
    <input type="text"  name="eno" value="<%=eno%>"class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
Gender
    <input type="text" name="gender" value="<%=gender%>" class="form-control" id="exampleInputPassword1" >
  </div>
  <div class="form-group">
Mobile
    <input type="text"  name="mobno" value="<%=mobno%>"class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
Upload Photo(<16 kb)
    <input type="file"  name="photo"value="<%=photo%>" class="form-control" id="exampleInputPassword1" >
  </div>
      
      <br>
  <font color="blue"><h5>Bachelor Of Education</h5></font>
  <br>
  <br>
  <div class="form-group">
  University Name
   <input type="text" name="beuname" value="<%=beuname%>" class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
  University City
   <input type="text" name="beucity" value="<%=becity%>" class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
  Institute <input type="text"  name="beinst" value="<%=beinst%>"class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
  Institute City <input type="text"  name="beinstcity" value="<%=beinstcity%>"class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
  Year Of Passing
   <input type="text"  name="beyear" value="<%=beyear%>"class="form-control" id="exampleInputPassword1" >
  </div> <div class="form-group">
  CGPA/Percentage
  <input type="text" name="becgpa" value="<%=becgpa%>" class="form-control" id="exampleInputPassword1" >
  </div> 
      
      
  <h4 style="text-decoration: underline">Education</h4>
  <br>
  <font color="blue"><h5>12th</h5></font>
  <br>
  <br>
  <div class="form-group">
  University Name
   <input type="text"  name="suname" value="<%=suname%>" class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
  University City
   <input type="text" name="sucity" value="<%=sucity%>"class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
  Institute <input type="text" name="sinst" value="<%=sinst%>"class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
  Institute City <input type="text" name="sinstcity" value="<%=sinstcity%>"class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
  Year Of Passing
   <input type="text"  name="syear" class="form-control"value="<%=syear%>" id="exampleInputPassword1" >
  </div> <div class="form-group">
  CGPA/Percentage
  <input type="text" name="scgpa" value="<%=scgpa%>" class="form-control" id="exampleInputPassword1" placeholder="">
  </div>
  
  
  <br>
  <font color="blue"><h5>10th</h5></font>
  <br>
  <br>
  <div class="form-group">
  University Name
   <input type="text"  name="huname" value="<%=huname%>" class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
  University City
   <input type="text"  name="hucity" value="<%=hucity%>" class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
  Institute <input type="text"  name="hinst" value="<%=hinst%>" class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
  Institute City <input type="text" name="hinstcity" value="<%=hinstcity%>" class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
  Year Of Passing
   <input type="text" name="hyear" value="<%=hyear%>"class="form-control" id="exampleInputPassword1" >
  </div> <div class="form-group">
  CGPA/Percentage
  <input type="text" name="hcgpa" value="<%=hcgpa%>"class="form-control" id="exampleInputPassword1" >
  </div>
  
  <br>
    <button class="btn btn-primary float-center" type="submit">Save </button>
    <br>
    <hr>

  <h4 style="text-decoration: underline">Projects(Before Adding New Project, Kindly Save the data.)</h4>

  
  <form><div class="form-group">
  Project Name
   <input type="text" class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
Mentor
   <input type="text" class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
  Department <input type="text" class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
  Description<input type="text" class="form-control" id="exampleInputPassword1" >
  </div>
      <div class="form-group">
 From Date
   <input type="text" class="form-control" id="exampleInputPassword1" >
  </div> <div class="form-group">
 To Date
  <input type="text" class="form-control" id="exampleInputPassword1" >
  </div></form>
      
  <button id=btnadd class="btn btn-primary">Add New Project</button>
   </form>
</div>
 
</div>
  <!-- </section> -->
</div>



  
     
 
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <div class="clear"></div>
  </main>
</div>

<div style="background-color: #4e7f19;line-height:100px;text-align: center;">  
   
      <p>Developed by Aditya & Neelam</p>    
  
</div>
 

<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>