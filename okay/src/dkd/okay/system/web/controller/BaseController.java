package dkd.okay.system.web.controller;

import java.security.MessageDigest;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * BaseController
 * @author SY
 * 
 */

@Controller
public class BaseController {
	
	public SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
	
	/**
     * 异常处理
     * @param ex
     * @param request
     * @Description:
     */
	
	@ExceptionHandler(Exception.class)
	public void handleException(Exception ex,HttpServletRequest request,HttpServletResponse response){
		try {
			StringBuffer sb = new StringBuffer();
		    sb.append("<script language='javascript'>history.go(-1);alert('");
		    sb.append("系统异常，请联系管理员");
			sb.append("！');</script>");
			response.setContentType("text/html; charset=utf-8");  
	        response.getWriter().println(sb.toString());
	        response.getWriter().flush();
	        ex.printStackTrace();
	    } catch (Exception e) {
	    	System.out.println(e.toString());
	        e.printStackTrace();
	    }
	}
	
	public final String MD5(String s) {  
        char hexDigits[] = { '0', '1', '2', '3', '4',  
                             '5', '6', '7', '8', '9',  
                             'a', 'b', 'c', 'd', 'e', 'f' };  
        try {  
            byte[] btInput = s.getBytes();  
            //获得MD5摘要算法的 MessageDigest 对象  
            MessageDigest mdInst = MessageDigest.getInstance("MD5");  
            //使用指定的字节更新摘要  
            mdInst.update(btInput);  
            //获得密文  
            byte[] md = mdInst.digest();  
            //把密文转换成十六进制的字符串形式  
            int j = md.length;  
            char str[] = new char[j * 2];  
            int k = 0;  
            for (int i = 0; i < j; i++) {  
                byte byte0 = md[i];  
                str[k++] = hexDigits[byte0 >>> 4 & 0xf];  
                str[k++] = hexDigits[byte0 & 0xf];  
            }  
            return new String(str);  
        }  
        catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }  
    }  
}