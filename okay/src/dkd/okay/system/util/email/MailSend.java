package dkd.okay.system.util.email;

import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;

import dkd.okay.system.util.spring.SpringUtil;

/**
 * 标准邮件
 * @author sy
 * 
 */

public class MailSend {
	
	static MailSender mailSender =  (MailSender) SpringUtil.getBean("mailSender"); 
	static SimpleMailMessage simpleMailMessage =  (SimpleMailMessage) SpringUtil.getBean("mailMessage"); 
	static JavaMailSenderImpl javaMailSenderImpl = (JavaMailSenderImpl) SpringUtil.getBean("mailSender");
	
	/**
	 * 发送普通邮件方法
	 * @param subject 主题
	 * @param text 内容
	 * @param to 收件邮箱
	 */
	
	public void sendMessage(String subject,String text,String to){
		/*simpleMailMessage.setSubject(subject);
		simpleMailMessage.setText(text);
		simpleMailMessage.setTo(to);
		try{
			javaMailSenderImpl.send(simpleMailMessage);
		}catch(Exception e){
			e.printStackTrace();
		}*/
		MimeMessage mailMessage = javaMailSenderImpl.createMimeMessage();
		try {
			MimeMessageHelper messageHelper = new MimeMessageHelper(mailMessage,false,"gb2312");
			messageHelper.setFrom(simpleMailMessage.getFrom());
			messageHelper.setSubject(subject);
			text += "\r\n系统地址：http://172.16.1.7:8081/bomesc";
			text += "\r\n-------------------------------------------------------------------------------------";
			text += "\r\n此邮件由物资信息协同管理平台自动发送，请不要直接回复。\r\n感谢您的合作！";
			messageHelper.setText(text);
			messageHelper.setTo(to);
			javaMailSenderImpl.send(mailMessage);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
	public void sendSys(){
		JavaMailSenderImpl test =  (JavaMailSenderImpl) SpringUtil.getBean("mailSender");
		test.setDefaultEncoding("utf-8");
		MimeMessage mailMessage = test.createMimeMessage();
		try {
			MimeMessageHelper messageHelper = new MimeMessageHelper(mailMessage,false,"utf-8");
			messageHelper.setFrom(simpleMailMessage.getFrom());
			messageHelper.setSubject("测试");
			messageHelper.setText("天津博迈科海洋工程有限公司，合同：(TBJN0096)MV29-5003.0002.0066将于30天后到交货期限，但是还未全部完成，请尽快处理！");
			messageHelper.setTo("wangzemin-dkd@canic.com.cn");
			test.send(mailMessage);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 发送附件邮件方法
	 * @param subject主题
	 * @param text内容
	 * @param to收件邮箱
	 * @param files 附件   key是附件名称带后缀   value是文件地址
	 */
	
	public void sendEmail(String subject,String text,String to,Map<String, String> files) {
		MimeMessage mailMessage = javaMailSenderImpl.createMimeMessage();
		try {
			MimeMessageHelper messageHelper = new MimeMessageHelper(mailMessage,true,"gb2312");
			messageHelper.setFrom(simpleMailMessage.getFrom());
			messageHelper.setSubject(subject);
			messageHelper.setText(text);
			messageHelper.setTo(to);
			for(Map.Entry<String, String> entry: files.entrySet()){
				System.out.print(entry.getKey() + ":" + entry.getValue() + "\t");
				FileSystemResource file = new FileSystemResource(entry.getValue());
				messageHelper.addAttachment(entry.getKey(), file);//添加到附件
			}
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		javaMailSenderImpl.send(mailMessage);
	}
	
}