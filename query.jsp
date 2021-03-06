<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="ico/E-Mail.ico">

    <title>Mail Detective</title>

    <!-- Bootstrap core CSS -->
   
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">
    <link href="css/textbox.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- created -->
   	<style>
   	.viewing-area span {
	color: #666;
	display: none;
}

/* max-width */
@media screen and (max-width: 600px) {
	.one {
		background: #F9C;
	}
	span.lt600 {
		display: inline-block;
	}
}
   	</style>

  </head>

  <body>
	
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>

          <a class="navbar-brand" href="home.jsp">Mail Detective</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">E-Mails</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Help</a></li>
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </div>

    <div class="container-fluid" >
      <div class="row">
        
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">Inbox</a></li>
            <li><a href="#">Starred</a></li>
            <li><a href="#">Spam</a></li>
            <li><a href="#">Trash</a></li>
            <li><div style="margin-top:50%;margin-left:27%;color:#428bca;"><strong>Active Filters</strong></strong></div></li><hr style="margin-top:2%;padding:0;">
          </ul>
          <ul>
            <div id="post" style="margin-top:-4%"></div>
          </ul>
          
        </div>
        
      </div>
     </div> 
        
        <div class=" col-md-offset-2 main">
          <h1 class="page-header">E-Mails</h1>
         
           <div class="table-responsive " style="position:relative;width:75%" >
            
            <table class="table  table-hover sortable">
              
                <%@ page import="maildetective.test4query"  %>
            	<% test4query q1 = new test4query(); 
            	test4query q2 = new test4query(); 
            	test4query q3 = new test4query(); 
            	String[] id =new String[10];
            	String[] date =new String[10];
            	String[] sendername =new String[10];
            	 int i;
           	
           		 id=q1.mai("SELECT ?x WHERE { ?y <TO:> 'anirudhnain1@gmail.com' . ?y <SUB:> ?x} LIMIT 10 ");
           			
           		sendername=q2.mai("SELECT ?x WHERE { ?y <TO:> 'anirudhnain1@gmail.com' . ?y <FROM:> ?x} LIMIT 10 ");
          		date=q3.mai("SELECT ?x WHERE { ?y <TO:> 'anirudhnain1@gmail.com' . ?y <DATE:> ?x} LIMIT 10 ");
          		
          		for(i=0;i<10;i++)
                {   
                		sendername[i] = sendername[i].substring(0, Math.min(sendername[i].length(), 19));
                }
          		for(i=0;i<10;i++)
                {   
                		id[i] = id[i].substring(0, Math.min(id[i].length(), 100));
                }
          		for(i=0;i<10;i++)
                {   
                		date[i] = date[i].substring(0, Math.min(date[i].length(), 16));
                }
           		
           		%>
           		<thead>
           			<tr>
           				<th>Sender's Name <i class="fa fa-sort fa-fw" onclick="style.display='none'"></i> </th>
           				<th>Subject</th>
           				<th>Date</th>
           		</thead>
           		<tbody>
           		<% 
           		for(i=0;i<10;i++){%>
           		<tr>
           			<td><%out.println(sendername[i]);%></td>
           			<td><%out.println(id[i]);%></td>
           			<td><%out.println(date[i]); %></td>
           		</tr>
             <%} %>
              </tbody>
            </table>
          </div>
		</div>
          <!--<div class="row placeholder" !-->
          <!--<h2 class="sub-header"></h2>-->
              <!--NOTIFICATION STARTS-->
              
                <div class="container-fluid " style="position:fixed;margin-top:-28%;margin-left:78%;width:22%;" >
               
                    <div class="panel panel-default ">
                        <div class="panel-heading ">
                            <i class="fa fa-search fa-fw"></i> Search Panel
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="list-group">
                                <form class="list-group-item" onsubmit="myFunction('name');return false;">
    							<i class="fa fa-arrow-circle-right fa-fw "></i> <span onclick="document.getElementById('div1').style.display = 'block';setValue('Subject')"  style="margin-left:1%">Subject </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div1').style.display = 'block';setValue('Subject And')"  style="margin-left:40%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div1').style.display = 'block';setValue('Subject Or')" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div1" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div1').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                </form>
                                <form class="list-group-item" onsubmit="myFunction('name1');return false;">
    							<i class="fa fa-clipboard fa-fw "></i> <span onclick="document.getElementById('div2').style.display = 'block';setValue('Content')"  style="margin-left:1%">Content </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div2').style.display = 'block';setValue('Content And')"  style="margin-left:40%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div2').style.display = 'block';setValue('Content Or')" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div2" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div2').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name1" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                </form>
                                <form class="list-group-item" onsubmit="myFunction('name2');return false;">
    							<i class="fa fa-paperclip fa-fw "></i> <span onclick="document.getElementById('div3').style.display = 'block';setValue('Attachments')"  style="margin-left:1%">Attachments </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div3').style.display = 'block';setValue('Attachments And')"  style="margin-left:28%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div3').style.display = 'block';setValue('Attachments Or')" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div3" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div3').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name2" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                </form>
                               <form class="list-group-item" onsubmit="myFunction('name3');return false;">
    							<i class="fa fa-hand-o-right fa-fw "></i> <span onclick="document.getElementById('div4').style.display = 'block';setValue('To')"  style="margin-left:1%">TO </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div4').style.display = 'block';setValue('To And')"  style="margin-left:50%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div4').style.display = 'block';setValue('To Or')" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div4" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div4').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name3" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                </form>
                                <form class="list-group-item" onsubmit="myFunction('name4');return false;">
    							<i class="fa fa-hand-o-left fa-fw "></i> <span onclick="document.getElementById('div5').style.display = 'block';setValue('From')"  style="margin-left:1%">FROM </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div5').style.display = 'block';setValue('From And')"  style="margin-left:42%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div5').style.display = 'block';setValue('From Or')" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div5" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div5').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name4" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                </form>
                                 <form class="list-group-item" onsubmit="myFunction('name5');return false;">
    							<i class="fa fa-mail-forward fa-fw "></i> <span onclick="document.getElementById('div6').style.display = 'block';setValue('CC')"  style="margin-left:1%">CC </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div6').style.display = 'block';setValue('CC And')"  style="margin-left:50%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div6').style.display = 'block';setValue('CC Or')" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div6" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div6').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name5" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                </form>
                                <form class="list-group-item" onsubmit="myFunction('name6');return false;">
    							<i class="fa fa-mail-reply-all fa-fw "></i> <span onclick="document.getElementById('div7').style.display = 'block';setValue('BCC')"  style="margin-left:1%">BCC </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div7').style.display = 'block';setValue('BCC And')"  style="margin-left:46%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div7').style.display = 'block';setValue('BCC Or')" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div7" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div7').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name6" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                </form>
                               <form class="list-group-item" onsubmit="myFunction('name7');return false;">
    							<i class="fa fa-calendar fa-fw "></i> <span onclick="document.getElementById('div8').style.display = 'block';setValue('Date')"  style="margin-left:1%">Date </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div8').style.display = 'block';setValue('Date And')"  style="margin-left:46%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div8').style.display = 'block';setValue('Date Or')" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div8" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div8').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name7" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                </form>
                                <form class="list-group-item" onsubmit="myFunction('name8');return false;">
    							<i class="fa fa-file-text fa-fw "></i> <span onclick="document.getElementById('div9').style.display = 'block';setValue('Containswrd')"  style="margin-left:1%">Contains Word </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div9').style.display = 'block';setValue('Containswrd And')"  style="margin-left:21%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div9').style.display = 'block';setValue('Contains Or')" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div9" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div9').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name8" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                </form>
                                 <form class="list-group-item" onclick="checkbx('name9');return false;">
    							<i class="fa fa-check fa-fw "></i> <span onclick="document.getElementById('div10').style.display = 'block';setValue('HasAttch')"  style="margin-left:1%">Has Attachments</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="checkbox" id="name9">
                                </form>
                            </div>
                            <!-- /.list-group -->
                            <a href="#" class="btn btn-default btn-block">View All Alerts</a>

                        </div>
                        <!-- /.panel-body -->
                    </div>
              <!--NOTIFICATION ENDS-->
         	</div>
       
    
	
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/docs.min.js"></script>
    <script src="js/script.js"></script>
    <script src="js/sorttable.js"></script>
    <script src="js/datetime.js"></script>
  </body>
</html>