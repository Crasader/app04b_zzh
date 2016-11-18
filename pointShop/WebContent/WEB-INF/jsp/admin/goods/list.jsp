<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="../../common/inc/tld.jsp"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<jsp:include page="../../common/inc/header.jsp">
    <jsp:param name="title" value="商品管理-商品列表"/>
</jsp:include>
<a href="${ctx}/admin/goods/doAdd.action">新增</a><br/>
<table border="1">
    <tr>
        <th>ID</th>
        <th>商品名称</th>
        <th>商品描述</th>
        <th>原需积分</th>
        <th>现需积分</th>
        <th>是否已发布</th>
        <th></th>
        <th></th>
        <th></th>
    </tr>
    <s:iterator value="page.items">
    <tr>
        <td><s:property value="id"/></td>
        <td><s:property value="name"/></td>
        <td><s:property value="description"/></td>
        <td><s:property value="originalPoint"/></td>
        <td><s:property value="nowPoint"/></td>
        <td><s:property value="published"/></td>
        <td><a href="${ctx}/admin/goods/doUpdate.action?id=<s:property value='id'/>">编辑</a></td>
        <td><a href="${ctx}/admin/goods/doDelete.action?id=<s:property value='id'/>">删除</a></td>
        <td><a href="${ctx}/admin/goodsCode/list.action?goodsId=<s:property value='id'/>">查看兑换码</a></td>
    </tr>    
    </s:iterator>
</table>
<my:page url="${ctx}/admin/goods/list.action" version="v2"/>
<jsp:include page="../../common/inc/footer.jsp"/>