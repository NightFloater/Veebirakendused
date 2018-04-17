package main.webapp.javastuff;


import java.sql.*;


public class ConnectionServer implements ServerInfo {

     static Connection con=null;

     public static Connection getCon(){
         try{
             Class.forName("org.postgresql.Driver");
             con=DriverManager.getConnection(Url,username,password);

         }catch(Exception ex){
             System.out.println(ex);
         }
         return con;
     }
}
