package bai2;

import java.io.IOException;
import java.util.Properties;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.AddressException;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/b2/sendemail")
public class SendEmailServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException{
	    // dữ liệu truyền từ Front end, từ Email.jsp
		String to = req.getParameter("to");
		String cc= req.getParameter("cc");
		String bcc= req.getParameter("bcc");
		String subject = req.getParameter("subject");
		String body= req.getParameter("body");
		
		// tên email và mật khẩu của người gủi
		final String from = "sangdvpy00305@gmail.com";
	    final String password = "jvto ubse zkkv ibed";

	    
	    // Thông số kết nói Smtp Server
	    Properties props = new Properties();
	    props.setProperty("mail.smtp.auth", "true");
	    props.setProperty("mail.smtp.starttls.enable", "true");
	    props.setProperty("mail.smtp.host", "smtp.gmail.com");
	    props.setProperty("mail.smtp.port", "587");
        
        // Kết nối Smtp Server
        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password);
            }
        });
        
        // Tạo message
        try {
        	Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
		    message.setSubject(subject);
		    message.setText(body);
		    Transport.send(message);
		    resp.getWriter().write("Email sent successfully!"); 
		} 
        catch (MessagingException e) {
			//e.printStackTrace();
			resp.getWriter().write("Error sending email: " + e.getMessage());
		}
    
	}

}