package dkd.okay.system.util.tag; 

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import dkd.okay.system.bo.Dictionary;
import dkd.okay.system.dao.DictionartDaoImpl;
import dkd.okay.system.util.spring.SpringUtil;

/**
 * 字典option标签配合select使用
 * @author sy
 *
 */

@SuppressWarnings("serial")
public class SysOptionsTag extends BodyTagSupport {  
	  
    protected String condition; 
    protected String checkValue;
    
    public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}
	
   public String getCheckValue() {
		return checkValue;
	}

	public void setCheckValue(String checkValue) {
		this.checkValue = checkValue;
	}

	DictionartDaoImpl dictionartDaoImpl = (DictionartDaoImpl) SpringUtil.getBean("dictionaryDao");
	
	@Override    
	public int doStartTag() throws JspException {    
	    return EVAL_BODY_INCLUDE;    
	}    
	@Override
    public  int doEndTag() throws JspException { 
		try {    
            StringBuffer results = new StringBuffer(""); 
            //根据传递进来的标志 也就是dicCode   查找所有dicCode的子节点
            List<Dictionary> list = dictionartDaoImpl.selectByDicCode(condition);
            results.append("<option value=\"\"  selected=\"selected\">请选择</option>");
            //拼写数据库的字典
            for(Dictionary dictionary:list){
            	if(checkValue!=null&&checkValue.equals(dictionary.getDicCode())){
            		results.append("<option selected=\"selected\" value=\""+dictionary.getDicCode()+"\">"+dictionary.getDicName()+"</option>");
            	}else{
            		results.append("<option value=\""+dictionary.getDicCode()+"\">"+dictionary.getDicName()+"</option>");
            	}
            } 
            pageContext.getOut().write(results.toString());    
        } catch (IOException ex) {    
            throw new JspTagException("错误");    
        }    
        return EVAL_PAGE;    
    }   
    
}   