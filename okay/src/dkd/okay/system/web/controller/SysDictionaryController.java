package dkd.okay.system.web.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import dkd.okay.system.bo.Dictionary;
import dkd.okay.system.service.DictionaryServiceImpl;
import dkd.okay.system.util.message.Message;
import dkd.okay.system.util.tree.TreeUtil;
import dkd.okay.system.web.formmodel.DictionaryForm;

/**
 * 业务字典Controller
 * 
 * @author dwj
 * 
 */
@Controller
@RequestMapping(value = "/sysdictionary")
public class SysDictionaryController extends BaseController  {
	@Autowired
	private DictionaryServiceImpl dictionaryService;

	@RequestMapping("/dictionary.do")
	public ModelAndView dictionary(String dicId) {
		return new ModelAndView("system/sysdictionary/dictionary").addObject("dicId",dicId);
	}

	@RequestMapping("/tree.do")
	public ModelAndView tree(Model model) {
		int dic_type=1;
		List<Dictionary> list = dictionaryService.selectAll(dic_type);
		model.addAttribute("sysMenuList", list);
		return new ModelAndView("system/sysdictionary/tree");
	}

	/**
	 * 生成字典树结构
	 * 
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/dictionaryTree.do")
	public void dictionaryTree(HttpServletResponse response) throws Exception {
		int dic_type=1;
		List<Dictionary> dictionaryList = dictionaryService.selectAll(dic_type);
		TreeUtil<Dictionary> treeUtil = new TreeUtil<Dictionary>();
		List<Dictionary> dictionaryTree = treeUtil.makeTree(dictionaryList,
				null);
		PrintWriter out = response.getWriter();
		JSONArray json = JSONArray.fromObject(dictionaryTree);
		out.println(json.toString());
	}

	/**
	 * 根据父级id分页查询所有子字典
	 * 
	 * @param departmentId
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("/selectDictionaryByParentId.do")
	public ModelAndView selectDictionaryByParentId(String pageNow,
			String dicId, String message, ModelMap model,
			HttpServletRequest request) {
		if(StringUtils.isEmpty(dicId)){
			dicId="0";
		}
		int dic_type=1;
		Map<String, Object> map = dictionaryService.selectDictionaryByParentId(
				pageNow, dicId,dic_type);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("dictionaryList", map.get("dictionaryList"));
		model.addAttribute("pageUrl", request.getServletPath());
		model.addAttribute("dicId", dicId);
		model.addAttribute("message", message);
		return new ModelAndView("system/sysdictionary/dictionaryList", model);
	}

	/**
	 * 根据条件查询
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("/query.do")
	public ModelAndView query(String pageNow, String dicId, ModelMap model,
			HttpServletRequest request) {
		String dicName = request.getParameter("dicName");
		int dic_type=1;
		Map<String, Object> map = dictionaryService.query(pageNow, dicName == null ? "" : dicName.trim(),
				dicId,dic_type);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("dictionaryList", map.get("dictionaryList"));
		model.addAttribute("pageUrl", request.getServletPath());
		model.addAttribute("dicId", dicId);
		model.addAttribute("dicName", dicName);
		return new ModelAndView("system/sysdictionary/dictionaryList", model);
	}

	/**
	 * 字典信息页
	 * 
	 * @param model
	 * @param flag
	 * @param id
	 * @param parentId
	 * @return
	 */

	@RequestMapping("/dictionaryInfo.do")
	public ModelAndView dictionaryInfo(ModelMap model, String flag, String id,
			String parentId) {
		DictionaryForm dictionaryForm = new DictionaryForm();
		if (StringUtils.equals("save", flag)) {
			if(!StringUtils.equals("0", parentId)){
				Dictionary dictionary = dictionaryService.selectDictionaryById(parentId);
				dictionaryForm.setParentCode(dictionary.getDicCode());
				dictionaryForm.setParentName(dictionary.getDicName());
				dictionaryForm.setDicOrder(dictionaryService.selectMaxOrder(dictionary.getDicId()) + 1);
			}			
			dictionaryForm.setParentId(parentId);
		} else {
			BeanUtils.copyProperties(dictionaryService.selectDictionaryById(id), dictionaryForm);
		}
		model.addAttribute("dictionaryForm", dictionaryForm);
		return new ModelAndView("system/sysdictionary/dictionaryInfo");
	}

	/**
	 * 编辑页
	 * 
	 * @param model
	 * @param dictionaryForm
	 * @return
	 */
	@RequestMapping("/editDictionary.do")
	public ModelAndView editDictionary(ModelMap model,
			DictionaryForm dictionaryForm) {
		Dictionary dictionary = new Dictionary();
		BeanUtils.copyProperties(dictionaryForm, dictionary);
		int count = dictionaryService.checkDic(dictionary);
		if (count > 0) {
			model.put("message", Message.readValue("DICSAVEFALSE"));
			model.put("url", "sysdictionary/selectDictionaryByParentId.do?dicId=" + dictionaryForm.getParentId());
			return new ModelAndView("common/messageTab");
		}
		dictionary.setDicType(1);
		dictionaryService.editDictionary(dictionary);
		model.put("message", Message.readValue("DICSAVESUCCESS"));
		model.put("url", "sysdictionary/selectDictionaryByParentId.do?dicId=" + dictionaryForm.getParentId());
		return new ModelAndView("common/messageTab");
	}

	/**
	 * 删除
	 * 
	 * @param model
	 * @param dictionaryForm
	 * @return
	 */
	@RequestMapping("/delete.do")
	public ModelAndView delete(ModelMap model, String dicId, String parentId) {
		dictionaryService.delete(dicId);
		model.addAttribute("message",  Message.readValue("DICDELSUCCESS"));
		model.addAttribute("dicId", parentId);
		return new ModelAndView(new RedirectView ("selectDictionaryByParentId.do"));
	}
}
