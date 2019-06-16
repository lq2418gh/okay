package dkd.okay.system.web.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.view.RedirectView;

import dkd.okay.system.bo.Authority;
import dkd.okay.system.bo.User;
import dkd.okay.system.bo.UserAuthority;
import dkd.okay.system.bo.UserInfo;
import dkd.okay.system.service.AuthorityServiceImpl;
import dkd.okay.system.service.UserInfoServiceImpl;
import dkd.okay.system.util.message.Message;
import dkd.okay.system.util.tree.TreeUtil;
import dkd.okay.system.web.formmodel.UserForm;
import net.sf.json.JSONArray;

/**
 * 用户Controller
 * @author SY
 * 
 */

@Controller
@RequestMapping(value="/user")
public class UserController extends BaseController  {
	
	@Resource(name="userInfoService")
	private UserInfoServiceImpl userInfoServiceImpl;
	
	@Resource(name="authorityService")
	private AuthorityServiceImpl authorityServiceImpl;
	/**
	 * 用户主页
	 * @param companyId 组织机构id
	 * @return jsp
	 */
	
	@RequestMapping("/user.do")  
	public ModelAndView user(String companyId,String roleName,String workNo,String realName,String position){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("companyId", companyId);
		map.put("roleName", roleName);
		map.put("workNo", workNo);
		map.put("realName", realName);
		map.put("position", position);
		return new ModelAndView("system/user/user",map);
	}
	
	/**
	 * 用户树
	 * @return jsp
	 */
	
	@RequestMapping("/tree.do")  
	public String tree(){
		return "system/user/tree";
	}
	
	/**
	 * 分页查询用户信息
	 * @param message 操作提示
	 * @param companyId 组织机构id
	 * @param model
	 * @param request
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	
	//@Cacheable(value="myCache",key="#pageNow+#companyId",condition="#companyId!=null")
	@RequestMapping("/selectUserInfoByCompanyId.do")
	public ModelAndView selectUserInfoByCompanyId(String roleName,String workNo,String realName,
			String position,String pageNow,String message,String companyId,
			ModelMap model,HttpServletRequest request) throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");  
		//System.out.println("************************@Cacheable***************************************");
		if(StringUtils.isEmpty(companyId)){//如果为空默认查询所有用户
			companyId = null;
		}
		Map<String, Object> map = userInfoServiceImpl.selectUserInfoByCompanyId(pageNow,companyId,roleName,workNo,realName,position);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("userInfoList", map.get("userInfoList"));
		model.addAttribute("pageUrl", request.getServletPath());
		model.addAttribute("companyId", companyId);
		model.addAttribute("workNo", workNo);
		model.addAttribute("realName", realName);
		model.addAttribute("position", position);
		model.addAttribute("roleName", roleName);
		model.addAttribute("message", message);
		return new ModelAndView("system/user/query",model);   
	}
	
	/**
	 * 导出用户信息
	 * @param message 操作提示
	 * @param companyId 组织机构id
	 * @param model
	 * @param request
	 * @return
	 */
	
	@SuppressWarnings("unchecked")
	//@Cacheable(value="myCache",key="#pageNow+#companyId",condition="#companyId!=null")
	@RequestMapping("/exportUserInfoByCompanyId.do")
	public void exportUserInfoByCompanyId(String roleName,String workNo,String realName,String position,String message,String companyId,ModelMap model,
			HttpServletRequest request,HttpServletResponse response){
		//System.out.println("************************@Cacheable***************************************");
		if(StringUtils.isEmpty(companyId)){//如果为空默认查询所有用户
			companyId = null;
		}
		Map<String, Object> map = userInfoServiceImpl.exportUserInfoByCompanyId(companyId,roleName,workNo,realName,position);
		HttpSession session = request.getSession();
		Object obj = session.getAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
		try{
			String dateStr = new SimpleDateFormat("yyyyMMdd").format(new Date());
			if("en".equals(obj.toString())){
				response.setHeader("Content-disposition", "attachment; filename=" + new String(("用户EN" + dateStr).getBytes("GB2312"), "ISO8859-1") + ".xlsx");
			}else{
				response.setHeader("Content-disposition", "attachment; filename=" + new String(("用户" + dateStr).getBytes("GB2312"), "ISO8859-1") + ".xlsx");
			}
			response.setContentType("application/octet-stream");
			String realPath = request.getSession().getServletContext().getRealPath("/");
			Workbook wb = null;
	        InputStream inp;
	        if("en".equals(obj.toString())){
	        	inp = new FileInputStream(realPath+"upfile\\user\\用户EN.xlsx");  
			}else{
				inp = new FileInputStream(realPath+"upfile\\user\\用户.xlsx");  
			}
	        wb = WorkbookFactory.create(inp);
	        Sheet sheet = wb.getSheetAt(0);
	        Font font= wb.createFont();
	        font.setFontHeightInPoints((short)10);
	        font.setFontName("宋体");
	        //设置样式
	        CellStyle cloneStyle = wb.createCellStyle(); 
	        cloneStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
	        cloneStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN); 
	        cloneStyle.setBorderRight(HSSFCellStyle.BORDER_THIN); 
	        cloneStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN); 
	        cloneStyle.setBorderTop(HSSFCellStyle.BORDER_THIN);
	        cloneStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER); //设置样式垂直居中
	        cloneStyle.setFont(font);
	        UserInfo userInfo;
	        Cell cell;
	        Row row;
	        List<UserInfo> allUserInfoList =(List<UserInfo>) map.get("allUserInfoList");
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	        for(int i = 0;i < allUserInfoList.size();i++){
	        	row = sheet.createRow(i + 1);
	        	userInfo =allUserInfoList.get(i);
	        	
	        	cell = row.createCell(0);
		        cell.setCellStyle(cloneStyle);
		        cell.setCellValue(userInfo.getCompany().getCompanyName());
		        cell = row.createCell(1);
		        cell.setCellStyle(cloneStyle);
		        cell.setCellValue(userInfo.getWorkNo());
		        cell = row.createCell(2);
		        cell.setCellStyle(cloneStyle);
		        cell.setCellValue(userInfo.getUser().getUserName());
		        cell = row.createCell(3);
		        cell.setCellStyle(cloneStyle);
		        cell.setCellValue(userInfo.getRealName());
		        cell = row.createCell(4);
		        cell.setCellStyle(cloneStyle);
		        if(userInfo.getSex()==1){	
		        	cell.setCellValue("男");
		        }
		        else if(userInfo.getSex()==0){
		        	cell.setCellValue("女");
		        }
		        cell = row.createCell(5);
		        cell.setCellStyle(cloneStyle);
		        cell.setCellValue(userInfo.getSpecialty());
		        cell = row.createCell(6);
		        cell.setCellStyle(cloneStyle);
		        cell.setCellValue(userInfo.getPosition());
		        cell = row.createCell(7);
		        cell.setCellStyle(cloneStyle);
		        cell.setCellValue(userInfo.getCreateTime()==null?"":sdf.format(userInfo.getCreateTime()));
		        cell = row.createCell(8);
		        cell.setCellStyle(cloneStyle);
		        
		        cell.setCellValue(userInfo.getLastLoginTime()==null?"":sdf.format(userInfo.getLastLoginTime()));
		        cell = row.createCell(9);
		        cell.setCellStyle(cloneStyle);
		        cell.setCellValue(userInfo.getLastLoginIP());
		        cell = row.createCell(10);
		        cell.setCellStyle(cloneStyle);
		        if(userInfo.getUser().isUse()==true){
		        	
		        	cell.setCellValue("可用");
		        }
		        else{
		        	cell.setCellValue("禁用");
		        }
	        }
	        OutputStream op = response.getOutputStream();
	        wb.write(op);  
	        op.flush();
	        op.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		  
	}

	/**
	 * 用户tab页
	 * @param userId 用户id
	 * @param userInfoId 用户信息id
	 * @param companyId 机构id
	 * @param model
	 * @return jsp
	 */
	
	@RequestMapping("/tab.do")  
	public ModelAndView tab(String userId,String userInfoId,String companyId, ModelMap model){
		model.addAttribute("userId", userId);
		model.addAttribute("userInfoId", userInfoId);
		model.addAttribute("companyId", companyId);
		return new ModelAndView("system/user/tab",model);   
	}
	
	/**
	 * 用户信息页
	 * @param companyId
	 * @param userInfoId
	 * @param model
	 * @return
	 */
	
	@RequestMapping("/userInfo.do")  
	public ModelAndView userInfo(String companyId,String userInfoId,ModelMap model){
		UserForm userForm = new UserForm();
		if(StringUtils.isNotEmpty(userInfoId)){	
			BeanUtils.copyProperties(userInfoServiceImpl.selectUserInfoById(userInfoId),userForm);
		}
		model.addAttribute("userForm", userForm);
		model.addAttribute("companyId", companyId);
		return new ModelAndView("system/user/userInfo",model);
	}
	
	/**
	 * 检查用户名重复
	 * @param userName 用户名
	 * @param model
	 * @return
	 */
	
	@RequestMapping("/checkName.do")  
	public void checkName(String userName,HttpServletResponse response) throws IOException{
		response.reset();
		response.setContentType("text/html;charset=UTF-8");
		int count = userInfoServiceImpl.checkName(userName);
		response.getWriter().print(count>0?false:true);
	}
	@RequestMapping("/checkRealName.do")  
	public void checkRealName(String realName,HttpServletResponse response) throws IOException{
		response.reset();
		response.setContentType("text/html;charset=UTF-8");
		int count = userInfoServiceImpl.checkRealName(realName);
		response.getWriter().print(count>0?false:true);
	}
	
	/**
	 * 用户保存或修改
	 * @param companyId 机构id
	 * @param userForm 用户表单
	 * @param model
	 * @return
	 * @throws IOException
	 */
	
	@CacheEvict(value="myCache",allEntries=true)
	@RequestMapping("/editUser.do")  
	public ModelAndView editUser(String companyId, UserForm userForm,ModelMap model) throws IOException{
		User user = new User();
//		System.out.println("fffffffff"+userForm.getPosition());
		UserInfo userInfo = new UserInfo();
		BeanUtils.copyProperties(userForm,user);
		BeanUtils.copyProperties(userForm,userInfo);	
		user.setPassWord( MD5("1"));
		model.addAttribute("message",  userInfoServiceImpl.editUser(user, userInfo, companyId));
		model.addAttribute("companyId", companyId);
		return new ModelAndView(new RedirectView("selectUserInfoByCompanyId.do")); 
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	/**
	 * 查看用户信息tab页
	 * @param userId 用户id
	 * @param userInfoId 用户信息id
	 * @param companyId 机构id
	 * @param model
	 * @return jsp
	 */
	
	@RequestMapping("/viewTab.do")  
	public ModelAndView viewTab(String userId,String userInfoId,ModelMap model){
		model.addAttribute("userId", userId);
		model.addAttribute("userInfoId", userInfoId);
		return new ModelAndView("system/user/viewTab",model);   
	}
	
	@RequestMapping("/editUserInfo.do")  
	public ModelAndView editUserInfo(String userId,String userInfoId,ModelMap model){
		UserForm userForm = new UserForm();
		BeanUtils.copyProperties(userInfoServiceImpl.selectUserInfoById(userInfoId),userForm);
		model.addAttribute("userForm", userForm);
		model.addAttribute("userId", userId);
		model.addAttribute("userInfoId", userInfoId);
		return new ModelAndView("system/user/editUserInfo",model);
	}
	
	@RequestMapping("/editInfo.do")  
	public ModelAndView editInfo(UserForm userForm,ModelMap model) throws IOException{
		User user = new User();
		UserInfo userInfo = new UserInfo();
		user.setUserId(userForm.getUser().getUserId());
		
		//user.setPassWord(this.MD5(userForm.getUser().getPassWord()));
		//BeanUtils.copyProperties(userForm,user);
		BeanUtils.copyProperties(userForm,userInfo);	
		userInfoServiceImpl.editUser(user, userInfo);
//		boolean flag = userInfoServiceImpl.editUser(user, userInfo);
		SecurityContextHolder.clearContext();  
		return new ModelAndView("login");
	
	}
	 
	
	/**
	 * 用户信息页
	 * @param companyId
	 * @param userInfoId
	 * @param model
	 * @return
	 */
	@RequestMapping("/viewUserInfo.do")  
	public ModelAndView viewUserInfo(String userInfoId,ModelMap model){
		UserForm userForm = new UserForm();
		UserInfo user = userInfoServiceImpl.selectUserInfoById(userInfoId);
		BeanUtils.copyProperties(user,userForm);
		model.put("userForm", userForm);
		return new ModelAndView("system/user/viewUserInfo",model);
	}
	
	/**
	 * 签名显示
	 * @param userInfoId
	 * @param response
	 * @throws Exception
	 */
//	@RequestMapping("/getSign_image.do")
//	public void getSign_image(String userInfoId, final HttpServletResponse response) throws Exception{ 
//		UserInfo userInfo = userInfoServiceImpl.selectUserInfoById(userInfoId);
//		byte[] data = userInfo.getSign_image();
//		response.setContentType("image/jpeg");   
//		response.setCharacterEncoding("UTF-8");   
//		OutputStream outputSream = response.getOutputStream();   
//		InputStream in = new ByteArrayInputStream(data);   
//		int len = 0;   
//		byte[] buf = new byte[1024];   
//		while ((len = in.read(buf, 0, 1024)) != -1) {
//		   outputSream.write(buf, 0, len);  
//		}   
//		outputSream.close();   
//	}
	
	/**
	 * 删除用户
	 * @param companyId 组织机构id
	 * @param userId 用户id
	 * @param userForm 用户表单对象
	 * @param model
	 * @return
	 */
	@RequestMapping("/deleteUser.do")  
	public ModelAndView deleteUser(String companyId, String userId, UserForm userForm, ModelMap model){
		userInfoServiceImpl.deleteUser(userId);
		model.put("message", Message.readValue("DELSUCCESS"));
		model.put("companyId", companyId);
		return new ModelAndView(new RedirectView("selectUserInfoByCompanyId.do")); 
	}
	
	/**
	 * 禁用用户
	 * @param companyId 组织机构id
	 * @param userId 用户id
	 * @param userForm 用户表单对象
	 * @param model
	 * @return
	 */
	@RequestMapping("/disableUser.do")  
	public ModelAndView disableUser(String companyId, String userId, UserForm userForm,ModelMap model){
		userInfoServiceImpl.disableUser(userId);
		model.put("message", Message.readValue("EDITSUCCESS"));
		model.put("companyId", companyId);
		return new ModelAndView(new RedirectView("selectUserInfoByCompanyId.do")); 
	}
	/**
	 * 禁用用户
	 * @param companyId 组织机构id
	 * @param userId 用户id
	 * @param userForm 用户表单对象
	 * @param model
	 * @return
	 */
	@RequestMapping("/enableUser.do")  
	public ModelAndView enableUser(String companyId, String userId, UserForm userForm,ModelMap model){
		userInfoServiceImpl.enableUser(userId);
		model.put("message", Message.readValue("EDITSUCCESS"));
		model.put("companyId", companyId);
		return new ModelAndView(new RedirectView("selectUserInfoByCompanyId.do")); 
	}
	@RequestMapping("/initPassword.do")  
	public ModelAndView initPassword(String companyId, String userId, UserForm userForm,ModelMap model){
		userInfoServiceImpl.initPassword(userId);
		model.put("message", Message.readValue("EDITSUCCESS"));
		model.put("companyId", companyId);
		return new ModelAndView(new RedirectView("selectUserInfoByCompanyId.do")); 
	}
	
	
	/**
	 * 用户权限页
	 * @param userId 用户id
	 * @param companyId 组织机构id
	 * @param userInfoId 用户信息id
	 * @param model
	 * @return jsp
	 */
	@RequestMapping("/userAuth.do")  
	public ModelAndView userAuth(String userId,String companyId,String userInfoId,ModelMap model){
		model.addAttribute("userId", userId);
		model.addAttribute("userInfoId", userInfoId);
		model.addAttribute("companyId", companyId);
		return new ModelAndView("system/user/userAuth",model); 
	}
	
	/**
	 * 用户权限列表树
	 * @param userInfoId 用户信息id
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/authTree.do")  
	public void authTree(String userInfoId,HttpServletResponse response) throws Exception{
		TreeUtil<Authority> treeUtil = new TreeUtil<Authority>();
		List<Authority> authorityTree = new ArrayList<Authority>();
		User user = userInfoServiceImpl.selectUserAuthByUserInfoId(userInfoId);
		
		
		if(user.getUserAuthorities().size()!=0){
			authorityTree = treeUtil.makeTree(authorityServiceImpl.getAuthorityList(), user);	
		}else{
			authorityTree = treeUtil.makeTree(authorityServiceImpl.getAuthorityList(), null);
		}
		PrintWriter out = response.getWriter();
		JSONArray json = JSONArray.fromObject(authorityTree);
		out.println(json.toString());	
	}
	
	/**
	 * 编辑用户权限
	 * @param companyId 组织机构id
	 * @param userId 用户id
	 * @param ids 权限id字符串
	 * @param codes 权限编码字符串
	 * @param model
	 * @return
	 */
	@RequestMapping("/editUseAuth.do")  
	public void editUseAuth(String companyId,String userId, String ids, String codes,ModelMap model,HttpServletResponse response){
		try{
			userInfoServiceImpl.editUserAuth(userId, ids, codes);
			response.getWriter().print("ok");
		}catch(Exception e){
			try {
				response.getWriter().print("failed");
			} catch (IOException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		//model.put("message", Message.readValue("EDITSUCCESS"));
		//model.put("companyId", companyId);
		//return new ModelAndView(new RedirectView("selectUserInfoByCompanyId.do")); 
	}
	
	/**
	 * 用户权限页
	 * @param userId 用户id
	 * @param companyId 组织机构id
	 * @param userInfoId 用户信息id
	 * @param model
	 * @return jsp
	 */
	@RequestMapping("/viewUserAuth.do")  
	public ModelAndView viewUserAuth(String userId,ModelMap model){
		model.addAttribute("userId", userId);
		return new ModelAndView("system/user/viewUserAuth",model); 
	}
	/**
	 * 用户权限列表树
	 * @param userInfoId 用户信息id
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/viewUserAuthTree.do")  
	public void viewUserAuthTree(String userId,HttpServletResponse response) throws Exception{
		TreeUtil<UserAuthority> treeUtil = new TreeUtil<UserAuthority>();
		List<UserAuthority> authorityTree = treeUtil.makeTree(userInfoServiceImpl.selectUserAuthByUserId(userId), null);
		PrintWriter out = response.getWriter();
		JSONArray json = JSONArray.fromObject(authorityTree);
		out.println(json.toString());	
	}
	
	/**
	 * 用户角色页
	 * @param userId 用户id
	 * @param companyId 组织机构id
	 * @param userInfoId 用户信息id
	 * @param model
	 * @return jsp
	 */
	@RequestMapping("/userRole.do")  
	public ModelAndView userRole(String userId,String companyId,String userInfoId,ModelMap model){
		model.addAttribute("userId", userId);
		model.addAttribute("userInfoId", userInfoId);
		model.addAttribute("companyId", companyId);
		model.addAttribute("userRoleList",userInfoServiceImpl.selectUserRoleByUserId(userId));
		return new ModelAndView("system/user/userRole",model); 
	}
	/**
	 * 用户角色页
	 * @param userId 用户id
	 * @param companyId 组织机构id
	 * @param userInfoId 用户信息id
	 * @param model
	 * @return jsp
	 */
	@RequestMapping("/viewUserRole.do")  
	public ModelAndView viewUserRole(String userId,String companyId,String userInfoId,ModelMap model){
		model.addAttribute("userId", userId);
		model.addAttribute("userInfoId", userInfoId);
		model.addAttribute("companyId", companyId);
		model.addAttribute("roleList", 	userInfoServiceImpl.selectViewUserRoleByUserId(userId));
		return new ModelAndView("system/user/viewUserRole",model); 
	}
	
	/**
	 *  编辑用户角色
	 * @param model
	 * @param ids
	 * @param userId
	 * @return
	 */
	@RequestMapping("/editUserRole.do")  
	public ModelAndView editUserRole(String ids,String userId,ModelMap model){
		userInfoServiceImpl.editUserRole(userId, ids);
		model.put("message", Message.readValue("EDITSUCCESS"));
		return new ModelAndView(new RedirectView("selectUserInfoByCompanyId.do")); 
	}
	/**
	 * 修改密码
	 * @param userId
	 * @param model
	 * @return
	 */
	@RequestMapping("/editPassword.do")  
	public ModelAndView editPassword(String userId,ModelMap model){
		UserForm userForm = new UserForm();
		model.addAttribute("userForm", userForm);
		model.addAttribute("userId", userId);
		return new ModelAndView("system/user/editPassword",model);
	}
	/**
	 * 校验密码是否正确
	 * @param userId
	 * @param passWord
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/checkPassWord.do")
	public void checkPassWord(String userId,String passWord,HttpServletResponse response) throws IOException{
		User user = userInfoServiceImpl.selectUserByUserId(userId);
		String str=this.MD5(passWord);
		response.reset();
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().print(user.getPassWord().equals(str)?true:false);
	}
	/**
	 * 保存密码
	 * @param userForm
	 * @param model
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/savePassword.do")  
	public ModelAndView savePassword(UserForm userForm,ModelMap model) throws IOException{
		User user = new User();
		user.setUserId(userForm.getUserId());
		user.setPassWord(this.MD5(userForm.getNewPassWord()));
		userInfoServiceImpl.savePassword(user);
		SecurityContextHolder.clearContext();  
		return new ModelAndView("login");
	}
}