package mail;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;
import web.Employee;
import web.SysProps;
import web.User;
import web.UserMapper;

@Slf4j
@Getter
@Setter
@ToString
public class SendEmail {
	
	private String from_email;
	private String to_email;
	private String subject;
	private String message;
	
	public SendEmail() {}
	
	public SendEmail(String from_email, String to_email, String subject, String message) throws Exception {
		this.from_email = from_email;
		this.to_email = to_email;
		this.subject = subject;
		this.message = message;
	}
	
	public String send() throws Exception {
		try {
			System.out.println("Sending email now ...");

			// Recipient's email ID needs to be mentioned.
			String to = to_email;

			// Sender's email ID needs to be mentioned
			String from = from_email;
			
			//SysProps sysProps = new SysProps();
			
			User user = getUser(from_email);
			String username = user.getName();// change accordingly
			String password = user.getPasswd();// change accordingly
			
			// Assuming you are sending email through relay.jangosmtp.net
			String host = "smtp.gmail.com";

			Properties props = new Properties();
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.port", "587");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");

			// Get the Session object.
			Session session = Session.getInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username, password);
				}
			});

			// Create a default MimeMessage object.
			Message mimeMessage = new MimeMessage(session);
			
			// Set From: header field of the header.
			mimeMessage.setFrom(new InternetAddress(from));
			// Set To: header field of the header.
			mimeMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			// Set Subject: header field
			mimeMessage.setSubject(subject);
			// Now set the actual message
			String text = message;
			mimeMessage.setText(text);

			// Send message
			Transport.send(mimeMessage);

			System.out.println("Sent message successfully.");
			return "Send Message Success!!";
		}catch (Exception e) {
			e.printStackTrace();
			this.log.debug(e.toString());
			return "Send Message Fail!!";
		}
		
	}


	public User getUser(String name) throws IOException {
		InputStream inputStream = Resources.getResourceAsStream( "mybatis-config.xml" );
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);		
		
		SqlSession session = sqlSessionFactory.openSession();
		
		UserMapper mapper = session.getMapper(UserMapper.class);
		
		User user ;
		user = new User(); 
		user.setName( "name");
		user = mapper.selectOne_Name(name);
		return user;
	}
	




	
}