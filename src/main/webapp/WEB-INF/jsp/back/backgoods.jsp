<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/public/backpublic.jsp"%>
<script type="text/javascript" src="<%=request.getContextPath()%>/easyui/datagrid-detailview.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/back/goods.js"></script>
<title>后台模版管理</title>。
</head>
<body>
	<table id="back-good"></table>
	<div id="tb">
		<div style="padding: 5px;">
			根据商品名称来查询： <select class="easyui-textbox" id="name" name="name"
				data-options="iconCls:'icon-search'" style="width: 180px"
				prompt="请输入你要查询的商品名"></select>
			<button id="btn" class="easyui-linkbutton"
				data-options="iconCls:'icon-search'" onClick="search()">查询</button>

			<a id="remove" class="easyui-linkbutton"
				data-options="iconCls:'icon-remove'">下架</a> <a id="add"
				class="easyui-linkbutton" data-options="iconCls:'icon-add'">新品上架</a>
			<a id="redo" class="easyui-linkbutton"
				data-options="iconCls:'icon-redo'" style="display: none">取消编辑</a> <a
				id="submit" class="easyui-linkbutton"
				data-options="iconCls:'icon-save'" style="display: none">保存</a>
(可进行双击修改)
		</div>

	</div>
	<div id="back-modelCategory"></div>

	<div id="win"
		data-options="collapsible:false,minimizable:false,maximizable:false,modal:true"></div>


</body>
</html>