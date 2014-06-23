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
import java.lang.*;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
public class Laj {

  private static void printLines(String name, InputStream ins) throws Exception {
    String line = null;
    BufferedReader in = new BufferedReader(
        new InputStreamReader(ins));
    while ((line = in.readLine()) != null) {
        System.out.println(name + " " + line);
    }
  }

  private static void runProcess(String command) throws Exception {
    Process pro = Runtime.getRuntime().exec(command);
    printLines(command + " stdout:", pro.getInputStream());
    printLines(command + " stderr:", pro.getErrorStream());
    pro.waitFor();
    System.out.println(command + " exitValue() " + pro.exitValue());
  }

  public static void mai(String[] args) {
	  String[] credentials=new String[4];int k=0;
      for (String s: args) {
          System.out.println(s);
        credentials[k]=s;k++;
	if(k==4)
	break;
      }
    try {
      runProcess("javac test2.java");
      runProcess("java test2 "+credentials[0]+" "+credentials[1]+" "+credentials[2]+" "+credentials[3]+" ");
      
    } catch (Exception e) {
      e.printStackTrace();
    }System.out.println("hI");
  }
}