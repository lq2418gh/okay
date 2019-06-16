package dkd.okay.business.storage.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dkd.okay.business.storage.bo.Direct;
import dkd.okay.business.storage.service.DirectService;
import dkd.okay.system.bo.User;

/**
 * 直达现场
 * @author 周渤涛
 *
 */
@Controller
@RequestMapping(value="/direct")
@Transactional
public class DirectCotroller {

	@Autowired
	private DirectService directService;
	
	
	/**
	 * 分页模糊 ：直达现场查询
	 * @param direct
	 * @param model
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/query.do")
	public ModelAndView selectPurchase(Direct direct,ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		direct.setDirect_no(direct.getDirect_no()!=null?direct.getDirect_no().trim():null);
		direct.setState(direct.getState()!=null?direct.getState().trim():null);
		direct.setEntry_date_begin(direct.getEntry_date_begin()!=null?direct.getEntry_date_begin().trim():null);
		direct.setEntry_date_end(direct.getEntry_date_end()!=null?direct.getEntry_date_end().trim():null);
		Map<String, Object> map = directService.select(pageNow, direct);
		List<Direct> list =(List<Direct>) map.get("list");
		model.addAttribute("list", list);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		model.addAttribute("direct", direct);//用来显示上一次查询条件
		return new ModelAndView("business/storage/direct/query",model);
	}
	/**
	 * 编辑直达现场
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/editAndEcho.do")
	public ModelAndView edit(String id,ModelMap model) {
		Direct direct =new Direct();
		if(StringUtils.isEmpty(id)){
			User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			direct.setUser_id(user.getUserId());;
			direct.setUser_name(user.getUserInfo().getRealName());
			direct.setEntry_date(new Date());
			direct.setState("新建");
		}else{
			direct = directService.view(id);
		}
		model.addAttribute("direct",direct);
		return new ModelAndView("business/storage/direct/edit",model);
	}
	/**
	 * 查看直达现场
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/view.do")
	public ModelAndView view(String id,ModelMap model) {
		Direct direct = directService.view(id);
		model.addAttribute("direct",direct);
		return new ModelAndView("business/storage/direct/view",model);
	}
	
	/**
	 * 编辑和保存直达现场
	 * @param model
	 * @param direct
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping("/save.do")
	public ModelAndView save(ModelMap model,Direct direct,String id,HttpServletRequest request){
		String message="";
		if(StringUtils.isEmpty(direct.getId())){
			message = directService.insertDAndDd(direct);
		}else{
			message = directService.updateDAndDd(direct);
		}
		model.addAttribute("message",message);
		model.addAttribute("url","direct/view.do?id="+direct.getId());
		return new ModelAndView("common/message",model);
	}
	
	/**
	 * 提交直达现场
	 * @param model
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping("/submit.do")
	public ModelAndView submit(ModelMap model,String id,HttpServletRequest request){
		String message=directService.submit(id);
		model.put("message", message);
		model.put("url", "direct/view.do?id="+id);
		return new ModelAndView("common/message");
	}
	/**
	 * 审批通过直达现场
	 * @param model
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping("/approvalOk.do")
	public ModelAndView approvalOk(ModelMap model,String id,HttpServletRequest request){
		String message=directService.approvalOk(id);
		model.put("message", message);
		model.put("url", "direct/view.do?id="+id);
		return new ModelAndView("common/message");
	}
	/**
	 * 审批不通过直达现场
	 * @param model
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping("/approvalNo.do")
	public ModelAndView approvalNo(ModelMap model,String id,HttpServletRequest request){
		String message=directService.approvalNo(id);
		model.put("message", message);
		model.put("url", "direct/view.do?id="+id);
		return new ModelAndView("common/message");
	}
}