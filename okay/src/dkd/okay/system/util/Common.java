package dkd.okay.system.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import dkd.okay.system.util.message.Message;

public class Common {
	public static final String ROOT_PATH = "E:\\upfile";
	/**
	 * @描述: 根据指定长度格式化数字
	 * @param number 
	 * @param len
	 * @return
	 */
	public static String formatNumber(int number, int len) {
		StringBuffer result = new StringBuffer(len);
		result.append(number);
		for (int i = 0; i < len - String.valueOf(number).length(); i++) {
			result.insert(0, "0");
		}
		return result.toString();
	}
	public static String formatNumber(String str, int len) {
		StringBuffer result = new StringBuffer(len);
		result.append(str);
		for (int i = 0; i < len - str.length(); i++) {
			result.insert(0, "0");
		}
		return result.toString();
	}
	public static String selectEnglish(String str,HttpServletRequest request){
		HttpSession session = request.getSession();
		Object obj = session.getAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
		try {
			if("en".equals(obj.toString())){
				Properties props = new Properties();
				InputStream in = Message.class.getClassLoader().getResourceAsStream("messages_en.properties");
				props.load(in);
				String value = props.getProperty (str);
				return value;
			}else{
				return str;
			}
		} catch (IOException e) {
			e.printStackTrace();
			return str;
		}
	}
}