  <!-- The MIT License (MIT)

Copyright (c) IIIT-DELHI 
authors:
HEMANT JAIN "hjcooljohny75@gmail.com"
ANIRUDH NAIN 
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE. -->
  <!DOCTYPE html>
<html lang="en">
  <head>
  <% String[] arr=new String[30];
  String[] arrow=new String[30];
  String[] arro=new String[30];
  String[] matter=new String[30];

  	  arrow[0]=(String)session.getAttribute("arrow0");
  arrow[1]=(String)session.getAttribute("arrow1");
  arrow[2]=(String)session.getAttribute("arrow2");
  arrow[3]=(String)session.getAttribute("arrow3");
  arrow[4]=(String)session.getAttribute("arrow4");
  arrow[5]=(String)session.getAttribute("arrow5");
  arrow[6]=(String)session.getAttribute("arrow6");
  arrow[7]=(String)session.getAttribute("arrow7");
  arrow[8]=(String)session.getAttribute("arrow8");
  arrow[9]=(String)session.getAttribute("arrow9");
  arrow[10]=(String)session.getAttribute("arrow10");
  arrow[11]=(String)session.getAttribute("arrow11"); 
 arrow[12]=(String)session.getAttribute("arrow12");
 arrow[13]=(String)session.getAttribute("arrow13");
  arrow[14]=(String)session.getAttribute("arrow14");
  arrow[15]=(String)session.getAttribute("arrow15");
  arrow[16]=(String)session.getAttribute("arrow16");
  arrow[17]=(String)session.getAttribute("arrow17");
  arrow[18]=(String)session.getAttribute("arrow18");
  arrow[19]=(String)session.getAttribute("arrow19");
  arrow[20]=(String)session.getAttribute("arrow20");
  arrow[21]=(String)session.getAttribute("arrow21");
  arrow[22]=(String)session.getAttribute("arrow22");
  arrow[23]=(String)session.getAttribute("arrow23");
  arrow[24]=(String)session.getAttribute("arrow24");
  arrow[25]=(String)session.getAttribute("arrow25");
  arrow[26]=(String)session.getAttribute("arrow26");
  arrow[27]=(String)session.getAttribute("arrow27");
  
  arro[0]="subject";
  //System.out.println(subject";
  arro[1]="subjectand";
  //System.out.println(subjectand";
  arro[2]="subjector";
  //System.out.println(subjector";
  arro[3]="content";
  //System.out.println(content";
  arro[4]="contentand";
  //System.out.println(contentand";
  arro[5]="contentor";
  //System.out.println(contentor";
  arro[6]="attachment";
  //System.out.println(attachment";
  arro[7]="attachmentand";
  //System.out.println(attachmentand";
  arro[8]="attachmentor";
  //System.out.println(attachmentor";
  arro[9]="from";
  //System.out.println(from";
  arro[10]="fromand";
  //System.out.println(fromand";
  arro[11]="fromor";
  //System.out.println(fromor";
  arro[12]="to";
  //System.out.println(to";
  arro[13]="toand";
  //System.out.println(toand";
  arro[14]="toor";
  //System.out.println(toor";
  arro[15]="reply";
  //System.out.println(reply";
  //arro[16]="replyand";
  ///System.out.println(replyand";
  ///arro[17]="replyor";
  //System.out.println(replyor";
  arro[18]="cc";
  //System.out.println(cc";
  arro[19]="ccand";
  //System.out.println(ccand";
  arro[20]="ccor";
  //System.out.println(ccor";
  arro[21]="bcc";
  //System.out.println(bcc";
  arro[22]="bccand";
  //System.out.println(bccand";
  arro[23]="bccor";
  //System.out.println(bccor";
  arro[24]="date";
  //System.out.println(date";
  arro[25]="dateafter";
  //System.out.println(dateand";
  arro[26]="datebefore";
  //System.out.println(dateor";
  arro[27]="hasattachment";
  //System.out.println(dateor";
  


  
  
	for(int m=0;m<28;m++)
	{System.out.println(arrow[m]);
	
	}
  String subquery;
  subquery=request.getParameter("sub");
  if(subquery!=null)
	  System.out.println("USE THIS"+subquery);
  arr[0]=request.getParameter("subject");
  //System.out.println(subject);
  arr[1]=request.getParameter("subjectand");
  //System.out.println(subjectand);
  arr[2]=request.getParameter("subjector");
  //System.out.println(subjector);
  arr[3]=request.getParameter("content");
  //System.out.println(content);
  arr[4]=request.getParameter("contentand");
  //System.out.println(contentand);
  arr[5]=request.getParameter("contentor");
  //System.out.println(contentor);
  arr[6]=request.getParameter("attachment");
  //System.out.println(attachment);
  arr[7]=request.getParameter("attachmentand");
  //System.out.println(attachmentand);
  arr[8]=request.getParameter("attachmentor");
  //System.out.println(attachmentor);
  arr[9]=request.getParameter("from");
  //System.out.println(from);
  arr[10]=request.getParameter("fromand");
  //System.out.println(fromand);
  arr[11]=request.getParameter("fromor");
  //System.out.println(fromor);
  arr[12]=request.getParameter("to");
  //System.out.println(to);
  arr[13]=request.getParameter("toand");
  //System.out.println(toand);
  arr[14]=request.getParameter("toor");
  //System.out.println(toor);
  arr[15]=request.getParameter("reply");
  //System.out.println(reply);
  //arr[16]=request.getParameter("replyand");
  //System.out.println(replyand);
  //arr[17]=request.getParameter("replyor");
  //System.out.println(replyor);
  arr[18]=request.getParameter("cc");
  //System.out.println(cc);
  arr[19]=request.getParameter("ccand");
  //System.out.println(ccand);
  arr[20]=request.getParameter("ccor");
  //System.out.println(ccor);
  arr[21]=request.getParameter("bcc");
  //System.out.println(bcc);
  arr[22]=request.getParameter("bccand");
  //System.out.println(bccand);
  arr[23]=request.getParameter("bccor");
  //System.out.println(bccor);
  arr[24]=request.getParameter("date");
  //System.out.println(date);
  arr[25]=request.getParameter("dateand");
  //System.out.println(dateand);
  arr[26]=request.getParameter("dateor");
  arr[27]=request.getParameter("hasattachment");
  if(arr[24]!=null&&!arr[24].equals("")&&!arr[24].equals("huh"))
  arr[24]=arr[24]+"T00:00:00+05:30";
  if(arr[25]!=null&&!arr[25].equals("")&&!arr[25].equals("huh"))
  arr[25]=arr[25]+"T00:00:00+05:30";
  if(arr[26]!=null&&!arr[26].equals("")&&!arr[26].equals("huh"))
  arr[26]=arr[26]+"T00:00:00+05:30";
  //System.out.println(dateor);
  for(int m=0;m<28;m++)
  {		
	  if(arr[m]!=null)
		  System.out.println(m+"hi"+arr[m]);
  }
  for(int l=0;l<28;l++)
  {
	  if(arr[l]!=null&&! arr[l].equals("")&&arrow!=null&&l!=16&&l!=17)
	  { if(arr[l].equals("huh"))
	  { System.out.println(l);
		  arrow[l]=null;
	  }
	  		else	
		  arrow[l]=arr[l];
	  }
  }int pos=0;
  for(int m=0;m<28;m++)
	{System.out.println("hello"+arrow[m]);
	if(arrow[m]!=null&&!arrow[m].equals(""))
		pos=1;
	}

  session.setAttribute("arrow0",arrow[0]);
  session.setAttribute("arrow1",arrow[1]);
  session.setAttribute("arrow2",arrow[2]);
  session.setAttribute("arrow3",arrow[3]);
  session.setAttribute("arrow4",arrow[4]);
  session.setAttribute("arrow5",arrow[5]);
  session.setAttribute("arrow8",arrow[8]);
  session.setAttribute("arrow6",arrow[6]);
  session.setAttribute("arrow7",arrow[7]);
  session.setAttribute("arrow9",arrow[9]);
  session.setAttribute("arrow10",arrow[10]);
  session.setAttribute("arrow11",arrow[11]);
  session.setAttribute("arrow12",arrow[12]);
  session.setAttribute("arrow13",arrow[13]);
  session.setAttribute("arrow14",arrow[14]);
  session.setAttribute("arrow15",arrow[15]);
  //session.setAttribute("arrow16",arrow[16]);
  //session.setAttribute("arrow17",arrow[17]);
  session.setAttribute("arrow18",arrow[18]);
  session.setAttribute("arrow19",arrow[19]);
  session.setAttribute("arrow20",arrow[20]);
  session.setAttribute("arrow21",arrow[21]);
  session.setAttribute("arrow22",arrow[22]);
  session.setAttribute("arrow23",arrow[23]);
  session.setAttribute("arrow24",arrow[24]);
  session.setAttribute("arrow25",arrow[25]);
  session.setAttribute("arrow26",arrow[26]);
  session.setAttribute("arrow27",arrow[27]);
  matter[0]="?a <SUB:> ?c . FILTER regex(?c,'";
  //System.out.println(subject";
  matter[1]="?a <SUB:> ?d . FILTER regex(?d,'";
  //System.out.println(subjectand";
  matter[2]="";
  //System.out.println(subjector";
  matter[3]="?a <CONTENT:> ?b . FILTER regex(?b,'";
  //System.out.println(content";
  matter[4]="?a <CONTENT:> ?d . FILTER regex(?d,'";
  //System.out.println(contentand";
  matter[5]="contentor";
  //System.out.println(contentor";
  matter[6]="?a <ATTACHEMENTNAME:> ?e . FILTER regex(?e,'";
  //System.out.println(attachment";
  matter[7]="?a <ATTACHEMENTNAME:> ?f . FILTER regex(?f,'";
  //System.out.println(attachmentand";
  matter[8]="attachmentor";
  //System.out.println(attachmentor";
  matter[9]="?a <FROMFULL:> ?q .FILTER regex(?q,'";
  //System.out.println(from";
  matter[10]="?a <FROMFULL:>  ?r .FILTER regex(?r,'";
  //System.out.println(fromand";
  matter[11]="fromor";
  //System.out.println(fromor";
  matter[12]="?a <TOFULL:>  ?s .FILTER regex(?s,'";
  //System.out.println(to";
  matter[13]="?a <TOFULL:>  ?t .FILTER regex(?t,'";
  //System.out.println(toand";
  matter[14]="toor";
  //System.out.println(toor";
  matter[15]="?a <REPLIEDTO:> '";
  //System.out.println(reply";
  //matter[16]="?a <REPLIEDTO:> '";
  //System.out.println(replyand";
  //matter[17]="replyor";
  //System.out.println(replyor";
  matter[18]="?a <CC:> '";
  //System.out.println(cc";
  matter[19]="?a <CC:> '";
  //System.out.println(ccor";
  //System.out.println(ccand";
  matter[20]="ccor";
  matter[21]="?a <BCC:> '";
  //System.out.println(bcc";
  matter[22]="?a <BCC:> '";
  //System.out.println(bccand";
  matter[23]="bccor";
  //System.out.println(bccor";
  matter[24]="?a <DATE:> ?l . FILTER (?l >= <http://www.w3.org/2001/XMLSchema#dateTime>('";
  //System.out.println(date";
  matter[25]="?a <DATE:> ?l . FILTER (?l >= <http://www.w3.org/2001/XMLSchema#dateTime>('";;
  //System.out.println(dateand";
  matter[26]="?a <DATE:> ?m . FILTER (?m <= <http://www.w3.org/2001/XMLSchema#dateTime>('";;
  matter[27]="?a <ATTACHEMENTNAME:> ?n . FILTER regex(?n,'";
  //System.out.println(dateor";
String[] matteror=new String[8];
matteror[0]="{?a <SUB:> ?g .FILTER regex(?g,'"+arrow[0]+"','i')} UNION {?z <SUB:> ?h .FILTER regex(?h,'"+arrow[2]+"','i')} . ";
matteror[1]="{?a <CONTENT:> ?g .FILTER regex(?g,'"+arrow[3]+"','i')} UNION {?z <CONTENT:> ?h .FILTER regex(?h,'"+arrow[5]+"','i')} . ";
matteror[2]="{?a <ATTACHEMENTNAME:> ?g .FILTER regex(?g,'"+arrow[6]+"','i')} UNION {?z <ATTACHEMENTNAME:> ?h .FILTER regex(?h,'"+arrow[8]+"','i')} . ";
matteror[3]="{?a <FROMFULL:> ?g .FILTER regex(?g,'"+arrow[9]+"','i')} UNION {?z <FROMFULL:> ?h .FILTER regex(?h,'"+arrow[11]+"','i')} . ";
matteror[4]="{?a <TOFULL:> ?g .FILTER regex(?g,'"+arrow[12]+"','i')} UNION {?z <TOFULL:> ?h .FILTER regex(?h,'"+arrow[14]+"','i')} . ";
matteror[5]="{?a <CC:> ?g .FILTER regex(?g,'"+arrow[18]+"','i')} UNION {?z <CC:> ?h .FILTER regex(?h,'"+arrow[20]+"','i')} . ";
matteror[7]="{?a <BCC:> ?g .FILTER regex(?g,'"+arrow[21]+"','i')} UNION {?z <BCC:> ?h .FILTER regex(?h,'"+arrow[23]+"','i')} . ";

//String query="SELECT ?x WHERE { ?a <SUB:> ?x .";
String query="";
int flag=0;
for(int j=0;j<8;j++)
{	if(j==6)
	continue;
	if(arrow[3*j+2]!=null&&!arrow[3*j+2].equals(""))
		query+=matteror[j];
	else
	{	for(int i=j*3;i<j*3+2;i++)
		{	
			if(arrow[i]!=null&&!arrow[i].equals(""))
			{	if(flag==1)
					query=query+".";	
				flag=1;
				if(i==0||i==3||i==9||i==10||i==12||i==13||i==6||i==7)
					query=query+matter[i]+arrow[i]+"','i') ";
  				else if(i==24||i==25||i==26)
  					query=query+matter[i]+arrow[i]+"')) ";
  				else
				query=query+matter[i]+arrow[i]+"' ";
			}
		}			
		
	}
}
if(arrow[15]!=null&&!arrow[15].equals(""))
{	if(flag==1)
		query=query+".";	
	
	query=query+matter[15]+arrow[15]+"' ";
}
for(int i=24;i<28;i++)
{	
	if(arrow[i]!=null&&!arrow[i].equals(""))
	{	if(flag==1)
			query=query+".";	
		flag=1;
		if(i==0||i==3||i==27)
			query=query+matter[i]+arrow[i]+"','i') ";
			else if(i==24||i==25||i==26)
				query=query+matter[i]+arrow[i]+"')) ";
			else
		query=query+matter[i]+arrow[i]+"' ";
	}
}	
query+=" } LIMIT 30";
String querysub="SELECT ?x WHERE { ?a <SUB:> ?x ."+query;
String querydate="SELECT ?x WHERE { ?a <DATE:> ?x ."+query;
String querysendername="SELECT ?x WHERE { ?a <SENDERNAME:> ?x ."+query;
String querymessageid="SELECT ?x WHERE { ?a <MESSAGEID:> ?x ."+query;
String querysend="SELECT (?x as ?u) WHERE { ?a <FROM:> ?x ."+query;
if(subquery!=null)
{
	
	 querysub="SELECT ?x WHERE { ?a <SUB:> ?x .?a <FROM:> ?u .{"+subquery+"} ."+query;
	 querydate="SELECT ?x WHERE { ?a <DATE:> ?x .?a <FROM:> ?u .{"+subquery+"} ."+query;
	 querysendername="SELECT ?x WHERE { ?a <SENDERNAME:> ?x .?a <FROM:> ?u .{"+subquery+"} ."+query;
	 querymessageid="SELECT ?x WHERE { ?a <MESSAGEID:> ?x .?a <FROM:> ?u .{"+subquery+"} ."+query;
	 querysend="SELECT ?x  WHERE { ?a <FROM:> ?x .?a <FROM:> ?u .{"+subquery+"} ."+query;

	
	
}	
  System.out.println(querysub);
  System.out.println(querydate);
  System.out.println(querysendername);
  System.out.println(querymessageid);
  System.out.println(querysend); 
  %>    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="ico/E-Mail.ico">

    <title>Mail Detective</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/hover.css" rel="stylesheet">
     <link href="css/button.css" rel="stylesheet">
     <link href="css/datepicker.css" rel="stylesheet"/>  
         <script src="js/jquery-1.11.1.js" type="text/javascript"></script>
    <script src="js/bootstrap-datepicker.js" type="text/javascript"></script>


    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style>
    	a, u {
    			text-decoration: none;
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

          <a class="navbar-brand" href="index.jsp">Mail Detective</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="gmail_like.jsp?item=<%=0%>">E-Mails</a></li>
           
            <li><a href="help.jsp">Help</a></li>
            <li><a href="index.jsp">Logout</a></li>
          </ul>
          <form class="navbar-form navbar-right" action="Search.jsp" method="get">
            <input type="text" class="form-control" placeholder="Search..." name="search">
            <input type="hidden" name="item" value="<%=0%>">  </form>
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row">
        <% int value=Integer.parseInt(request.getParameter("item"));
     			int value1=value+30;%>
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            
             <li><a href="gmail_like.jsp?item=<%=0%>">Inbox</a></li>
            <li><a href="Starred.jsp?item=<%=0%>">Starred</a></li>
            <li><a href="Spam.jsp?item=<%=0%>">Spam</a></li>
            <li><a href="Sentmail.jsp?item=<%=0%>">Sentmail</a></li>
            <li><a href="Drafts.jsp?item=<%=0%>">Drafts</a></li>
            <li class="active"><a href="Trash.jsp?item=<%=value%>">Trash</a></li>
            <li><a href="Allmail.jsp?item=<%=0%>">All</a></li>
             <li><div style="margin-top:50%;margin-left:27%;color:#428bca;"><strong>Active Filters</strong></strong></div></li><hr style="margin-top:2%;padding:0;">
          </ul>
          <ul>
            <div id="post" style="margin-top:-4%"></div>
        <%int k;
        for(k=0;k<28;k++)
        { if(arrow[k]!=null&&!arrow[k].equals(""))
        	out.println("<a href='Trash.jsp?item=0&"+arro[k]+"=huh'>"+arro[k]+":"+arrow[k]+"<i class='fa fa-times-circle fa-fw'>"+"</i>"+"</a><br>");
        }
        %>
          </ul>
        </div>
     </div>
     </div> 
 
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" style="margin-top:0px">
          <a href="Trash.jsp?item=<%=value-30%>" class="classname" style=" margin-top:20px;margin-left:800px;"><p> < </p></a>
			<a href="Trash.jsp?item=<%=value+30%>" class="classname1" > > </a>
     <h1 class="page-header" style=" margin-top:-40px;">E-Mails</h1>   
     <h4 class="page-header" style=" margin-top:-50px; margin-left:720px;"><%out.println(value+"-"+value1); %></h4>  
        
     
          <!--<div class="row placeholders">
          </div>!-->

          <!--<h2 class="sub-header"></h2>-->
              <!--NOTIFICATION STARTS-->
                <div class="container-fluid " style="margin-top:0%;margin-left:65%;width:27%;" >
               
                    <div class="panel panel-default ">
                        <div class="panel-heading ">
                            <i class="fa fa-search fa-fw"></i> Search Panel
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="list-group">
                                <form class="list-group-item"  method="get" onsubmit="action='Trash.jsp'"> 
    							 <input type="hidden" name="item" value="<%=0%>">  
    				 			<i class="fa fa-arrow-circle-right fa-fw "></i> <span  action="Trash.jsp" onclick="document.getElementById('div1').style.display = 'block';"  style="margin-left:1%">Subject </span>	
                                <span action="Trash.jsp" class=" text-muted small"  onclick="document.getElementById('div19').style.display = 'block';"  style="margin-left:40%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div20').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div1" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div1').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name" name="subject" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                <div id="div19" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div19').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name" name="subjectand" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                <div id="div20" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div20').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name" name="subjector" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>

                                <input type="submit" style="position: absolute; left: -9999px"/>
                                
                                </form>
                                <form class="list-group-item" method="get" onsubmit="action='Trash.jsp'">
                                  <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-clipboard fa-fw "></i> <span onclick="document.getElementById('div21').style.display = 'block';setValue('Content')"  style="margin-left:1%">Content </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div22').style.display = 'block';"  style="margin-left:40%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div23').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div21" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div21').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name1" name="content" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                <div id="div22" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div22').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name1" name="contentand" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                <div id="div23" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div23').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name1" name="contentor" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                                <form class="list-group-item" method="get" onsubmit="action='Trash.jsp'">
                                  <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-paperclip fa-fw "></i> <span onclick="document.getElementById('div24').style.display = 'block';"  style="margin-left:1%">Attachments </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div25').style.display = 'block';"  style="margin-left:28%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div26').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div24" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div24').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name2" name="attachment" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                 <div id="div25" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div25').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name2" name="attachmentand" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                  <div id="div26" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div26').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name2" name="attachmentor" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                    <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                               <form class="list-group-item" method="get" onsubmit="action='Trash.jsp'">
                                <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-hand-o-right fa-fw "></i> <span onclick="document.getElementById('div27').style.display = 'block';"  style="margin-left:1%">TO </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div28').style.display = 'block';"  style="margin-left:50%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div29').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                
                                <div id="div27" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div27').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name3" name="to" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                <div id="div28" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div28').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name" name="toand" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                 <div id="div29" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div29').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name" name="toor" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div> 
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                                <form class="list-group-item" method="get" onsubmit="action='Trash.jsp'">
                                  <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-hand-o-left fa-fw "></i> <span onclick="document.getElementById('div30').style.display = 'block';"  style="margin-left:1%">FROM </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div31').style.display = 'block';"  style="margin-left:42%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div32').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                <div id="div30" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div30').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name" name="from" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                <div id="div31" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div31').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name4" name="fromand" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                <div id="div32" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div32').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name" name="fromor" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                                 <form class="list-group-item" method="get" onsubmit="action='Trash.jsp'">
                                  <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-mail-forward fa-fw "></i> <span onclick="document.getElementById('div33').style.display = 'block';"  style="margin-left:1%">CC </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div34').style.display = 'block';"  style="margin-left:50%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div35').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                <div id="div33" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div33').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name" name="cc" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                <div id="div34" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div34').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name" name="ccand" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                <div id="div35" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div35').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name5" name="ccor" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                                <form class="list-group-item" method="get" onsubmit="action='Trash.jsp'">
                                  <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-mail-reply-all fa-fw "></i> <span onclick="document.getElementById('div36').style.display = 'block';"  style="margin-left:1%">BCC </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div37').style.display = 'block';"  style="margin-left:46%"><em> And <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div38').style.display = 'block';" style="margin-left:3%"><em>OR <i class="fa fa-angle-down"></i></em>
                                </span>
                                <div id="div36" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div36').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name" name="bcc" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                <div id="div37" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div37').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name" name="bccand" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                <div id="div38" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div38').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name6" name="bccor" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                               <form class="list-group-item" method="get" onsubmit="action='Trash.jsp'">
                                <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-calendar fa-fw "></i> <span onclick="document.getElementById('div39').style.display = 'block';"  style="margin-left:1%">Date </span>	
                                <span class=" text-muted small"  onclick="document.getElementById('div40').style.display = 'block';"  style="margin-left:36%"><em> After <i class="fa  fa-angle-down "></i></em>
                                </span>
                              
                                 <span class=" text-muted small"  onclick="document.getElementById('div41').style.display = 'block';" style="margin-left:3%"><em>Before <i class="fa fa-angle-down"></i></em>
                                </span>
 <div   class="input-group date" data-date="2014-02-2" data-date-format="yyyy-mm-dd"  id="div39" style="display:none;margin-left:10%;margin-top:2%;">
      <span class="input-group-addon" style="width:20px;height:34px;"><i class="glyphicon glyphicon-calendar" ></i></span><input class="form-control" type="text"  placeholder="2012-02-12"  id="name7" name="date" style="width:60%;margin-left:17.5%;margin-top:-14.7%;" ></div>
                  <script type="text/javascript">
               $('#div39').datepicker();
             </script>
                                 <div   class="input-group date" data-date="2012-02-12" data-date-format="yyyy-mm-dd"  id="div40" style="display:none;margin-left:10%;margin-top:2%;">
      <span class="input-group-addon" style="width:20px;height:34px;"><i class="glyphicon glyphicon-calendar" ></i></span><input class="form-control" type="text"  name="dateand" placeholder="2012-02-12"  id="name8" style="width:60%;margin-left:17.5%;margin-top:-14.7%;" ></div>
                  <script type="text/javascript">
               $('#div40').datepicker();
             </script>
              <div   class="input-group date" data-date="2012-02-12" data-date-format="yyyy-mm-dd"  id="div41" style="display:none;margin-left:10%;margin-top:2%;">
      <span class="input-group-addon" style="width:20px;height:34px;"><i class="glyphicon glyphicon-calendar" ></i></span><input class="form-control" type="text"  name="dateor" placeholder="2012-02-12"  id="name9" style="width:60%;margin-left:17.5%;margin-top:-14.7%;" ></div>
                  <script type="text/javascript">
               $('#div41').datepicker();
             </script>                   <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                                <form class="list-group-item" method="get" onsubmit="action='Trash.jsp'">
                                  <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-file-text fa-fw "></i> <span onclick="document.getElementById('div42').style.display = 'block';"  style="margin-left:1%">In Reply To </span>	
                                
                                <div id="div42" style="display:none;margin-left:10%;margin-top:2%;" onmouseout="document.getElementById('div42').style.display = 'none';"><input class="textbox" type="text" placeholder="Enter Value" id="name" name="reply" style="width:100%" onmouseout="if(this.value) {this.value=''}"></div>
                                
                                <input type="submit" style="position: absolute; left: -9999px"/>
                                </form>
                               <form class="list-group-item" method="get"  action="Trash.jsp">
                                <input type="hidden" name="item" value="<%=0%>">  
    							<i class="fa fa-check fa-fw "></i> <span style="margin-left:1%">Has Attachments</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="checkbox" onChange="this.form.submit()" name="hasattachment" value="," >
                                <input type="submit"   style="position: absolute; left: -9999px"/>
                                </form>
                            </div>
                            <!-- /.list-group -->
                            <a href="Trash.jsp?item=0&sub=<%=querysend%>" class="btn btn-default btn-block">Use this Query!</a>

                        </div>
                        <!-- /.panel-body -->
                    </div>
              <!--NOTIFICATION ENDS-->
         	
   <div  class="table-responsive" style="margin-top:-530px;margin-left:-900px;font-size:15px;width:900px;background-color: #f5f5f5">
           
            <table class="table table-striped">
       
             <%@ page import="check.test4query"  %>
            <% test4query demo = new test4query();
            test4query dem = new test4query();
            test4query de = new test4query();
            String[] id =new String[30];
            String[] dat =new String[30];
            String[] nam =new String[30];
            String[] mailid =new String[30];
            int i;
            if(pos!=1)
           demo.mai("SELECT ?x WHERE { ?y <FOLDERNAME:> '[Gmail]/Trash' . ?y <SUB:> ?x} LIMIT 30 OFFSET"+value);
            else
            	demo.mai(querysub+" OFFSET "+value);
           
            for(i=0;i<30;i++)
           {   id[i]=test4query.arr[i];
           		id[i] = id[i].substring(0, Math.min(id[i].length(), 100));
           }
           if(pos!=1)
          dem.mai("SELECT ?x WHERE { ?y <FOLDERNAME:> '[Gmail]/Trash' . ?y <DATE:> ?x} LIMIT 30 OFFSET"+value);
           else
           	demo.mai(querydate+" OFFSET "+value);
          
           for(i=0;i<30;i++)
           {   dat[i]=test4query.arr[i];
           		dat[i] = dat[i].substring(0, Math.min(dat[i].length(), 19));
           }
           if(pos!=1)
           de.mai("SELECT ?x WHERE { ?y <FOLDERNAME:> '[Gmail]/Trash' . ?y <SENDERNAME:> ?x} LIMIT 30 OFFSET"+value);
           else
           	demo.mai(querysendername+" OFFSET "+value);
           for(i=0;i<30;i++)
           {   nam[i]=test4query.arr[i];
           		nam[i] = nam[i].substring(0, Math.min(nam[i].length(), 16));
           }
           if(pos!=1)
           demo.mai("SELECT ?x WHERE { ?y <FOLDERNAME:> '[Gmail]/Trash' . ?y <MESSAGEID:> ?x} LIMIT 30 OFFSET"+value);
           else
           	demo.mai(querymessageid+" OFFSET "+value);
           for(i=0;i<30;i++)
           {   mailid[i]=test4query.arr[i];
           		//mailid[i] = mailid[i].substring(0, Math.min(id[i].length(), 100));
           }
            for(i=0;i<30;i++)
            { //id[i]=test4query.arr[i];
            	if(!id[i].equals("hi"))
            	out.println("<tr height='5'><td width='120'style='font-size:15px'>"+nam[i]+"</td><td width='400'>"+"<a href='final.jsp?itemId="+mailid[i]+"'class='button grow' style=' text-decoration: none; color:black;font-size:15px;'>"+"&nbsp&nbsp&nbsp&nbsp"+id[i]+"<hr style='border-color:#E6E6E6;padding:0px;margin:0px'>"+"</a>"+"</td><td width='100' style='font-size:12px'>"+""+dat[i]+"</td>"+"</tr>");
            	else
            	break;	
            }	
            %>
            
            </table>
          </div>
         
       
      </div>
      
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