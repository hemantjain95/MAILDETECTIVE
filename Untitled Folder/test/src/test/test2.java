/*Program to download the mails from mail servers and then to store
  them in tdb store using rdf model*/
//import all the classes needed  



package test;
import java.io.*;
import java.util.*;
import javax.mail.*;
import javax.mail.Flags.Flag;
import javax.mail.internet.*;
import com.sun.mail.imap.IMAPFolder;
import com.sun.mail.imap.IMAPMessage;
import static com.hp.hpl.jena.query.ReadWrite.READ ;
import static com.hp.hpl.jena.query.ReadWrite.WRITE ;
import com.hp.hpl.jena.query.ReadWrite ;
import com.hp.hpl.jena.query.Dataset ;
import com.hp.hpl.jena.query.Query ;
import com.hp.hpl.jena.query.QueryExecution ;
import com.hp.hpl.jena.query.QueryExecutionFactory ;
import com.hp.hpl.jena.query.QueryFactory ;
import com.hp.hpl.jena.query.QuerySolution ;
import com.hp.hpl.jena.query.ResultSet ;
import com.hp.hpl.jena.tdb.TDBFactory ;
import test.email.*; // import this to add properties as entities of email
import com.hp.hpl.jena.rdf.model.Model;
import com.hp.hpl.jena.rdf.model.*;
import com.hp.hpl.jena.vocabulary.*;



public class Test3 {
//method to get contents of multipart email
  private static String getText(Part p) throws MessagingException, IOException {
       

        if (p.isMimeType("multipart/alternative")) {
            // prefer html text over plain text
            Multipart mp = (Multipart)p.getContent();
            String text = null;
            for (int i = 0; i < mp.getCount(); i++) {
                Part bp = mp.getBodyPart(i);
                if (bp.isMimeType("text/plain")) {
                    if (text == null)
                        text = getText(bp);
                    continue;
                } else if (bp.isMimeType("text/html")) {
                    String s = getText(bp);
                    if (s != null)
                        return s;
                } else {
                    return getText(bp);
                }
            }
            return text;
        } else if (p.isMimeType("multipart/*")) {
            Multipart mp = (Multipart)p.getContent();
            for (int i = 0; i < mp.getCount(); i++) {
                String s = getText(mp.getBodyPart(i));
                if (s != null)
                    return s;
            }
        }
        else
        { return p.getContent().toString();}  
        return null; 
} 



    public  void retur() throws MessagingException, IOException {
      //  String[] credentials=new String[3];int k=0;
       // for (String s: arg) {
         //   System.out.println(s);
         // credentials[k]=s;k++;
	//if(k==3)
	//break;
      //  }
        IMAPFolder folder = null;
        Store store = null;
        String subjec = "nosubject";
        Flag flag = null;
        String dat="x",encod="x",senderaddr="x",receiveraddr="x",cont="x";
        //Directory where the tdb files will be stored
        File EMAILADDRESS = new File("new folder");

  // if the directory does not exist, create it
      if (!EMAILADDRESS.exists()) {
    System.out.println("creating directory: " + EMAILADDRESS);
    boolean result = EMAILADDRESS.mkdir();  

     if(result) {    
       System.out.println("DIR created");  
     }
  }
         String directory = "EMAILADDRESS" ;
         //create the dataset for the tdb store
        Dataset ds = TDBFactory.createDataset(directory) ;
        //create default rdf model
        Model model = ds.getDefaultModel() ;
        //write to the tdb dataset
        ds.begin(ReadWrite.WRITE);
        try 
        { //connecting to the server to download the emails
          Properties props = System.getProperties();
          props.setProperty("mail.store.protocol", "imaps");

          Session session = Session.getDefaultInstance(props, null);

          store = session.getStore("imaps");
          store.connect("imap.gmail.com","hjcooljohny75@gmail.com", "ferry@786");

          //folder = (IMAPFolder) store.getFolder("[Gmail]/Spam"); // This doesn't work for other email account
          //to select the paticular types of mails
          String foldername="inbox";
          folder = (IMAPFolder) store.getFolder(foldername);// This works for both email account
           /* Others GMail folders :
       * [Gmail]/All Mail   This folder contains all of your Gmail messages.
       * [Gmail]/Drafts     Your drafts.
       * [Gmail]/Sent Mail  Messages you sent to other people.
       * [Gmail]/Spam       Messages marked as spam.
       * [Gmail]/Starred    Starred messages.
       * [Gmail]/Trash      Messages deleted from Gmail.
       */
           UIDFolder uf = (UIDFolder)folder;


          if(!folder.isOpen())
          folder.open(Folder.READ_WRITE);
          Message[] messages = folder.getMessages();
          System.out.println("No of Messages : " + folder.getMessageCount());
          System.out.println("No of Unread Messages : " + folder.getUnreadMessageCount());
          //System.out.println(messages.length);
          //Displaying the info. of the messages
          
           for (int i=messages.length-1; i > messages.length-1000;i--) 
          {
            //System.out.println(i);
            subjec="nosubject" ;dat="x";encod="x";senderaddr="x";receiveraddr="x";cont="x";
            MimeMessage msg = (MimeMessage) messages[i];
             IMAPMessage msg2 = (IMAPMessage) messages[i];
            //creating rdf model of the message
            /*typecating of these email entities to strings so
             that they can be placed as arguments in addProperty
              function*/
            //checking for null values to prevent errors
              System.out.println("hi");
              String bcc="",cc="";
              if(msg.getRecipients(Message.RecipientType.CC)!=null)
              {   int j=0;
                  //System.out.println(j);
                  while(j < msg.getRecipients(Message.RecipientType.CC).length)
                 {cc =cc.concat(msg.getRecipients(Message.RecipientType.CC)[j].toString());
                 cc =cc.concat(",");
                 j++;
                 //System.out.println(j);
                  }  

              }else
              { cc="novalue";
              }
              //System.out.println(cc);
               if(msg.getRecipients(Message.RecipientType.BCC)!=null)
              {   int j=0;
                  //System.out.println(j);
                  while(j < msg.getRecipients(Message.RecipientType.BCC).length)
                 {bcc =bcc.concat(msg.getRecipients(Message.RecipientType.BCC)[j].toString());
                 bcc =bcc.concat(",");
                 j++;
                 //System.out.println(j);
                 }
              }else
              { bcc="novalue";
              }
              //System.out.println(bcc);
              int msgsize=msg.getSize();
               String msize=String.valueOf(msgsize); 
                //System.out.println(msgsize  );
               String replyto = msg2.getInReplyTo();
              //System.out.println(replyto);
                 String replyname;
		if(replyto==null)
              replyto="no value";
            if(replyto.indexOf("<")!=-1)
            {int z=replyto.indexOf("<");
              String[] parts = replyto.split("<");
              replyname=parts[0];
              String[] part = parts[1].split(">");
              replyto=part[0];

            }
            else 
             {replyname="unknown";
             } 
             System.out.println(replyname);
             System.out.println(replyto);
              if(replyto==null)
                replyto="no reply";
              String filename="";
              String contentType = msg.getContentType();
              //for attachement name
              int no=0;
              if (contentType.contains("multipart"))
              {
              // this message may contain attachment
                Multipart multiPart = (Multipart) msg.getContent();
                for (int l = 0; l < multiPart.getCount(); l++) 
                {
                  MimeBodyPart part = (MimeBodyPart) multiPart.getBodyPart(l);
                  if (Part.ATTACHMENT.equalsIgnoreCase(part.getDisposition())) 
                  { no++;
                    filename=filename.concat(part.getFileName());
                    filename=filename.concat(",");
                  }
                  }if(filename==""||filename==null)
                  {
                    filename="no attachment";
                  }
                }
              else
              {
                  filename="no attachment";
              } String nos=String.valueOf(no);  
              //System.out.println(filename);
            long ui = uf.getUID(msg);
            String uid=String.valueOf(ui);  
            //Attachment att = new Attachment( msg );
            //String filename = att.getFilename();
              //  System.out.println(filename);
            cont=getText(msg);
            if(cont==null)
              cont="no value";
            //System.out.println(cont);
            senderaddr=msg.getFrom()[0].toString();
            if(senderaddr==null)
              senderaddr="no value";
             String sendername;
            if(senderaddr.indexOf("<")!=-1)
            {int z=senderaddr.indexOf("<");
              String[] parts = senderaddr.split("<");
              sendername=parts[0];
              String[] part = parts[1].split(">");
              senderaddr=part[0];

            }
            else 
             {sendername="unknown";
             } 
             System.out.println(sendername);
             System.out.println(senderaddr);
            //System.out.println(senderaddr);
            //System.out.println(msg.getAllRecipients()[0].toString());
            if(msg.getAllRecipients()==null||msg.getAllRecipients()[0].toString()=="")
              receiveraddr="no value";
            else
              receiveraddr=msg.getAllRecipients()[0].toString();
            System.out.println(receiveraddr);
            String receivername;
            if(receiveraddr.indexOf("<")!=-1)
            {int z=receiveraddr.indexOf("<");
              String[] parts = receiveraddr.split("<");
              receivername=parts[0];
              String[] part = parts[1].split(">");
              receiveraddr=part[0];

            }
            else 
             {receivername="unknown";
             } 
             System.out.println(receiveraddr);
             System.out.println(receivername);
            dat=msg.getReceivedDate().toString();
            if(dat==null)
              dat="no value";
            System.out.println(dat);  
            encod =msg.getEncoding();
            if(encod==null)
              encod="8bit";
            if(msg.getSubject()==null||msg.getSubject()=="")
              subjec="no value";
            else
              subjec=msg.getSubject();
            //System.out.println(subjec);
            Resource mail= model.createResource(msg.getMessageID())
            .addProperty(EMAILRDF.SUBJECT, subjec)  
            .addProperty(EMAILRDF.TO,receiveraddr)
            .addProperty(EMAILRDF.FROM,senderaddr)
            .addProperty(EMAILRDF.REC_NAME,receivername)
            .addProperty(EMAILRDF.SEND_NAME,sendername)
            .addProperty(EMAILRDF.ENCODING,encod)
            .addProperty(EMAILRDF.CONTENT,cont)
            .addProperty(EMAILRDF.DATE,dat)
            .addProperty(EMAILRDF.FOLDER_NAME,foldername)
            .addProperty(EMAILRDF.UID,uid)
            .addProperty(EMAILRDF.IN_REPLYTO,replyto)
            .addProperty(EMAILRDF.IN_REPLYTONAME,replyname)
            .addProperty(EMAILRDF.CC,cc)
            .addProperty(EMAILRDF.BCC,bcc)
            .addProperty(EMAILRDF.MAIL_SIZE,msize)
            .addProperty(EMAILRDF.ATTACHEMENT_NAME,filename)
            .addProperty(EMAILRDF.ATTACHEMENT_NO,nos)
            .addProperty(EMAILRDF.CONTENT_TYPE,msg.getContentType());
         }                     
        // list the statements in the graph
        StmtIterator iter = model.listStatements();
        int j=0;
        // print out the predicate, subject and object of each statement
        while (iter.hasNext()) {
           System.out.println("*****************************************************************************");
            System.out.println("MESSAGE " + (j + 1) + ":");
            j=j+1;
            Statement stmt      = iter.nextStatement();         // get next statement
            Resource  subject   = stmt.getSubject();   // get the subject
            Property  predicate = stmt.getPredicate(); // get the predicate
            RDFNode   object    = stmt.getObject();    // get the object
            
            //System.out.print(subject.toString());
            System.out.print(" "+ predicate.toString() + " ");
            if (object instanceof Resource) {
                System.out.print(object.toString());
            } else {
                // object is a literal
                System.out.print(" \"" + object.toString() + "\"");
            }
            System.out.println(" .");
        }
            //System.out.println(msg.getMessageNumber());
            //Object String;
            //System.out.println(folder.getUID(msg)

            //subject = msg.getSubject();

            //System.out.println("Subject: " + subject);
            //System.out.println("From: " + msg.getFrom()[0]);
            //System.out.println("To: "+msg.getAllRecipients()[0]);
            //System.out.println("Date: "+msg.getReceivedDate());
            //System.out.println("Size: "+msg.getSize());
            //System.out.println("Id: "+msg.getMessageID());
            //System.out.println(msg.getFlags());
            //System.out.println("Body: \n"+ msg.getContent());
            //System.out.println(msg.getContentType());

          }
        
        finally 
        {  //closing the connection
          if (folder != null && folder.isOpen()) { folder.close(true); }
          if (store != null) { store.close(); }
        }


     //closing the dataset
    ds.commit();
    ds.end();
    }
}
