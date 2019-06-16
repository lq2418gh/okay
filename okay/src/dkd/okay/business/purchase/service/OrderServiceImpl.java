package dkd.okay.business.purchase.service;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.budget.bo.BudgetPlanDetail;
import dkd.okay.business.budget.service.BudgetPlanService;
import dkd.okay.business.budget.service.PlanDetailService;
import dkd.okay.business.contract.service.PurchaseContractDetailService;
import dkd.okay.business.materialPurchase.dao.MaterialPurchaseDetailDao;
import dkd.okay.business.purchase.bo.Order;
import dkd.okay.business.purchase.bo.OrderDetail;
import dkd.okay.business.purchase.dao.OrderDaoImpl;
import dkd.okay.business.purchase.dao.OrderDetailDaoImpl;
import dkd.okay.business.stock.bo.Stock;
import dkd.okay.business.stock.service.StockService;
import dkd.okay.system.bo.Company;
import dkd.okay.system.service.CompanyServiceImpl;
import dkd.okay.system.util.Common;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;
/**
 * 协议采购订单Service实现类
 * @author 周渤涛
 *
 */
@Service(value="orderService")
@Transactional
public class OrderServiceImpl {
	@Autowired
	private OrderDaoImpl orderDaoImpl;
	@Autowired
	private OrderDetailDaoImpl orderDetailDaoImpl;
	@Autowired
	private PurchaseContractDetailService purchaseContractDetailService;
	@Autowired
	private BudgetPlanService budgetPlanService;
	@Autowired
	private CompanyServiceImpl companyServiceImpl;
	@Autowired
	private PlanDetailService planDetailService;
	@Autowired
	private StockService stockService;
	@Autowired
	private MaterialPurchaseDetailDao materialPurchaseDetailDao;
	/**
	 * 分页模糊：协议采购订单
	 * @param order
	 * @param pageNow
	 * @param pageUtil
	 * @return
	 */
	public Map<String, Object> selectOrderList(Order order, String pageNow,PageUtil pageUtil) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("order", order);
		map.put("page", pageUtil.getPage(pageNow, orderDaoImpl.count(map)));
		List<Order> orderList = orderDaoImpl.selectByCondition(map);
		map.put("orderList", orderList);
		return map;
	}
	
	public String CGDD= "CGDD";
	/**
	 * 获取最新订单号
	 * @return
	 */
	public String getOrderNo() {
		Date d = new Date();
	    SimpleDateFormat f = new SimpleDateFormat("yyyyMMdd");
	    return CGDD + f.format(d)+Common.formatNumber(orderDaoImpl.countNo(CGDD+f.format(d)) + 1, 3);
	}
	/**
	 * 根据ID查询	协议采购订单表头表体全部
	 * @param id
	 * @return
	 */
	public Order selectById(String id) {
		Order order = orderDaoImpl.get(id);
		List<OrderDetail> list = orderDetailDaoImpl.selectDetailByOId(id);
		order.setOrderDetailList(list);
		return order;
	}
	/**
	 * 插入数据
	 */
	public String insertOAndOd(Order order) {
		String id=UUIDGenerator.getUUID();
		order.setId(id);
		order.setOrder_no(this.getOrderNo());
		order.setOrder_state("未完结");
		if(orderDaoImpl.insert(order)>0){
			List<OrderDetail> list = order.getOrderDetailList();
			int order_row_no = 1;
			for(OrderDetail od : list){
				od.setId(UUIDGenerator.getUUID());
				od.setOrder_row_no(order_row_no);
				od.setOrder_frame(id);
				orderDetailDaoImpl.insert(od);
				order_row_no++;
				if(StringUtils.isNotEmpty(od.getPurchase_detail_id()))//更新物资审批表明细状态
					materialPurchaseDetailDao.updChoiceState(od.getPurchase_detail_id());
				
			}
			return "保存成功";
		}
		return "保存失败";
	}
	/**
	 * 更新数据
	 */
	public String updateOAndOd(Order order) {
		String id=order.getId();
		if(orderDaoImpl.update(order)>0){
			if(StringUtils.isNotEmpty(order.getFrame_id()) && StringUtils.isNotEmpty(order.getMaterialsPurchaseId())){
				List<OrderDetail> oldList = orderDetailDaoImpl.selectDetailByOId(id);
				for(OrderDetail od : oldList){
					materialPurchaseDetailDao.recoverChoiceState(od.getPurchase_detail_id());
				}
			}
			orderDetailDaoImpl.delDet(order.getId());
			List<OrderDetail> list = order.getOrderDetailList();
			int order_row_no = 1;
			for(OrderDetail od : list){
				od.setId(UUIDGenerator.getUUID());
				od.setOrder_row_no(order_row_no);
				od.setOrder_frame(id);
				orderDetailDaoImpl.insert(od);
				if(StringUtils.isNotEmpty(od.getPurchase_detail_id()))//更新物资审批表明细状态
					materialPurchaseDetailDao.updChoiceState(od.getPurchase_detail_id());
				order_row_no++;
			}
			return "保存成功";
		}
		return "保存失败";
	}
	/**
	 * 更新订单中已入库数量
	 * @param id					订单明细ID
	 * @param main_quantity			整件入库数量
	 * @param secondary_quantity	散件入库数量
	 * @return
	 */
	public boolean updateAlreadyNum(String id ,BigDecimal main_quantity,BigDecimal secondary_quantity){
		if(StringUtils.isEmpty(id) || null == main_quantity)//完整性判断
			return false;
		OrderDetail  orderDetail = orderDetailDaoImpl.get(id);//查询明细
		BigDecimal old_main_quantity = orderDetail.getMain_quantity();
		BigDecimal old_secondary_quantity = orderDetail.getSecondary_quantity();
		//已入库数量加上新的入库数量，如果是审批驳回需要修改，main_quantity可为负数
		BigDecimal new_main_quantity = orderDetail.getAlready_main_quantity().add(main_quantity);
		//进行四舍五入，保留两位小数
		orderDetail.setAlready_main_quantity(new_main_quantity.setScale(2,BigDecimal.ROUND_HALF_UP));
		
		BigDecimal new_secondary_quantity = null;
		BigDecimal a = null;
		BigDecimal b = null;
		
		if(null != secondary_quantity){
			//已入库数量加上新的入库数量，如果是审批驳回需要修改，main_quantity可为负数
			new_secondary_quantity = orderDetail.getAlready_secondary_quantity().add(secondary_quantity);
			//进行四舍五入，保留两位小数
			orderDetail.setAlready_secondary_quantity(new_secondary_quantity.setScale(2,BigDecimal.ROUND_HALF_UP));
			a = new_secondary_quantity;
			b = old_secondary_quantity;
		}else{			
			a = new_main_quantity;
			b = old_main_quantity;
		}
		
		if(a.compareTo(b) == -1){
			orderDetail.setIs_already("Y");
		}else{
			orderDetail.setIs_already("N");
		}
		return orderDetailDaoImpl.updateAlready(orderDetail);
	}
	
	/**
	 * 更新订单中已入库数量
	 * @param id					订单明细ID
	 * @param main_quantity			整件入库数量
	 * @param secondary_quantity	散件入库数量
	 * @return
	 */
	public boolean updateStockNum(String id ,BigDecimal main_quantity,BigDecimal secondary_quantity){
		if(StringUtils.isEmpty(id) || null == main_quantity  )//完整性判断
			return false;
		OrderDetail  orderDetail = orderDetailDaoImpl.get(id);//查询明细
		
		
		
		//已入库数量加上新的入库数量，如果是审批驳回需要修改，main_quantity可为负数
		BigDecimal new_stock_main_quantity = orderDetail.getStock_main_quantity().add(main_quantity);
		//进行四舍五入，保留两位小数
		orderDetail.setStock_main_quantity(new_stock_main_quantity.setScale(2,BigDecimal.ROUND_HALF_UP));
		
		BigDecimal new_stock_secondary_quantity = null;
		BigDecimal a = null;
		BigDecimal b = new BigDecimal(0);
		
		if(null != secondary_quantity){
			//已入库数量加上新的入库数量，如果是审批驳回需要修改，main_quantity可为负数
			new_stock_secondary_quantity = orderDetail.getStock_secondary_quantity().add(secondary_quantity);
			//进行四舍五入，保留两位小数
			orderDetail.setStock_secondary_quantity(new_stock_secondary_quantity.setScale(2,BigDecimal.ROUND_HALF_UP));
			a = new_stock_secondary_quantity;
		}else{			
			a = new_stock_main_quantity;
		}
		
		if(a.compareTo(b) == 1){
			orderDetail.setIs_stock("Y");
		}else{
			orderDetail.setIs_stock("N");
		}
		return orderDetailDaoImpl.updateStock(orderDetail);
	}
	/**
	 * 提交订单
	 * @param id
	 * @return
	 */
	public String submit(String id) {
		String material_name = "";
		Order order = orderDaoImpl.get(id);
		if(StringUtils.isNotEmpty(order.getContract_id())){
			List<OrderDetail> odQList = orderDetailDaoImpl.selectQuantityByOId(id);
			for(OrderDetail od : odQList){
				BigDecimal num = od.getMain_quantity().add((null == od.getAlready_quantity())? new BigDecimal(0):od.getAlready_quantity());
				if(num.compareTo(od.getQuantity()) == 1){
					material_name = od.getMaterial().getName()+",";
				}
			}
			if(StringUtils.isEmpty(material_name)){				
				List<OrderDetail> odList = orderDetailDaoImpl.selectDetailByOId(id);
				for(OrderDetail od : odList)
					purchaseContractDetailService.updateAlreadyNum(od.getContract_detail_id(), od.getMain_quantity());
			}else
				return "修改状态失败，明细中"+material_name.substring(0, material_name.length()-1)+"的订单数量之和大于合同数量";
		}
		order.setState("待审批");
		orderDaoImpl.updateState(order);
		return "修改状态成功";
	}
	/**
	 * 审批通过订单
	 * @param id
	 * @return
	 */
	public String approvalOk(String id) {
		Order order = orderDaoImpl.get(id);
		order.setState("审批通过");
		orderDaoImpl.updateState(order);
		List<OrderDetail> odList = orderDetailDaoImpl.selectDetailByOId(id);
		for(OrderDetail od : odList){
			planDetailService.updateResidualAmount(od.getBudget_plan_detail(), od.getAmount());
		}
		String back="修改状态成功";
		return back;
	}
	
	/**
	 * 审批驳回订单
	 * @param id
	 * @return
	 */
	public String approvalNo(String id) {
		Order order = orderDaoImpl.get(id);
		order.setState("审批退回");
		orderDaoImpl.updateState(order);
		if(StringUtils.isNotEmpty(order.getContract_id())){
			List<OrderDetail> odList = orderDetailDaoImpl.selectDetailByOId(id);
			for(OrderDetail od : odList){
				purchaseContractDetailService.updateAlreadyNum(od.getContract_detail_id(), od.getMain_quantity().multiply(new BigDecimal("-1")));
			}
		}
		String back="修改状态成功";
		return back;
	}
	
	/**
	 * 完结采购订单
	 * @param id
	 * @return
	 */
	public String updateOrderState(String id,String order_state) {
		Order order = new Order();
		order.setId(id);
		order.setOrder_state(order_state);
		orderDaoImpl.updateOrderState(order);
		return "采购订单"+order_state;
	}
	
	public List<Company> getCompany(){
		return companyServiceImpl.selectAll(); 
	}
	public List<BudgetPlanDetail> selectPlanDetailByFrame(){
		return budgetPlanService.selectPlanDetailByFrame();
	}
	/**
	 * 公共查询页面
	 * @param order
	 * @param pageNow
	 * @param pageUtil
	 * @return
	 */
	public Map<String, Object> publicSearch(Order order, String pageNow,PageUtil pageUtil) {
		Map<String, Object> map = new HashMap<String, Object>();
		order.setState("审批通过");
		order.setOrder_state("未完结");
		map.put("order", order);
		map.put("page", pageUtil.getPage(pageNow, orderDaoImpl.count(map)));
		List<Order> orderList = orderDaoImpl.selectByCondition(map);
		map.put("orderList", orderList);
		return map;
	}
	/**
	 * 公共页面查询去重复--入库
	 * @param id
	 * @param order_detail
	 * @return
	 */
	public Order selectByIdNotIn(String id,String order_detail) {
		Order order = orderDaoImpl.get(id);
		List<OrderDetail> list = orderDetailDaoImpl.selectByIdNotIn(id,order_detail);
		order.setOrderDetailList(list);
		return order;
	}
	/**
	 * 公共页面查询去重复--出库
	 * @param id
	 * @param order_detail
	 * @return
	 */
	public Order selectByIdNotOut(String id,String order_detail,String warehouse) {
		Order order = orderDaoImpl.get(id);
		List<OrderDetail> list = orderDetailDaoImpl.selectByIdNotOut(id,order_detail);
		//根据仓库查询库存中是否有此订单明细的信息，如果有添加进order对象
		for (int i = 0; i < list.size(); i++) {
			List<Stock> stocks = stockService.selectStockByWarehouseAndDetail(list.get(i).getId(),warehouse);
			if(stocks.size()<=0){
				list.remove(i);
				i--;
			}else{
			//查询库存数量
			BigDecimal  stock = stockService.selectStockByMaterialAndWarehouse(list.get(i).getMaterial_id(),warehouse);
			list.get(i).setStock(stock);
			}
		}
		order.setOrderDetailList(list);
		return order;
	}
	
	/**
	 * 自动更新订单完结状态
	 * @param id，采购订单ID
	 */
	public void updateOrderStateAutomatic(String orderId){
		List<OrderDetail> list = orderDetailDaoImpl.selectDetailByOId(orderId);
		boolean str = true;
		for(OrderDetail od : list){
			if(StringUtils.equals("Y", od.getIs_already()))
				str = false;
		}
		if(str)
			this.updateOrderState(orderId,"已完结");
	}
}