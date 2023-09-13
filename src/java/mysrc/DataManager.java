/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mysrc;

import java.security.Security;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.NoSuchProviderException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



/**
 *
 * @author AI-LAPTOP
 */
public class DataManager {
   public static String setData(String query)
   {
       String rows="";
       try{
           Class.forName("com.mysql.jdbc.Driver").newInstance();
           Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/helpkart", "root", "");
           Statement s=c.createStatement();
           rows=""+s.executeUpdate(query);
           
           
       }catch(Exception e)
       {
           rows=e.getMessage();
       }
       return rows;
   }
    public static ResultSet getData(String query)
   {
       ResultSet rs=null;
       try{
           Class.forName("com.mysql.jdbc.Driver").newInstance();
           Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/helpkart", "root", "");
           Statement s=c.createStatement();
           rs=s.executeQuery(query);
           
           
       }catch(Exception e)
       {
         
       }
       return rs;
   }
    
    public void sendMail(String to, String subject, String text) throws NoSuchProviderException, AddressException {
        try {
            Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
            Properties props = new Properties();
            props.setProperty("mail.transport.protocol", "smtp");
            props.setProperty("mail.host", "smtp.gmail.com");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "465");
            props.put("mail.debug", "true");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.socketFactory.fallback", "false");
            Session session = Session.getDefaultInstance(props, new GJMailAuthenticator());
            session.setDebug(true);
            Transport transport = session.getTransport();
            InternetAddress addressFrom = new InternetAddress("sp.standardplastics@gmail.com");
            MimeMessage message = new MimeMessage(session);
            message.setSender(addressFrom);
            message.setSubject(subject);
            message.setContent(text, "text/html");
            InternetAddress addressTo = new InternetAddress(to);
            message.setRecipient(Message.RecipientType.TO, addressTo);
            transport.connect();
            Transport.send(message);
            transport.close();
            System.out.println("DONE");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    class GJMailAuthenticator extends javax.mail.Authenticator {
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication("sp.standardplastics@gmail.com", "standardplastics");
        }
    }
}
