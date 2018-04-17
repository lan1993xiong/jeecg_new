<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>请假信息表</title>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<script type="text/javascript">
	//编写自定义JS代码
</script>
</head>
<body>
	<t:formvalid formid="formobj" dialog="true" usePlugin="password"
		layout="table" action="leaveActivitController/complete.do">
		<input id="taskid" name="taskId" type="hidden" value="${taskId}" />
		<input id="processInstanceId" name="processInstanceId" type="hidden" value="${processInstanceId}" />
		<table style="width: 600px;" cellpadding="0" cellspacing="1"
			class="formtable">
			<tr>
				<td align="center" width="100px"><label class="Validform_label">操作类型:</label></td>
				<td class="value"><t:dictSelect field="operation" type="select"
						typeGroupCode="operation" hasLabel="false" title="操作类型"
						defaultVal="agree"></t:dictSelect> <span class="Validform_checktip"></span>
				</td>
			</tr>
			<tr>
				<td align="right"><label class="Validform_label">
						审批意见: </label></td>
				<td class="value" colspan="3"><textarea style="width: 100%;height: 100%;"
						class="inputxt" rows="6" id="institudeComment"
						name="institudeComment" ignore="ignore"></textarea> <span
					class="Validform_checktip"></span> <label class="Validform_label"
					style="display: none;">审批意见</label></td>
			</tr>
		</table>
	</t:formvalid>
</body>
<script src="webpage/com/jeecg/gpnu/leaveInfo.js"></script>