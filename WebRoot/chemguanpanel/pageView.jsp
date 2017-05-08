<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<div id=PageSelectorBar>
			<div id=PageSelectorMemo>
				页次：${pageBean.currentPage }/${pageBean.pageCount }页 &nbsp;
				每页显示：${pageBean.pageSize }条 &nbsp;
				总记录数：${pageBean.recordCount }条
			</div>
			<div id=PageSelectorSelectorArea>
				<!--
				<IMG SRC="${pageContext.request.contextPath}/style/blue/images/pageSelector/firstPage2.png"/>
				-->
				<a href="javascript:void(0)" title="首页" onclick="gotoPageNum(1)" style="cursor: hand;">
					<!-- <img src="${pageContext.request.contextPath}/style/blue/images/pageSelector/firstPage.png"/> -->首页
				</a>
				
				<c:forEach begin="${pageBean.beginPageIndex}" end="${pageBean.endPageIndex}" var = "s">
					<c:if test="${pageBean.currentPage == s}">
						<span class="PageSelectorNum PageSelectorSelected">${s }</span>
					</c:if>
					<c:if test="${pageBean.currentPage != s}">
						<span class="PageSelectorNum" style="cursor: hand;" onclick='gotoPageNum(${s});'>${s }</span>
					</c:if>
				</c:forEach>
				
				<a href="javascript:void(0)" title="尾页" onclick="gotoPageNum(${pageBean.pageCount})" style="cursor: hand;">
					<!-- <img src="${pageContext.request.contextPath}/style/blue/images/pageSelector/lastPage.png"/> -->尾页</a>
				
				转到：
				<select id="pages" onchange="gotoPageNum(this.value)">
					<c:forEach begin="1" end="${pageBean.pageCount}" var="s">
						<option value='${s }'>${s }</option>
					</c:forEach>
				</select>
				<script type="text/javascript">
					$("#pages").val(${pageBean.currentPage});
				</script>
			</div>
		</div>
		
		
		
		
		
		
		<script type="text/javascript">
			function gotoPageNum(pageNum){
					$("#pageForm").append('<input type="hidden" value="'+pageNum+'" name="currentPage"/>');
					$("#pageForm").submit();
				}
		</script>