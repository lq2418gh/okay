package dkd.okay.business.baseinfo.controller;

import java.io.IOException;
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
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dkd.okay.business.Constants;
import dkd.okay.business.baseinfo.bo.Region;
import dkd.okay.business.baseinfo.bo.Warehouse;
import dkd.okay.business.baseinfo.bo.WarehouseTree;
import dkd.okay.business.baseinfo.serivce.RegionServiceImpl;
import dkd.okay.business.baseinfo.serivce.WarehouseServiceImpl;
import dkd.okay.system.util.tree.TreeUtil;

/**
 * 仓库管理Controller
 * @author 王莹
 *
 */

@Controller
@RequestMapping(value="/warehouse")
public class WarehouseController{
	//-------------仓库--------开始---------------------------------------------------------------------------------
	    @Autowired
		private WarehouseServiceImpl warehouseServiceImpl;
	    @Autowired
		private RegionServiceImpl regionServiceImpl;
		/**
		 * 
		 * 仓库管理首页
		 * @param model
		 * @param warehouseId
		 * @param regionId
		 * @return
		 */
		@RequestMapping("/warehouse.do")  
		public ModelAndView warehouse(ModelMap model,String warehouseId,String regionId){
			model.addAttribute("warehouseId", warehouseId);
			model.addAttribute("regionId", regionId);
			return new ModelAndView("business/baseinfo/warehouse/warehouse",model);
		}
		/**
		 * 仓库管理结构树
		 * @return
		 */
		@RequestMapping("/tree.do")  
		public String tree(){
			return "business/baseinfo/warehouse/tree";
		}
		/**
		 * 生成仓库管理树
		 * @param response
		 * @throws Exception
		 */
		@RequestMapping("/warehouseTree.do")  
		public void warehouseTree(HttpServletResponse response) throws Exception{
			List<WarehouseTree> warehouseTreeList = warehouseServiceImpl.getWarehouseManageTree();
			TreeUtil<WarehouseTree> treeUtil = new TreeUtil<WarehouseTree>();
			List<WarehouseTree> warehouseTree = treeUtil.makeTree(warehouseTreeList,null);
			PrintWriter out = response.getWriter();
			JSONArray json = JSONArray.fromObject(warehouseTree);
			out.println(json.toString());	
		}
		/**
		 * 
		 * 仓库管理中，根据点击的节点，显示节点下的仓库信息列表
		 * @param message
		 * @param warehouseForm
		 * @param model
		 * @param request
		 * @return
		 */
		@SuppressWarnings("unchecked")
		@RequestMapping("/warehouseQuery.do")  
		public ModelAndView warehouseQuery(String message,Warehouse warehouse, ModelMap model,HttpServletRequest request){
			String pageNow = request.getParameter("pageNow");
			warehouse.setWarehouseCode(warehouse.getWarehouseCode()!=null?warehouse.getWarehouseCode().trim():null);
			warehouse.setWarehouseName(warehouse.getWarehouseName()!=null?warehouse.getWarehouseName().trim():null);
			Map<String, Object> map = warehouseServiceImpl.selectWarehouse(pageNow, warehouse);
			warehouse.setWarehouseList((List<Warehouse>)map.get("warehouseList"));
			warehouse.setMessage(message);
			model.addAttribute("warehouse", warehouse);
			model.addAttribute("page", map.get("page"));
			model.addAttribute("pageUrl", request.getServletPath());
			return new ModelAndView("business/baseinfo/warehouse/warehouseQuery",model);   
		}
		/**
		 * 
		 * 编辑仓库信息
		 * @param model
		 * @param warehouseId
		 * @return
		 */
		@RequestMapping("/editWarehouse.do")  
		public ModelAndView editWarehouse(ModelMap model,String warehouseId){
			Warehouse warehouse = new Warehouse();
			if(StringUtils.isNotEmpty(warehouseId))
				BeanUtils.copyProperties(warehouseServiceImpl.selectWarehouseById(warehouseId),warehouse);
			return new ModelAndView("business/baseinfo/warehouse/warehouseEdit","warehouse", warehouse); 
		}
		/**
		 * 
		 * 删除仓库信息
		 * @param model
		 * @param warehouseId
		 * @return
		 */
		@RequestMapping("/deleteWarehouse.do")  
		public ModelAndView deleteWarehouse(ModelMap model,String warehouseId,HttpServletRequest request){
			String message=warehouseServiceImpl.deleteWarehouse(warehouseId);
			Warehouse warehouse = new Warehouse();
			BeanUtils.copyProperties(warehouseServiceImpl.selectWarehouseById(warehouseId),warehouse);
			warehouse.setMessage(message);
			return new ModelAndView("business/baseinfo/warehouse/warehouseQuery","warehouse",warehouse); 
		}
		/**
		 * 
		 * 保存仓库信息
		 * @param model
		 * @param warehouseForm
		 * @return
		 * @throws IOException
		 */
		@RequestMapping("/saveWarehouse.do")  
		public ModelAndView saveWarehouse(Warehouse warehouse,HttpServletRequest request) throws IOException{
			String message=warehouseServiceImpl.saveWarehouse(warehouse);;
			warehouse.setMessage(message);
			return new ModelAndView("business/baseinfo/warehouse/warehouseQuery"); 
		}
		/**
		 * 
		 * 查看仓库信息
		 * @param model
		 * @param warehouseId
		 * @return
		 */
		@RequestMapping("/viewWarehouse.do")  
		public ModelAndView viewWarehouse(ModelMap model,String warehouseId){
			Warehouse warehouse = new Warehouse();
			BeanUtils.copyProperties(warehouseServiceImpl.selectWarehouseById(warehouseId),warehouse);
			return new ModelAndView("business/baseinfo/warehouse/warehouseView","warehouse", warehouse); 
		}
		/**
		 * 
		 * 校验仓库编码重名
		 * @param warehouseCode
		 * @param response
		 * @throws IOException
		 */
		@RequestMapping("/repeatWarehouseCode.do") 
		public void repeatWarehouseCode(String warehouseCode, HttpServletResponse response)throws IOException{
			response.reset();
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print(warehouseServiceImpl.selectWarehouseRepeat(warehouseCode));
		}
		/**
		 * 
		 * 校验仓库名称重名
		 * @param warehouseCode
		 * @param response
		 * @throws IOException
		 */
		@RequestMapping("/repeatWarehouseName.do") 
		public void repeatWarehouseName(String warehouseName,String warehouseId, HttpServletResponse response)throws IOException{
			response.reset();
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print(warehouseServiceImpl.selectWarehouseNameRepeat(warehouseName,warehouseId));
		}
	//-------------仓库--------结束---------------------------------------------------------------------------------

	//-------------库区--------开始---------------------------------------------------------------------------------
		
		
		
		/**
		 * 
		 * 仓库管理中，根据点击的节点，显示节点下的库区信息列表
		 * @param warehouseId
		 * @param message
		 * @param model
		 * @param regionForm
		 * @param request
		 * @return
		 */
		@SuppressWarnings("unchecked")
		@RequestMapping("/regionQuery.do")  
		public ModelAndView regionQuery(String warehouseId,String message, ModelMap model,Region region, HttpServletRequest request){
			String pageNow = request.getParameter("pageNow");
			region.setWarehouseId(warehouseId);
			Map<String, Object> map = regionServiceImpl.selectRegion(pageNow,region);
			region.setRegionList((List<Region>)map.get("regionList"));
			region.setMessage(message);
			model.addAttribute("warehouseId", warehouseId);
			model.addAttribute("region", region);
			model.addAttribute("page", map.get("page"));
			model.addAttribute("pageUrl", request.getServletPath());
			return new ModelAndView("business/baseinfo/warehouse/regionQuery",model);   
		}
		/**
		 * 
		 * 编辑库区信息
		 * @param model
		 * @param warehouseId
		 * @param regionId
		 * @return
		 */
		@RequestMapping("/editRegion.do")  
		public ModelAndView editRegion(ModelMap model,String warehouseId ,String regionId){
			Region region = new Region();
			if(StringUtils.isNotEmpty(regionId)){
				BeanUtils.copyProperties(regionServiceImpl.selectRegionEditById(regionId),region);
				warehouseId=region.getWarehouseId();
			}else{
				region.setWarehouseId(warehouseId);
			}
				Warehouse warehouse = warehouseServiceImpl.selectWarehouseById(warehouseId);
				region.setWarehouseName(warehouse.getWarehouseName());
				region.setWarehouseCode(warehouse.getWarehouseCode());
			return new ModelAndView("business/baseinfo/warehouse/regionEdit","region", region); 
		}
		/**
		 * 
		 * 保存库区信息
		 * @param model
		 * @param regionForm
		 * @return
		 * @throws IOException
		 */
		@RequestMapping("/saveRegion.do")  
		public ModelAndView saveRegion(ModelMap model,Region region,HttpServletRequest request) throws IOException{
			String message=regionServiceImpl.saveRegion(region);
			region.setMessage(message);
			return new ModelAndView("business/baseinfo/warehouse/regionQuery","region",region); 
		}
		/**
		 * 
		 * 查看库区信息
		 * @param model
		 * @param regionId
		 * @return
		 */
		@RequestMapping("/viewRegion.do")  
		public ModelAndView viewRegion(ModelMap model,String regionId){
			Region region = new Region();
			BeanUtils.copyProperties(regionServiceImpl.selectRegionById(regionId),region);
			Warehouse warehouse = warehouseServiceImpl.selectWarehouseById(region.getWarehouseId());
			region.setWarehouseName(warehouse.getWarehouseName());
			region.setWarehouseCode(warehouse.getWarehouseCode());
			return new ModelAndView("business/baseinfo/warehouse/regionView","region", region); 
		}

		/**
		 * 
		 * 删除库区信息
		 * @param model
		 * @param warehouseId
		 * @param regionId
		 * @return
		 */
		@RequestMapping("/deleteRegion.do")  
		public ModelAndView deleteRegion(ModelMap model,String warehouseId,String regionId,HttpServletRequest request){
			String message=regionServiceImpl.deleteRegion(regionId);
		    Region region = new Region();
			BeanUtils.copyProperties(regionServiceImpl.selectRegionById(regionId),region);
			region.setMessage(message);
			return new ModelAndView("business/baseinfo/warehouse/regionQuery","region",region); 
		}
		/**
		 * 
		 * 校验库区编码重名
		 * @param regionCode
		 * @param warehouseCode
		 * @param response
		 * @throws IOException
		 */
		@RequestMapping("/repeatRegionCode.do") 
		public void repeatRegionCode(String regionCode,String warehouseCode, HttpServletResponse response)throws IOException{
			response.reset();
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print(regionServiceImpl.selectRegionRepeat(warehouseCode.concat(Constants.WAREHOUSE_FLAG).concat(regionCode)));
		}
		/**
		 * 
		 * 校验库区名称重名
		 * @param regionCode
		 * @param warehouseCode
		 * @param response
		 * @throws IOException
		 */
		@RequestMapping("/repeatRegionName.do") 
		public void repeatRegionName(String regionName,String warehouseId,String regionId, HttpServletResponse response)throws IOException{
			response.reset();
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print(regionServiceImpl.selectRegionNameRepeat(regionName,warehouseId,regionId));
		}
	//-------------库区--------结束---------------------------------------------------------------------------------	
	//-------------物料管理通用--------开始---------------------------------------------------------------------------------
	/**
	 * 生成仓库储位树--入库时用
	 */
	@RequestMapping("/warehouseTreeUse.do")  
	public void warehouseTreeUse(HttpServletResponse response) throws Exception{
		List<WarehouseTree> warehouseTreeList = warehouseServiceImpl.getWarehouseManageTree();
		TreeUtil<WarehouseTree> treeUtil = new TreeUtil<WarehouseTree>();
		List<WarehouseTree> warehouseTree = treeUtil.makeTree(warehouseTreeList,null);
		PrintWriter out = response.getWriter();
		JSONArray json = JSONArray.fromObject(warehouseTree);
		out.println(json.toString());	
	}
		
	/**
	 * 
	 * 通用仓库储位管理首页-业务单据弹出用
	 * @return
	 */
	@RequestMapping("/publicLocation.do")  
	public ModelAndView publicLocation(ModelMap model){
		return new ModelAndView("business/baseinfo/warehouse/publicLocation",model);
	}
	
	/**
	 * 通用仓库储位结构树
	 * @return
	 */
	@RequestMapping("/publicTree.do")  
	public ModelAndView publicTree(ModelMap model){
		return new ModelAndView("business/baseinfo/warehouse/publicTree",model);
	}
	/**
	 * 通用仓库储位管理中，根据点击的节点，显示节点下的储位信息列表
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/publicQuery.do")  
	public ModelAndView publicQuery(String warehouseId,String message, ModelMap model,Region region, HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		region.setWarehouseId(warehouseId);
		region.setState("使用");
		Map<String, Object> map = regionServiceImpl.selectRegion(pageNow,region);
		region.setRegionList((List<Region>)map.get("regionList"));
		model.addAttribute("warehouseId", warehouseId);
		model.addAttribute("region", region);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/baseinfo/warehouse/publicLocationQuery",model);   
	}
	/**
	 * 
	 * 仓库管理中，根据点击的节点，显示节点下的仓库信息列表
	 * @param message
	 * @param warehouseForm
	 * @param model
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/publicWarehouseQuery.do")  
	public ModelAndView publicWarehouseQuery(String message,Warehouse warehouse, ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		warehouse.setWarehouseCode(warehouse.getWarehouseCode()!=null?warehouse.getWarehouseCode().trim():null);
		warehouse.setWarehouseName(warehouse.getWarehouseName()!=null?warehouse.getWarehouseName().trim():null);
		warehouse.setState("使用");
		Map<String, Object> map = warehouseServiceImpl.selectWarehouse(pageNow, warehouse);
		warehouse.setWarehouseList((List<Warehouse>)map.get("warehouseList"));
		model.addAttribute("warehouse", warehouse);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("pageUrl", request.getServletPath());
		return new ModelAndView("business/baseinfo/warehouse/publicQuery",model);   
	}
//-------------物料管理通用--------结束---------------------------------------------------------------------------------
}

