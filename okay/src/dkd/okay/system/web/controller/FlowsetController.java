package dkd.okay.system.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dkd.okay.system.bo.Flowset;
import dkd.okay.system.bo.FlowsetDetail;
import dkd.okay.system.bo.ProcessRecord;
import dkd.okay.system.bo.Role;
import dkd.okay.system.bo.User;
import dkd.okay.system.service.FlowsetServiceImpl;
import dkd.okay.system.service.RoleServiceImpl;
import dkd.okay.system.util.message.Message;
import dkd.okay.system.util.tree.TreeUtil;
import dkd.okay.system.web.formmodel.FlowsetDetailForm;
import dkd.okay.system.web.formmodel.FlowsetForm;

/**
 * 流程配置Controller
 * @author SY
 * 
 */

@Controller
@RequestMapping(value="/flowset")
public class FlowsetController extends BaseController  {
	
	@Resource(name="FlowsetService")
	private FlowsetServiceImpl flowsetServiceImpl;
	
	@Resource(name="RoleService")
	private RoleServiceImpl roleServiceImpl;
	/**
	 * 流程配置主页
	 * @param companyId 组织机构id
	 * @return jsp
	 */
	
	@RequestMapping("/flowset.do")  
	public ModelAndView flowset(String recordId,ModelMap model){
		model.addAttribute("recordId", recordId);
		return new ModelAndView("system/flowset/flowset",model);
	}
	
	/**
	 * 流程配置树
	 * @return
	 */
	
	@RequestMapping("/tree.do")  
	public String tree(){
		return "system/flowset/tree";
	}
	
	/**
	 * 流程配置树
	 * @return 
	 */
	
	@RequestMapping("/flowsetTree.do")  
	public void flowsetTree(HttpServletResponse response) throws Exception{
		List<Flowset> flowsets = flowsetServiceImpl.selectAll();
		TreeUtil<Flowset> treeUtil = new TreeUtil<Flowset>();
		List<Flowset> flowsetTree = treeUtil.makeTree(flowsets,null);
		PrintWriter out = response.getWriter();
		JSONArray json = JSONArray.fromObject(flowsetTree);
		out.println(json.toString());	
	}
	
	/**
	 * 查询审批流程列表
	 * @param record_id
	 * @param model
	 * @return
	 */
	
	@RequestMapping("/query.do")  
	public ModelAndView query(String message,String record_id,ModelMap model){
		model.addAttribute("flowsetDetails", flowsetServiceImpl.selectFlowsetDetailByFK(record_id));
		model.addAttribute("record_id", record_id);
		model.addAttribute("message", message);
		return new ModelAndView("system/flowset/query",model);   
	}
	
	/**
	 * 审批类型信息页
	 * @param record_id
	 * @param model
	 * @return
	 */
	
	@RequestMapping("/flowsetEdit.do")  
	public ModelAndView flowsetEdit(String record_id,ModelMap model){
		FlowsetForm flowsetForm = new FlowsetForm();
		if(StringUtils.isNotEmpty(record_id)){	
			BeanUtils.copyProperties(flowsetServiceImpl.selectFlowsetById(record_id),flowsetForm);
		}
		model.addAttribute("flowsetForm", flowsetForm);
		return new ModelAndView("system/flowset/edit_type",model);
	}
	
	/**
	 * 审批流程信息页
	 * @param record_id 审批流程id
	 * @param fk_record_id 是审批类型的id
	 * @param model
	 * @return
	 */
	
	@RequestMapping("/flowsetDetailEdit.do")  
	public ModelAndView flowsetDetailEdit(String record_id,String fk_record_id,ModelMap model){
		FlowsetDetailForm flowsetDetailForm = new FlowsetDetailForm();
		flowsetDetailForm.setFk_record_id(fk_record_id);
		if(StringUtils.isNotEmpty(record_id)){	
			BeanUtils.copyProperties(flowsetServiceImpl.selectFlowsetDetailById(record_id),flowsetDetailForm);
		}
		List<Role> roleList = roleServiceImpl.selectAll();
		model.addAttribute("roleList", roleList);
		model.addAttribute("flowsetDetailForm", flowsetDetailForm);
		return new ModelAndView("system/flowset/edit",model);
	}
	
	/**
	 * 检查审批类型代码
	 * @param record_code
	 * @param response
	 * @throws IOException
	 */
	
	@Secured({ "ROLE_USER" })
	@RequestMapping("/checkFlowset.do")  
	public void checkFlowset(String record_code,HttpServletResponse response) throws IOException{
		response.reset();
		response.setContentType("text/html;charset=UTF-8");
		int count = flowsetServiceImpl.checkFlowset(record_code);
		response.getWriter().print(count>0?false:true);
	}
	
	/**
	 * 检查审批流程序号
	 * @param order_no
	 * @param fk_record_id
	 * @param response
	 * @throws IOException
	 */
	
	@Secured({ "ROLE_USER" })
	@RequestMapping("/checkFlowsetDetail.do")  
	public void checkFlowsetDetail(String order_no,String fk_record_id,HttpServletResponse response) throws IOException{
		response.reset();
		response.setContentType("text/html;charset=UTF-8");
		int count = flowsetServiceImpl.checkFlowsetDetail(order_no, fk_record_id);
		response.getWriter().print(count>0?false:true);
	}
	
	/**
	 * 编辑审批类型
	 * @param flowsetForm
	 * @param model
	 * @return
	 */
	
	@RequestMapping("/editFlowset.do")  
	public ModelAndView editFlowset(FlowsetForm flowsetForm,ModelMap model){
		Flowset flowset = new Flowset();
		BeanUtils.copyProperties(flowsetForm,flowset);
		flowsetServiceImpl.editFlowset(flowset);
		model.addAttribute("message", Message.readValue("EDITSUCCESS"));
		return new ModelAndView("system/flowset/query",model);
	}
	
	/**
	 * 编辑审批流程
	 * @param flowsetDetailForm
	 * @param model
	 * @return
	 */
	
	@RequestMapping("/editFlowsetDetail.do")  
	public ModelAndView editFlowsetDetail(FlowsetDetailForm flowsetDetailForm,ModelMap model){
		FlowsetDetail flowsetDetail = new FlowsetDetail();
		BeanUtils.copyProperties(flowsetDetailForm,flowsetDetail);
		flowsetServiceImpl.editFlowsetDetail(flowsetDetail, flowsetDetailForm.getFk_record_id());
		model.addAttribute("recordId", flowsetDetailForm.getFk_record_id());
		model.addAttribute("message", Message.readValue("EDITSUCCESS"));
		return new ModelAndView("system/flowset/query",model);
	}
	
	/**
	 *  删除审批类型
	 * @param record_id
	 * @param model
	 * @return
	 */
	
	@RequestMapping("/deleteFlowset.do")  
	public ModelAndView deleteFlowset(String record_id,ModelMap model){
		flowsetServiceImpl.deleteFlowset(record_id);
		model.addAttribute("message", Message.readValue("DELSUCCESS"));
		return new ModelAndView("system/flowset/query",model);
	}
	
	/**
	 *  删除审批流程
	 * @param record_id
	 * @param model
	 * @return
	 * @throws MessagingException 
	 */
	
	@RequestMapping("/deleteFlowsetDetail.do")  
	public ModelAndView deleteFlowsetDetail(String record_id,String fk_record_id,ModelMap model) throws MessagingException{
//		Map<String, String> files = new HashMap<String, String>();
//		files.put("a.txt", "C:/Users/SY/Desktop/新建文本文档 (2).txt");
//		files.put("b.xlsx", "C:/Users/SY/Desktop/料单格式1.xlsx");
//		files.put("c.gif", "C:/Users/SY/Desktop/1406616422_170390.gif");
//		new MailSend().sendEmail("测试", "hahahaha", "65405674@qq.com", files);
		flowsetServiceImpl.deleteFlowsetDetail(record_id,fk_record_id);
		model.addAttribute("message", Message.readValue("DELSUCCESS"));
		return new ModelAndView("system/flowset/query",model);
	}
	
	/**
	 * ajax验证审批用户
	 * @param work_no
	 * @param response
	 * @throws IOException
	 */

	@RequestMapping("/checkRole.do")  
	public void checkRole(String work_no,HttpServletResponse response) throws IOException{
		response.reset();
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().print(flowsetServiceImpl.checkRole(work_no)?true:false);
	}
	
	/**
	 * 审批弹出框
	 * @param model
	 * @return
	 * @throws IOException
	 */
	
	@RequestMapping("/check.do")  
	public ModelAndView check(String work_no, String type,ModelMap model) {
		ProcessRecord processRecord = flowsetServiceImpl.selectByWorkNo(work_no);
		model.addAttribute("work_no", work_no);
		model.addAttribute("processRecord", processRecord);
		model.addAttribute("type", type);
		return new ModelAndView("system/flowset/check",model);
	}
	
	/**
	 * 变更审批记录
	 * @param flag
	 * @param model
	 * @return
	 * @throws SecurityException 
	 * @throws NoSuchMethodException 
	 */
	
	@RequestMapping("/change.do")  
	public ModelAndView change(String flag,String work_no,String type,String CHECK_SUGGESTION,HttpServletRequest request,ModelMap model) throws NoSuchMethodException, SecurityException{
		flowsetServiceImpl.change(work_no, flag,CHECK_SUGGESTION,request);
		/*if(StringUtils.equals(type, "supplier")){
			List<ProcessRecord> processRecord =flowsetServiceImpl.selectByWorkno(work_no);
			if(StringUtils.equals(processRecord.get(processRecord.size()-1).getProcess_name(), "二级审批")&&StringUtils.equals(processRecord.get(processRecord.size()-1).getCHECK_RESULT(), "审核通过")){
				Date date=new Date();
				DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String annualAuditDate=format.format(date);
				qualifiedService.updateAnnualAuditDate(annualAuditDate,work_no);
			}
		}*/	
		model.addAttribute("message", "状态变更完成！");
		return new ModelAndView("system/flowset/check",model);
	}
	/**
	 * 验证签名密码
	 * @param sign_password
	 * @param response
	 * @throws IOException
	 */
	
	@RequestMapping("/checkPassword.do")  
	public void checkPassword(String sign_password,HttpServletResponse response) throws IOException{
		response.reset();
		response.setContentType("text/html;charset=UTF-8");
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		JSONObject json = new JSONObject();
		json.put("result", StringUtils.equals(user.getUserInfo().getSign_password(), sign_password)?true:false);
		json.put("userInfoId", user.getUserInfo().getUserInfoId());
		PrintWriter out = response.getWriter();
		out.println(json.toString());
		//response.getWriter().print(StringUtils.equals(user.getUserInfo().getSign_password(), sign_password)?true:false);
	}
	
	/**
	 * 审核记录
	 * @param work_no
	 * @param model
	 * @return
	 */
	
	@RequestMapping("/record.do")  
	public ModelAndView record(String work_no, ModelMap model) {
		model.addAttribute("records", flowsetServiceImpl.selectByWorkno(work_no));
		return new ModelAndView("system/flowset/record",model);
	}
	
}
