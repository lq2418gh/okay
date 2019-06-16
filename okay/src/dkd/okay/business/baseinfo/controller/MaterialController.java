package dkd.okay.business.baseinfo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dkd.okay.business.baseinfo.bo.ExcleFileForm;
import dkd.okay.business.baseinfo.bo.Material;
import dkd.okay.business.baseinfo.bo.MaterialType;
import dkd.okay.business.baseinfo.serivce.MaterialService;
import dkd.okay.business.baseinfo.serivce.MaterialsTypeService;
import dkd.okay.system.util.downloadFile;
import dkd.okay.system.util.tree.TreeUtil;

@Controller
@RequestMapping(value="/material")
public class MaterialController {
	
	@Autowired
	private MaterialsTypeService materialsTypeService;
	@Autowired
	private MaterialService materialService;
		/**
		 * 物资管理首页
		 */
		@RequestMapping("/materialsType.do")  
		public ModelAndView materialsType(String parentId){
			return new ModelAndView("business/baseinfo/commodity/commodity","parentId",parentId);
		}
		/**
		 * 物料管理Tab
		 */
		@RequestMapping("/tab.do")  
		public ModelAndView tab(String materialsTypeId,String parentId, ModelMap model){
			model.addAttribute("materialsTypeId", materialsTypeId);
			model.addAttribute("parentId", parentId);
			return new ModelAndView("business/baseinfo/commodity/tab",model);   
		}
		/**
		 * 物料类型结构树
		 */
		@RequestMapping("/tree.do")  
		public String tree(){
			return "business/baseinfo/commodity/tree";
		}
		/**
		 * 生成物料类别树
		 */
		@RequestMapping("/materialsTypeTree2.do")  
		public void materialsTypeTree2(String id, HttpServletResponse response) throws Exception{
			List<MaterialType> materialsTypeList = materialsTypeService.selectAllTwo(id);
			TreeUtil<MaterialType> treeUtil = new TreeUtil<MaterialType>();
			List<MaterialType> materialsTypeTree = treeUtil.makeTree(materialsTypeList,null);
			PrintWriter out = response.getWriter();
			JSONArray json = JSONArray.fromObject(materialsTypeTree);
			out.println(json.toString());	
		}
		/**
		 * 物料类别管理中，根据点击的节点，显示节点下的物料类型信息列表
		 */
		@SuppressWarnings("unchecked")
		@RequestMapping("/materialsTypeQuery.do")  
		public ModelAndView materialsTypeQuery(String parentId,ModelMap model,HttpServletRequest request,MaterialType materialType,HttpServletResponse response){
			parentId = StringUtils.isEmpty(parentId) ? "0" : parentId;
			String pageNow = request.getParameter("pageNow");
			materialType.setName(materialType.getName()!=null?materialType.getName().trim():null);
			materialType.setCode(materialType.getCode()!=null?materialType.getCode().trim():null);
			Map<String, Object> map = materialsTypeService.selectMaterialsTypeByParentId(pageNow, parentId,materialType);
			List<MaterialType> list=(List<MaterialType>) map.get("materialsTypeList");
			model.addAttribute("parentId", parentId);
			model.addAttribute("list", list);
			model.addAttribute("page", map.get("page"));
			model.addAttribute("pageUrl", request.getServletPath());
			return new ModelAndView("business/baseinfo/commodity/materialsTypeQuery",model);   
		}
		/**
		 * 物料类别管理中，根据点击的节点，显示节点下的物料信息列表
		 */
		@SuppressWarnings("unchecked")
		@RequestMapping("/commodityQuery.do")  
		public ModelAndView commodityQuery(String parentId,String levels,ModelMap model,HttpServletRequest request,Material material){
			parentId = StringUtils.isEmpty(parentId) ? "0" : parentId;
			String pageNow = request.getParameter("pageNow");
			material.setCode(material.getCode()!=null?material.getCode().trim():null);
			material.setName(material.getName()!=null?material.getName().trim():null);
			material.setState(material.getState()!=null?material.getState().trim():null);
			Map<String, Object> map = materialService.selectCommodityByParentId(pageNow, parentId,material,request);
			List<Material> list= (List<Material>)map.get("commodityList");
			model.addAttribute("parentId", parentId);
			model.addAttribute("levels", StringUtils.isEmpty(levels) ? "0" : levels);
			model.addAttribute("list", list);
			model.addAttribute("page", map.get("page"));
			model.addAttribute("pageUrl", request.getServletPath());
			return new ModelAndView("business/baseinfo/commodity/commodityQuery",model);   
		}
		/**
		 * 编辑物料类型信息上传页
		 */
		@RequestMapping("/editImpMaterialsType.do")  
		public ModelAndView editImpMaterialsType(ModelMap model,String parentId){
			ExcleFileForm excleFileForm = new ExcleFileForm();
			excleFileForm.setParentId(StringUtils.isEmpty(parentId) ? "0" : parentId);
			return new ModelAndView("business/baseinfo/commodity/impMaterialsType","excleFileForm", excleFileForm); 
		}
		/**
		 * 下载屋子类别导入模板
		 */
		@RequestMapping("/downloadMaterialsTypeTemplate.do")  
		public void downloadMaterialsTypeTemplate(HttpServletRequest request,HttpServletResponse response){
			//获取项目路径
			String path = request.getSession().getServletContext().getRealPath("/");
			downloadFile df = new downloadFile();
			try {
				df.download(path+"upfile/baseinfo/", "物料类别导入模板.xlsx", "application/octet-stream", response, request);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		/**
		 * 编辑物料类型信息
		 */
		@RequestMapping("/editMaterialsType.do")  
		public ModelAndView editMaterialsType(ModelMap model,String id ,String parentId,HttpServletRequest request){
			if(StringUtils.isEmpty(id)){
				MaterialType materialType=new MaterialType();
				MaterialType materialsType = materialsTypeService.selectMaterialsTypeById(parentId);
				if(materialsType!=null){
					materialType.setParentName(materialsType.getName());
					materialType.setParentCode(materialsType.getCode());
					materialType.setLevels(materialsType.getLevels()+1);
				}else{
					materialType.setLevels(1); 
				}
				//根据父节点查找子节点的code并取出最大值+1赋值给新的物资类别
				//分为初始新建和在已有基础上新建
				if(materialsTypeService.selectParentCode(parentId)==null){
					if(materialType.getLevels()==1){
						materialType.setCode("1");
					}
					if(materialType.getLevels()==2){
						materialType.setCode("01");
					}
					if(materialType.getLevels()==3){
						materialType.setCode("001");
					}
				}else{
					String code = (Integer.parseInt(materialsTypeService.selectParentCode(parentId))+1)+"";
					if(materialType.getLevels()==2){
						code=code.substring(1,3);
					}
					if(materialType.getLevels()==3){
						code=code.substring(3,6);
					}
					materialType.setCode(code);
				}
				materialType.setParent(parentId);//保存父节点id
				return new ModelAndView("business/baseinfo/commodity/materialsTypeEdit","materialType", materialType); 
			}else{
				return new ModelAndView("business/baseinfo/commodity/materialsTypeEdit","materialType", materialsTypeService.selectMaterialsTypeAndParentById(id)); 
			}
		}
		/**
		 * 校验物料类别编码重名
		 */
		@RequestMapping("/repeatMaterialsTypeCode.do") 
		public void repeatMaterialsTypeCode(String code, HttpServletResponse response,String id)throws IOException{
			response.reset();
			response.setContentType("text/html;charset=UTF-8");
			if(id==""){
				response.getWriter().print(materialsTypeService.selectMaterialTypeCode(code));
			}else{
				response.getWriter().print(true);
			}

		}
		/**
		 * 保存物料类型信息
		 */
		@RequestMapping("/saveMaterialsType.do")  
		public ModelAndView saveMaterialsType(MaterialType materialType,ModelMap model) throws IOException{
			model.addAttribute("message",materialsTypeService.saveMaterialsType(materialType));
			model.addAttribute("url","material/materialsType.do?parentId="+materialType.getParent());
			return new ModelAndView("common/message"); 
		}
		/**
		 * 查看物料类型信息
		 */
		@RequestMapping("/viewMaterialsType.do")  
		public ModelAndView viewMaterialsType(String id){
			return new ModelAndView("business/baseinfo/commodity/materialsTypeView","materialType", materialsTypeService.selectMaterialsTypeAndDicAndParentById(id)); 
		}
		/**
		 * 删除物料类型信息
		 */
		@RequestMapping("/deleteMaterialsType.do")  
		public ModelAndView deleteMaterialsType(String id,String parentId,ModelMap model){
			//判断下面是否还有小类或者有物料信息，不予删除
			MaterialType mt = materialsTypeService.selectMaterialsTypeById(id);
			if(mt.getLevels()==3){
				List<Material> list = materialService.selectMaterialByPid(id);	
				if(list.size()==0){
					model.addAttribute("message",materialsTypeService.deleteMaterialsType(id));
				}else{
					model.addAttribute("message","节点下有数据，无法删除");
				}
			}else{
				List<MaterialType> lists = materialsTypeService.selectMaterialTypeByPid(id);
				if(lists.size()==0){
					model.addAttribute("message",materialsTypeService.deleteMaterialsType(id));
				}else{
					model.addAttribute("message","节点下有数据，无法删除");
				}
			}
			model.addAttribute("url","material/materialsType.do?parentId="+parentId);
			return new ModelAndView("common/message"); 
		}
		/**
		 * 编辑物料信息
		 */
		@RequestMapping("/editCommodity.do")  
		public ModelAndView editCommodity(ModelMap model,String parentId ,String id,String levels,HttpServletRequest request){
			if(StringUtils.isEmpty(id)){
				Material material= new Material();
				MaterialType materialType = materialsTypeService.selectMaterialsTypeById(parentId);
				material.setMaterial_type(parentId);
				material.setState("使用");
				material.setParentCode(materialType.getCode());
				material.setParentName(materialType.getName());
				//分为初始新建和在已有基础上新建
				if(materialService.selectParentCode(parentId)==null){
					material.setCode("000100");
				}else{
					String code = (Integer.parseInt(materialService.selectParentCode(parentId).substring(6,12))+100)+"";
					if(code.length()==3){
						code="000"+code;
					}
					if(code.length()==4){
						code="00"+code;
					}
					if(code.length()==5){
						code="0"+code;
					}
					material.setCode(code);//自动生成编码
				}
				return new ModelAndView("business/baseinfo/commodity/commodityEdit","material", material); 
			}else{
				return new ModelAndView("business/baseinfo/commodity/commodityEdit","material", materialService.selectMterialAndParentByPk(id)); 
			}
		}
		/**
		 * 校验物资编码是否重复
		 */
		@RequestMapping("/repeatCommodityCode.do") 
		public void repeatCommodityCode(String code, HttpServletResponse response,String id)throws IOException{
			response.reset();
			response.setContentType("text/html;charset=UTF-8");
			if(id==""){
				response.getWriter().print(materialService.selectMaterialCodeRepeat(code));
			}else{
				response.getWriter().print(true);
			}
		}
		/**
		 * 保存物料信息
		 */
		@RequestMapping("/saveCommodity.do")  
		public ModelAndView saveCommodity(ModelMap model, Material material) throws IOException{
			model.addAttribute("message",materialService.saveCommodity(material));
			model.addAttribute("url","material/commodityQuery.do?parentId="+material.getMaterial_type());
			return new ModelAndView("common/messageTab"); 
		}
		/**
		 * 删除物料信息
		 */
		@RequestMapping("/deleteCommodity.do")  
		public ModelAndView deleteCommodity(String id,String parentId,ModelMap model){
			model.addAttribute("message",materialService.deleteCommodity(id));
			model.addAttribute("url","material/commodityQuery.do?parentId="+parentId);
			return new ModelAndView("common/messageTab"); 
		}
		/**
		 * 查看物料信息
		 */
		@RequestMapping("/viewCommodity.do")  
		public ModelAndView viewCommodity(String id){
			Material material = materialService.selectMterialAndDicAndParentByPk(id);
			return new ModelAndView("business/baseinfo/commodity/commodityView","material", material); 
		}
		/**
		 * 下载物料信息模板
		 */
		@RequestMapping("/downloadCommodityTemplate.do")
		public void downloadCommodityTemplate(HttpServletRequest request,HttpServletResponse response){
			//获取项目路径
			String path = request.getSession().getServletContext().getRealPath("/");
			downloadFile df = new downloadFile();
			try {
				df.download(path+"upfile/baseinfo/", "物料明细导入模板.xlsx", "application/octet-stream", response, request);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		/**
		 * 编辑物料类型信息上传页
		 */
		@RequestMapping("/editImpCommodity.do")  
		public ModelAndView editImpCommodity(ModelMap model,String parentId,String levels){
			ExcleFileForm excleFileForm = new ExcleFileForm();
			excleFileForm.setParentId(StringUtils.isEmpty(parentId) ? "0" : parentId);
			excleFileForm.setLevels(levels);
			return new ModelAndView("business/baseinfo/commodity/impCommodity","excleFileForm", excleFileForm); 
		}
//-------------物料管理通用--------开始---------------------------------------------------------------------------------
		/**
		 * 通用物资管理首页-业务单据弹出用
		 */
		@RequestMapping("/publicCommodity.do")  
		public ModelAndView publicCommodity(String parentId){
			return new ModelAndView("business/baseinfo/commodity/publicCommodity","parentId",parentId);
		}
		/**
		 * 物料类型结构树
		 */
		@RequestMapping("/publicTree.do")  
		public String publicTree(){
			return "business/baseinfo/commodity/publicTree";
		}
		/**
		 * 生成物料类别树
		 */
		@RequestMapping("/materialsTypeTree.do")  
		public void materialsTypeTree(HttpServletResponse response) throws Exception{
			List<MaterialType> materialsTypeList = materialsTypeService.selectAll();
			TreeUtil<MaterialType> treeUtil = new TreeUtil<MaterialType>();
			List<MaterialType> materialsTypeTree = treeUtil.makeTree(materialsTypeList,null);
			PrintWriter out = response.getWriter();
			JSONArray json = JSONArray.fromObject(materialsTypeTree);
			out.println(json.toString());	
		}
		/**
		 * 物料类别管理中，根据点击的节点，显示节点下的物料类型信息列表
		 */
		@SuppressWarnings("unchecked")
		@RequestMapping("/publicCommodityQuery.do")  
		public ModelAndView publicCommodityQuery(String parentId,String levels,ModelMap model,Material material,HttpServletRequest request){
			parentId = StringUtils.isEmpty(parentId) ? "0" : parentId;
			String pageNow = request.getParameter("pageNow");
			material.setCode(material.getCode()!=null?material.getCode().trim():null);
			material.setName(material.getName()!=null?material.getName().trim():null);
			material.setState(material.getState()!=null?material.getState().trim():null);
			Map<String, Object> map = materialService.selectCommodityByParentId(pageNow, parentId,material,request);
			List<Material> list= (List<Material>)map.get("commodityList");
			model.addAttribute("parentId", parentId);
			model.addAttribute("levels", StringUtils.isEmpty(levels) ? "0" : levels);
			model.addAttribute("list", list);
			model.addAttribute("page", map.get("page"));
			model.addAttribute("pageUrl", request.getServletPath());
			return new ModelAndView("business/baseinfo/commodity/publicCommodityQuery",model);   
		}		
//-------------物料管理通用--------结束---------------------------------------------------------------------------------
		/**
		 * 保存上传物料类型信息
		 */
		@RequestMapping("/saveImpMaterialsType.do")  
		public ModelAndView saveImpMaterialsType(HttpServletRequest request,ExcleFileForm excleFileForm, ModelMap model) throws IOException{
			model.addAttribute("message", materialsTypeService.saveMaterialsTypeExcle(request,excleFileForm));
			model.addAttribute("url","material/materialsType.do?parentId="+excleFileForm.getParentId());
			return new ModelAndView("common/message");  
		}
		/**
		 * 保存上传物料信息
		 */
		@RequestMapping("/saveImpCommodity.do")  
		public ModelAndView saveImpCommodity(HttpServletRequest request,ExcleFileForm excleFileForm, ModelMap model) throws IOException{
			model.addAttribute("message", materialService.saveMaterialExcle(request,excleFileForm));
			model.addAttribute("url","material/commodityQuery.do?parentId="+excleFileForm.getParentId());
			return new ModelAndView("common/messageTab"); 
		}
	}
