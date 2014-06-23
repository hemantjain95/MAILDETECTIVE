	package test;
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
import com.hp.hpl.jena.query.ResultSetFormatter;
    
import com.hp.hpl.jena.rdf.model.*;
import com.hp.hpl.jena.vocabulary.*;

import java.io.IOException;
import java.util.Iterator;
import java.util.Scanner;

import com.hp.hpl.jena.sparql.sse.SSE ;
import com.hp.hpl.jena.update.* ;

import java.util.*;

import javax.mail.MessagingException;
public class Simple{
public  void retur() throws MessagingException, IOException{
String query1;
            query1="hjcooljohny75@gmail.com";
        //query1 = (String)(subjectentry.getText());
            String s="SELECT ?x WHERE { ?x <TO:> '"+query1+"'}";
          //   subjectoutput.setText(s);
            String directory = "MYDATABASES/DATA2" ;
            Dataset ds = TDBFactory.createDataset(directory) ;
            Model model = ds.getDefaultModel() ;
           ds.begin(ReadWrite.READ) ;
             QueryExecution qExec = QueryExecutionFactory.create(s, ds) ;
           ResultSet rs = qExec.execSelect() ;
           String x=rs.toString();
          String[] arr = null; int i=0;
          while (rs.hasNext()) {
              QuerySolution qs = rs.next();
              String rds;
              if(qs.get("x")!=null)
              rds = qs.get("x").toString();
              else rds="hi";
             // String em = (String)rs.getString();
              if(rds==null)
                  break;
                System.out.println(rds);
                //arr[i] = rds;
              //System.out.println(arr[i]);
             
             i++;
               
           }
             //if(rs==null)
                //subjectoutput.setText("sorry!!");
           //String s="hi";
 //return s;
      
}
}

