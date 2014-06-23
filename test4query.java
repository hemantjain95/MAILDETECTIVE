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

/*Program to read the already stored database/dataset 
and display the information of parts of the email using rdf model
*/
//import all the classes
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
    
import com.hp.hpl.jena.rdf.model.Model;

import com.hp.hpl.jena.rdf.model.*;
import com.hp.hpl.jena.vocabulary.*;
import java.util.Iterator;
import java.util.Scanner;
import com.hp.hpl.jena.sparql.sse.SSE ;

import com.hp.hpl.jena.update.* ;
import org.apache.jena.atlas.lib.StrUtils ;
import org.apache.jena.atlas.logging.LogCtl ;
import org.apache.jena.query.text.EntityDefinition ;
import org.apache.jena.query.text.TextDatasetFactory ;
import org.apache.jena.query.text.TextQuery ;
import org.apache.jena.riot.RDFDataMgr ;
import org.apache.lucene.store.Directory ;
import org.apache.lucene.store.RAMDirectory ;
import org.slf4j.Logger ;
import org.slf4j.LoggerFactory ;

import com.hp.hpl.jena.query.* ;
import com.hp.hpl.jena.rdf.model.Model ;
import com.hp.hpl.jena.sparql.util.QueryExecUtils ;
import com.hp.hpl.jena.vocabulary.RDFS ;



public class test4query extends Object {
    public static void main (String args[]) {
        String s;
        //load the dataset 
        //String query1; 
        //query1="hjcooljohny75@gmail.com";
        //query1 = (String)(subjectentry.getText());
          //  String s="SELECT ?x WHERE { ?x <TO:> '"+query1+"'}";
  
        String directory = "EMAILADDRESS" ;
        Dataset ds = TDBFactory.createDataset(directory) ;
       ds.begin(ReadWrite.READ) ;
        Model model = ds.getDefaultModel() ;
        
        Scanner in = new Scanner(System.in);
         System.out.println("Enter a string");
            
            s = in.nextLine();
             Query q =QueryFactory.create(s);
            QueryExecution qExec = QueryExecutionFactory.create(s, ds) ;
             //executeCmd(s) ;
            //updatedateAction.parseExecute(s,model);
            try{
           
            //ResultSet rs = qExec.execSelect() ;
             QueryExecUtils.executeQuery(q, qExec) ;
              } finally
              {qExec.close() ;
              ds.commit();
              ds.end();
             }
         //   try {   
              //      ResultSetFormatter.out(rs) ;
               // } finally { qExec.close() ; }

            // Another query - same view of the data.
           
    }
}









