<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ch">
<%@ include file="../common/meta.jsp"%>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/ace/admin.category.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/falgun/bootbox.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		if("${tip}" != null && "${tip}" != ""){
			noty({"text":"${tip}","layout":"top","type":"success","timeout":"2000"});
		}
		$(".date").datetimepicker({
			language:  'zh-CN',
	        weekStart: 1,
	        todayBtn:  1,
	        format:'yyyy-mm-dd',
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 0
	    });
	});
</script>
</head>
<body>
	<div class="layout">
		<!-- top -->
		<%@ include file="../top.jsp"%>
		<!-- 导航 -->
		<%@ include file="../menu.jsp"%>
		
		<input type="hidden" id="hf_id" />

		<div class="main-wrapper">
			<div class="container-fluid">
				<div class="row-fluid ">
					<div class="span12">
						<div class="content-widgets light-gray">
							<div class="widget-head  bondi-blue" >
								<h3>售出</h3>
							</div>
							
							<div class="widget-container">
							<form action="${pageContext.request.contextPath}/admin/order/dosell" method="post">
							<div class="control-group">
								<label for="title" class="control-label">商品：</label>
								<div class="controls">
									<select name="order.item.id">
										<c:forEach items="${items}" var="bean">
												<option value="${bean.id }">${bean.name }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">客户（会员卡）：</label>
								<div class="controls">
										<input type="text" name='order.card'/>
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">数量：</label>
								<div class="controls">
									<input type="text" name='order.count'/>
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">单价：</label>
								<div class="controls">
									<input type="text" name='order.price'/>
								</div>
							</div>
								<div class="modal-footer center" id="div_footer">
									<button type="submit" class='btn btn-primary'>售出</button>
								</div>
						</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../foot.jsp"%>
	</div>
</body>
</html>