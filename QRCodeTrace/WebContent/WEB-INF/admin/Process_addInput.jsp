<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>加工添加</title>
<c:set var="rootPath" value="${pageContext.request.contextPath}/admin" />
<link rel="stylesheet" type="text/css" href="${rootPath}/dataWidget/css/lq.datetimepick.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/menu.js"></script>

</head>

<body>
<!--
<div class="top"></div>
-->
<div id="header">
	<div class="logo">二维码追溯系统管理平台</div>
	<div class="navigation">
		<ul>
		 	<li>欢迎您！</li>
			<li>admin</li>
			<li><a href="${rootPath}/User_loginOut">退出</a></li>
		</ul>
	</div>
</div>
<div id="content">
	<c:import url="public/left_menu.jsp"></c:import>
		<div class="m-right">
			<!-- <div class="right-nav">
				<ol class="breadcrumb">
                    <li><a href="#">首页</a></li>
                    <li><a href="#">我的书</a></li>
                    <li class="active">《图解CSS3》</li>
                </ol>
			</div> -->
			<div class="main" >
			 <s:form name="process_form" action="Process_processSave" method="post" theme="simple" onsubmit="return checkAll()">
			 <s:token></s:token>
                <div >
                    <div style="margin:10px">
                        <h3>加工添加列表</h3>
                    </div>
                    <table class="table" style="margin-left:10px; width:100% ">            
                    <thead>
                        <tr>
                            <th style="width:30%">类别</th>
                            <th>内容</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>加工企业名称</td>
                            <td><s:textfield name="companyName"></s:textfield>
                           		 <s:hidden name="pro_id" value="%{#request.pro_id}"></s:hidden>
                            </td>
                        </tr>
                        <tr>
                            <td>加工方式</td>
                            <td><s:textfield name="method"></s:textfield></td>
                        </tr>
                        <tr>
                            <td>加工车间温度</td>
                            <td><s:textfield name="workshopTemperature"></s:textfield></td>
                        </tr>
                        <tr>
                            <td>包装形式</td>
                            <td><s:textfield name="packing"></s:textfield></td>
                        </tr>
                        <tr>
                            <td>入库时间</td>
                            <td><s:textfield id="dateValue" name="storageTime" onclick="WdatePicker()" onblur="checkDate();"></s:textfield>
                            <span id="tip"></span></td>
                        </tr>
                        <tr>
                            <td>冷温库温度</td>
                            <td><s:textfield name="refrigeratorTemperature"></s:textfield></td>
                        </tr>
                        <tr>
                            <td>出厂前微生物检测</td>
                            <td><s:textfield name="animalcule"></s:textfield></td>
                        </tr>
                    </tbody>
                    </table>
                </div>
				<div style="margin-left:30px">
                    <button class="btn btn-default">添加</button>   
                    <a href="${rootPath}/Product_processInfoShow"><button class="btn btn-default" type="button">返回</button></a>
                </div>
                 </s:form>    
			</div>
		</div>
</div>
<!--
<div class="bottom" ></div>
-->
<div id="footer"><p>Copyright©  2016 来源:<a href="#" target="_blank">丁香苑C416</a></p></div>
<script type="text/javascript" src="${pageContext.request.contextPath}/dateWidget/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/check.js"></script>
<script>navList(12);</script>
</body>
</html>
