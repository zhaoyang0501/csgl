<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="leftbar leftbar-close clearfix">
	<div class="admin-info clearfix">
		<div class="admin-thumb">
			<i class="icon-user"></i>
		</div>
		<div class="admin-meta">
			<ul>
				<li class="admin-username" style="margin-top: 10px;">欢迎你 ${sessionScope.adminuser.name}</li>
				<li><a href="${pageContext.request.contextPath}/admin/loginout">
				<i class="icon-lock"></i> 退出</a></li>
			</ul>
		</div>
	</div>

	<div class="left-nav clearfix">
		<div class="left-primary-nav">
			<ul id="myTab">
				<li  class="active"><a href="#dailyreport" class=" icon-user" data-original-title="基础数据管理"></a></li>
				<li  class=""><a href="#bbb" class=" icon-print" data-original-title="报表管理"></a></li>
				<li  class=""><a href="#ccc" class="icon-road" data-original-title="明细查询"></a></li>
				<li  class=""><a href="#ddd" class="icon-indent-left" data-original-title="日常操作"></a></li>
			</ul>
		</div>
		<div class="responsive-leftbar">
			<i class="icon-list"></i>
		</div>
		<div class="left-secondary-nav tab-content" >
			<div class="tab-pane active dailyreport" id="dailyreport">
				<ul id="nav" class="accordion-nav" >
					<li><a href="${pageContext.request.contextPath}/admin/adminuser/centerdetail"><i class="icon-upload"></i>个人中心 </a></li>
					<li><a href="${pageContext.request.contextPath}/admin/adminuser/index"><i class="icon-zoom-in"></i>员工管理</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/category/index"><i class="icon-upload"></i> 商品分类管理 </a></li>
					<li><a href="${pageContext.request.contextPath}/admin/seller/index"><i class="icon-upload"></i> 供应商管理 </a></li>
					<li><a href="${pageContext.request.contextPath}/admin/item/index"><i class="icon-upload"></i>商品管理 </a></li>
				</ul>
			</div>
			<div class="tab-pane  bbb" id="bbb">
				<ul id="nav" class="accordion-nav" >
					<li><a href="${pageContext.request.contextPath}/admin/report/sellreport"><i class="icon-upload"></i>销售报表 </a></li>
					<li><a href="${pageContext.request.contextPath}/admin/report/buyreport"><i class="icon-upload"></i>进货报表 </a></li>
					<li><a href="${pageContext.request.contextPath}/admin/report/avgreport"><i class="icon-upload"></i>利润表 </a></li>
			
				</ul>
			</div>
			<div class="tab-pane  ccc" id="ccc">
				<ul id="nav" class="accordion-nav" >
					<li><a href="${pageContext.request.contextPath}/admin/order/inlist"><i class="icon-upload"></i>进货明细</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/order/outlist"><i class="icon-upload"></i>出库明细 </a></li>
					<li><a href="${pageContext.request.contextPath}/admin/kc/index"><i class="icon-upload"></i>库存管理 </a></li>
				</ul>
			</div>
			<div class="tab-pane  ddd" id="ddd">
				<ul id="nav" class="accordion-nav" >
					<li><a href="${pageContext.request.contextPath}/admin/order/sell"><i class="icon-upload"></i>商品销售 </a></li>
					<li><a href="${pageContext.request.contextPath}/admin/order/gobuy"><i class="icon-upload"></i>商品入库 </a></li>
					
					<li><a href="${pageContext.request.contextPath}/admin/order/back"><i class="icon-upload"></i>商品退货 </a></li>
					
					
				</ul>
			</div>
		</div>
	</div>
</div>