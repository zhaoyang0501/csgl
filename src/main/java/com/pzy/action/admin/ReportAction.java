package com.pzy.action.admin;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.json.annotations.JSON;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.pzy.entity.Item;
import com.pzy.entity.Order;
import com.pzy.entity.Seller;
import com.pzy.service.ItemService;
import com.pzy.service.OrderService;
import com.pzy.service.SellerService;
/***
 * 订单管理
 * http://127.0.0.1:8080/tuangou/admin/order/index
 *
 */
@Namespace("/admin/report")
@ParentPackage("json-default")
public class ReportAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private Integer sEcho = 1;
	private Integer iDisplayStart = 0;
	private Integer iDisplayLength = 10;
	private Map<String, Object> resultMap = new HashMap<String, Object>();
	private String tip;
	private String name;
	private Long id;
	private Order order;
	private Date begain;
	private Date end;
	private List<Order> orders;
	private List<Item> items;
	private List<Seller> sellers;
	@Autowired
	private OrderService orderService;
	@Autowired
	private ItemService  itemService;
	@Autowired
	private SellerService serllerService;

	@Action(value = "sellreport", results = { @Result(name = "success", location = "/WEB-INF/views/admin/report/sell.jsp") })
	public String sellreport() {
		return SUCCESS;
	}
	@Action(value = "buyreport", results = { @Result(name = "success", location = "/WEB-INF/views/admin/report/buy.jsp") })
	public String buyreport() {
		return SUCCESS;
	}
	@Action(value = "sellerreport", results = { @Result(name = "success", location = "/WEB-INF/views/admin/order/seller.jsp") })
	public String sellerreport() {
		return SUCCESS;
	}
	@Action(value = "sellreportlist", results = { @Result(name = "success", type = "json") }, params = {
			"contentType", "text/html" })
	public String sellreportlist() {
		List<Order> orders = orderService.findAll("出库",begain,end);
		List<Item> items = itemService.findAll();
		List<String> dates=new ArrayList<String>();
		List<Double> sells=new ArrayList<Double>();
		List<Double> buys=new ArrayList<Double>();
		List<Double> tmpmin=new ArrayList<Double>();
		List<Double> aqi=new ArrayList<Double>();
		List<Double> pm25=new ArrayList<Double>();
		List<Double> sd=new ArrayList<Double>();
		
		for(Item bean:items){
			dates.add(bean.getName());
			sells.add(orderService.findPricesell(begain, end, bean.getId())==null?0:orderService.findPricesell(begain, end, bean.getId()));
			buys.add(orderService.findPriceBuy(begain, end, bean.getId())==null?0:orderService.findPriceBuy(begain, end, bean.getId()));
			/*sells.add(23d);
			buys.add(11d);*/
		}
		resultMap.put("dates", dates);
		resultMap.put("sells", sells);
		resultMap.put("buys", buys);
		resultMap.put("sEcho", sEcho);
		return SUCCESS;
	}

	/* ~~~~~~~~get and setter~~~~~~~~~ */
	@JSON
	public Map<String, Object> getResultMap() {
		return resultMap;
	}

	public void setResultMap(Map<String, Object> resultMap) {
		this.resultMap = resultMap;
	}

	public Integer getSEcho() {
		return sEcho;
	}

	public void setSEcho(Integer sEcho) {
		this.sEcho = sEcho;
	}

	public Integer getIDisplayStart() {
		return iDisplayStart;
	}

	public void setIDisplayStart(Integer idisplayStart) {
		this.iDisplayStart = idisplayStart;
	}

	public Integer getIDisplayLength() {
		return iDisplayLength;
	}

	public void setIDisplayLength(Integer iDisplayLength) {
		this.iDisplayLength = iDisplayLength;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}
	public List<Item> getItems() {
		return items;
	}
	public void setItems(List<Item> items) {
		this.items = items;
	}
	public List<Seller> getSellers() {
		return sellers;
	}
	public void setSellers(List<Seller> sellers) {
		this.sellers = sellers;
	}
	public String getTip() {
		return tip;
	}
	public void setTip(String tip) {
		this.tip = tip;
	}
	public Date getBeagin() {
		return begain;
	}
	public void setBeagin(Date beagin) {
		this.begain = beagin;
	}
	public Date getEnd() {
		return end;
	}
	public void setEnd(Date end) {
		this.end = end;
	}
	public Date getBegain() {
		return begain;
	}
	public void setBegain(Date begain) {
		this.begain = begain;
	}
}
