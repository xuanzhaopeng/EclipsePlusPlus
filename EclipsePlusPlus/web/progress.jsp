<%-- 
    Document   : progress
    Created on : 10 janv. 2014, 00:07:34
    Author     : xuanzhaopeng
--%>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- 自定义标签的引入 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>进度条</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<!-- js文件和代码 -->
		<mce:script type="text/javascript" src="web/jslib/progress.js" mce_src="web/jslib/progress.js"></mce:script>
	</head>
	<body id="go" onload="go();" style="top:200px;hight:800px">
		<div style="top:145px;width:600px; z-index: 100;border: none;">
   			<%int i = 1; %>
			<table border="0" align="center" cellpadding="0" cellspacing="0">
				<br>
				<br>
				<tr>
					<td height="20" colspan="3" valign="top">
						<center><h2>数据正在处理中，请稍候……</h2></center>
					</td>
				</tr>
				<tr>
					<td colspan="3" valign="top">
						<table align="center">
							<tr>
								<td align="center">
								     <div id="progressBar" style="padding:2px;border:solid green 1px;visibility:hidden" mce_style="padding:2px;border:solid green 1px;visibility:hidden" align="left">
									       <div style="width:800px">
									                <c:forEach begin="1" end="50" step="1" >
									                	<span id="block<%=i++ %>" style="width:2%;"></span>
									                </c:forEach>
									        </div>
								      </div>
								 </td>
								 <td align="center" id="finish"></td>
							</tr>
							<tr>
								<td align="center" id="complete">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>   
		</div>
	</body>
</html>
