/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DataBaseCon;

/**
 *
 * @author java4
 */
import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mail {

    public static boolean secretMail(String msgString, String nameString, String emailString) {
        boolean check = false;
        try {
            final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
            // Get a Properties object
            
            
            Properties props = System.getProperties();
//            props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
            props.setProperty("mail.smtp.socketFactory.fallback", "false");
            props.setProperty("mail.smtp.socketFactory.port", "465");
            props.put("mail.debug", "true");
//            props.put("mail.transport.protocol", "smtp");

              props.put("mail.smtp.host", "smtp.gmail.com");
               props.put("mail.smtp.port", "465");
                props.put("mail.smtp.ssl.enable", "true");
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable","true");
                    props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

              
//            final String username = "masstechnologiespune@gmail.com";//
//            final String password = "mass#5351";
                final String username="vaibhavwaghmode727@gmail.com";
                final String password = "addeccxjtesvovyw";
            Session session = Session.getInstance(props, new Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(username, password);
                }
            });

            // -- Create a new message --ns2.jpinfotech@gmail.com
            Message msg = new MimeMessage(session);

            // -- Set the FROM and TO fields --
            msg.setFrom(new InternetAddress(username));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailString, false));
            msg.setSubject(nameString);
            msg.setText(msgString);
            msg.setSentDate(new Date());
            Transport.send(msg);
            check = true;
            System.out.println("Mail sent.");

        } catch (MessagingException e) {
            System.out.println("Erreur d'envoi, cause: " + e);
        }
        return check;
    }
}

