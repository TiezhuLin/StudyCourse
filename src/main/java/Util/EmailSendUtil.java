package Util;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailSendUtil {
	//三个属性，一个email（用户邮箱），subject（文件主题），content（文件内容）
	public void sendEmail(String email,String subject,String content){
        Properties props = new Properties();
        props.setProperty("mail.smtp.auth", "true");
        props.setProperty("mail.transport.protocol", "smtp");
        props.setProperty("mail.host", "smtp.163.com");
        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("18052129319@163.com", "lly546549826");
            }
        });
        session.setDebug(true);
        Message msg = new MimeMessage(session);
        try {
        msg.setFrom(new InternetAddress("18052129319@163.com"));
        msg.setSubject(subject);
        msg.setRecipients(RecipientType.TO, InternetAddress.parse(email));
        msg.setContent(content, "text/html;charset=GBK");
        Transport.send(msg);
        } catch (MessagingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
