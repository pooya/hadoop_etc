package org.liveve.shayan;

import java.io.*;
import java.util.*;
import java.net.*;
import org.apache.hadoop.fs.*;
import org.apache.hadoop.conf.*;
import org.apache.hadoop.io.*;
import org.apache.hadoop.mapred.*;
import org.apache.hadoop.util.*;
 
public class Cat{
        public static void main (String [] args) throws Exception{
                try{
                        Path pt = new Path("hdfs://devdisco03/user/shayan/simple");
                        FileSystem fs = FileSystem.get(new Configuration());
                        BufferedReader br=new BufferedReader(new InputStreamReader(fs.open(pt)));
                        String line;
                        line=br.readLine();
                        while (line != null){
                                System.out.println(line);
                                line=br.readLine();
                        }
                }catch(Exception e){
                    System.err.println("Exception: " + e);
                }
        }
}
