package dkd.okay.system.util.tag; 

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import org.apache.commons.lang.StringUtils;

import dkd.okay.business.baseinfo.bo.Warehouse;
import dkd.okay.business.baseinfo.dao.WarehouseDaoImpl;
import dkd.okay.business.budget.bo.BudgetAccount;
import dkd.okay.business.budget.dao.BudgetAccountDao;
import dkd.okay.system.bo.Company;
import dkd.okay.system.bo.UserInfo;
import dkd.okay.system.dao.CompanyDaoImpl;
import dkd.okay.system.dao.UserInfoDaoImpl;
import dkd.okay.system.util.spring.SpringUtil;

/**
 * 业务option标签
 * @author sy
 *
 */

@SuppressWarnings("serial")
public class BusinessOptionsTag extends BodyTagSupport {  
	
    protected String function; //方法
    protected String condition;//参数
    protected String checkValue;

    protected String companyId;
    
    
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	public String getCheckValue() {
		return checkValue;
	}
	public void setCheckValue(String checkValue) {
		this.checkValue = checkValue;
	}
	public String getFunction() {
		return function;
	}
	public void setFunction(String function) {
		this.function = function;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	
	@Override    
	public int doStartTag() throws JspException {    
	    return EVAL_BODY_INCLUDE;    
	}    
	
	UserInfoDaoImpl userInfoDaoImpl = (UserInfoDaoImpl) SpringUtil.getBean("userInfoDao");
	CompanyDaoImpl companyDaoImpl =  (CompanyDaoImpl) SpringUtil.getBean("companyDao");
	WarehouseDaoImpl warehouseDaoImpl = (WarehouseDaoImpl)SpringUtil.getBean("warehouseDao");
	BudgetAccountDao budgetAccounteDao = (BudgetAccountDao)SpringUtil.getBean("budgetAccounteDao");
	
	@Override  
    public  int doEndTag() throws JspException { 
        try {    
            StringBuffer results = new StringBuffer(""); 
            if(StringUtils.isEmpty(checkValue)){
            	results.append("<option value=\"\"  selected=\"selected\">请选择</option>");  
            }else{
            	results.append("<option value=\"\"  >请选择</option>");  
            }
            
            if(function.equals("inputUserName")){
            	
            	List<UserInfo> list = userInfoDaoImpl.selectByPosition(condition == null ? null : condition.split(","));
            	
            	for(UserInfo ui:list){
            		if(checkValue!=null&&checkValue.equals(ui.getUser().getUserId())){
                		results.append("<option selected=\"selected\" value=\""+ui.getUser().getUserId()+"\">"+ui.getRealName()+"</option>"); 
                	}else{
                		results.append("<option value=\""+ui.getUser().getUserId()+"\">"+ui.getRealName()+"</option>"); 
                	}	
                } 
            } else if(function.equals("companyByMto")){
            	List<Company> list= companyDaoImpl.selectByLevel();
            	for(Company com:list){
            		if(StringUtils.isNotEmpty(checkValue) &&  StringUtils.isNotEmpty(com.getCompanyName()) &&  StringUtils.equals(checkValue, com.getCompanyName()) ){
                		results.append("<option selected=\"selected\" value=\""+com.getCompanyName()+"\">"+com.getCompanyName()+"</option>"); 
                	}else{
                		results.append("<option value=\""+com.getCompanyName()+"\">"+com.getCompanyName()+"</option>"); 
                	}	
                } 
            } else if(function.equals("company")){
            	List<Company> list= companyDaoImpl.selectByLevel();
            	for(Company com:list){
            		if(StringUtils.isNotEmpty(checkValue) &&  StringUtils.isNotEmpty(com.getCompanyId()) &&  StringUtils.equals(checkValue, com.getCompanyId()) ){
                		results.append("<option selected=\"selected\" value=\""+com.getCompanyId()+"\">"+com.getCompanyName()+"</option>"); 
                	}else{
                		results.append("<option value=\""+com.getCompanyId()+"\">"+com.getCompanyName()+"</option>"); 
                	}	
                } 
            }else if(function.equals("wareHouse")){
            	List<Warehouse> list= warehouseDaoImpl.selectAll();
            	for(Warehouse com:list){
            		if(checkValue!=null&&checkValue.equals(com.getWarehouseId())){
                		results.append("<option selected=\"selected\" value=\""+com.getWarehouseId()+"\">"+com.getWarehouseName()+"</option>"); 
                	}else{
                		results.append("<option value=\""+com.getWarehouseId()+"\">"+com.getWarehouseName()+"</option>"); 
                	}	
                } 	
            }else if(function.equals("budget")){
            	List<BudgetAccount> list= budgetAccounteDao.selectBudgetAccount();
            	for(BudgetAccount budget : list){
            		if(checkValue!=null&&checkValue.equals(budget.getBudgetAccountId())){
                		results.append("<option selected=\"selected\" value=\""+budget.getBudgetAccountId()+"\">"+budget.getName()+"</option>"); 
                	}else{
                		results.append("<option value=\""+budget.getBudgetAccountId()+"\">"+budget.getName()+"</option>"); 
                	}	
                } 	
            }
            pageContext.getOut().write(results.toString());    
        } catch (IOException ex) {    
            throw new JspTagException("错误");    
        }    
        return EVAL_PAGE;    
    }   
    
}   