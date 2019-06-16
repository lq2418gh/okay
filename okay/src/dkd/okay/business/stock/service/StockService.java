package dkd.okay.business.stock.service;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dkd.okay.business.stock.bo.Stock;
import dkd.okay.business.stock.dao.StockDao;
import dkd.okay.business.storage.bo.StorageDetail;
import dkd.okay.business.storage.bo.StorageHead;
import dkd.okay.system.util.page.PageUtil;
import dkd.okay.system.util.uuid.UUIDGenerator;

@Service(value="StockService")
@Transactional
public class StockService {
	@Autowired
	private StockDao stockDao;

	/**
	 * 从入库传来的  主表数据和明细数据  添加到库存
	 * @param storageHead
	 * @param storageDetailList
	 * @param id
	 * @param type true=正常入库，false=直达现场
	 */
	public void save(StorageHead storageHead, List<StorageDetail> storageDetailList, String id,boolean type) {
		for (int i = 0; i < storageDetailList.size(); i++) {
			
			Stock stock = new Stock();
			stock.setId(UUIDGenerator.getUUID());
			
			stock.setWarehouse(storageHead.getWarehouse());
			stock.setUser_id(storageHead.getUser_id());
			stock.setFrame_id(storageHead.getFrame_id());
			stock.setContract_id(storageHead.getContract_id());
			stock.setStroageHead(id);
			stock.setOrder_frame(storageHead.getOrder_frame());
			
			stock.setStroageDetail(storageDetailList.get(i).getId());
			stock.setMaterial(storageDetailList.get(i).getMaterial());
			stock.setOrder_detail(storageDetailList.get(i).getOrder_detail());
			if(StringUtils.isEmpty(storageDetailList.get(i).getUnit_help())){
				if(type==false){
					stock.setStockNum(BigDecimal.ZERO);	
				}else{
					stock.setStockNum(storageDetailList.get(i).getMain_quantity());
				}
			}
			if (StringUtils.isNotEmpty(storageDetailList.get(i).getUnit_help())) {
				if(type==false){
					stock.setStockNum(BigDecimal.ZERO);	
				}else{
					stock.setStockNum(storageDetailList.get(i).getSecondary_quantity());
				}
			}
			stockDao.save(stock);
		}
	}

	/**
	 * 查询
	 * @param pageNow
	 * @param stock
	 * @return
	 */
	public Map<String, Object> select(String pageNow, Stock stock) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil();	
		map.put("stock", stock);
		map.put("page", pageUtil.getPage(pageNow, stockDao.count(map)));//根据父ID查询数量
		List<Stock> list = stockDao.selectByCondition(map);//根据父ID查询信息
		map.put("list",list);
		return map;
	}
	/**
	 * 扣减库存
	 * @param stock
	 * @return
	 */
	public void subStock(String detail, BigDecimal num,String warehouse) {
		Map<String, Object> map = new HashMap<String, Object>();
		//根据明细正序查出所有的库存记录，循环取出，扣减数量；
		List<Stock> list = stockDao.selectByDetail(detail,warehouse);
		BigDecimal count = num;
		for (int i = 0; i < list.size(); i++) {
			int reduis = (count.subtract(list.get(i).getStockNum())).compareTo(BigDecimal.ZERO);
			if(reduis == -1 || reduis == 0){
				list.get(i).setStockNum(list.get(i).getStockNum().subtract(count));
				//回填数量
				map.put("id",list.get(i).getId());
				map.put("stockNum",list.get(i).getStockNum());
				stockDao.updateStockNum(map);
				break;
			}else{
				count=count.subtract(list.get(i).getStockNum());
				list.get(i).setStockNum(BigDecimal.ZERO);
				//回填数量
				map.put("id",list.get(i).getId());
				map.put("stockNum",list.get(i).getStockNum());
				stockDao.updateStockNum(map);
			}
		}
	}
	/**
	 * 查询物资库存数量
	 * @param material
	 * @return int
	 */
	public int selectStockByMaterial(String material){
		int num =0;
		String sum=stockDao.selectStockByMaterial(material);
		if(StringUtils.isNotEmpty(sum)){
			num=Integer.parseInt(sum);
		}
		return num;
	}

	/**
	 * 查询物资库存数量
	 * @param material
	 */
	public BigDecimal selectStockByMaterialAndWarehouse(String material,String warehouse){
		BigDecimal num =BigDecimal.ZERO;
		String sum=stockDao.selectStockByMaterialAndWarehouse(material,warehouse);
		if(StringUtils.isNotEmpty(sum)){
			num=new BigDecimal(sum);
		}
		return num;
	}
	/**
	 * 根据仓库和采购订单 查询相关的明细信息
	 */
	public List<Stock> selectStockByWarehouseAndDetail(String order_detail,String warehouse){
		return stockDao.selectStockByWarehouseAndDetail(order_detail,warehouse);
	}
}
