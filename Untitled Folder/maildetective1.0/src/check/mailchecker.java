/*  The MIT License (MIT)

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
THE SOFTWARE. 

 * 
 */

package check;
import java.util.Properties;

import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.*;

public class mailchecker {
public static int fla=0;
public static int mai(String args[]) {
Properties props = System.getProperties();
props.setProperty("mail.store.protocol", "imaps");
try {   //System.out.println("hi");
	String[] credentials=new String[2];int k=0;
    for (String s: args) {
        System.out.println(s+"HI");
      credentials[k]=s;k++;
if(k==2)
break;
    }
Session session = Session.getDefaultInstance(props, null);
Store store = session.getStore("imaps");

store.connect("imap.gmail.com", credentials[0], credentials[1]);
System.out.println(store);
fla=1;
return fla;
//System.exit(0);
/*
Folder inbox = store.getFolder("Inbox");
inbox.open(Folder.READ_ONLY);
Message messages[] = inbox.getMessages();
for(Message message:messages) {
System.out.println(message);
}*/

        } catch (NoSuchProviderException e) {
            //e.printStackTrace();
            //System.out.println("hi");
        	fla=0;
        	return fla;
        	
            //System.exit(1);
        } catch (MessagingException e) {
            //e.printStackTrace();
            System.out.println("hi");
            fla=0;
            return fla;
            //System.exit(2);
        }
        

    }

}