<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML>
<HEAD>
<TITLE>欢迎访问青鸟学员论坛</TITLE>

	<base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<Link rel="stylesheet" type="text/css" href="style/style.css" />
</HEAD>

<BODY>
<c:if test="${empty requestScope.typelist }">
	<jsp:forward page="/type?method=findAll"></jsp:forward>
</c:if>
<DIV>
	<IMG src="image/logo.gif">
</DIV>
<!--      用户信息、登录、注册        -->

<DIV class="h">
	您尚未　<a href="login.jsp">登录</a>
	&nbsp;| &nbsp; <A href="reg.jsp">注册</A> |
</DIV>

<!--      主体        -->
<DIV class="t">
	<TABLE cellSpacing="0" cellPadding="0" width="100%">
		<TR class="tr2" align="center">
			<TD colSpan="2">论坛</TD>
			<TD style="WIDTH: 10%;">主题</TD>
			<TD style="WIDTH: 30%">最后发表</TD>
		</TR>
	<!--       主版块       -->
		
		<TR class="tr3">
			<TD colspan="4">.NET技术</TD>
		</TR>
	<!--       子版块       -->
		<c:forEach items="${requestScope.typelist }" var="type">
			<c:if test="${type.area==1 }">
				<TR class="tr3">
					<TD width="5%">&nbsp;</TD>
					<TH align="left">
					<IMG src="image/board.gif">
					<A href="list.jsp">${type.name }</A>
					</TH>
					<TD align="center">${type.counts }</TD>
					<TH>
					<SPAN>
						<A href="detail.jsp">${type.title } </A>
					</SPAN>
					<BR/>
					<SPAN>accp</SPAN>
					<SPAN class="gray">[ ${type.times } ]</SPAN>
					</TH>
				</TR>
			</c:if>
		</c:forEach>
		
		
		
		
		<TR class="tr3">
			<TD colspan="4">Java技术</TD>
		</TR>
	<!--       子版块       -->
		
		<c:forEach items="${requestScope.typelist }" var="type">
			<c:if test="${type.area==2 }">
				<TR class="tr3">
					<TD width="5%">&nbsp;</TD>
					<TH align="left">
					<IMG src="image/board.gif">
					<A href="list.jsp">${type.name }</A>
					</TH>
					<TD align="center">${type.counts }</TD>
					<TH>
					<SPAN>
						<A href="detail.jsp">${type.title } </A>
					</SPAN>
					<BR/>
					<SPAN>accp</SPAN>
					<SPAN class="gray">[ ${type.times } ]</SPAN>
					</TH>
				</TR>
			</c:if>
		</c:forEach>
		
		
		
		<TR class="tr3">
			<TD colspan="4">数据库技术</TD>
		</TR>
	<!--       子版块       -->
		
		<c:forEach items="${requestScope.typelist }" var="type">
			<c:if test="${type.area==3 }">
				<TR class="tr3">
					<TD width="5%">&nbsp;</TD>
					<TH align="left">
					<IMG src="image/board.gif">
					<A href="list.jsp">${type.name }</A>
					</TH>
					<TD align="center">${type.counts }</TD>
					<TH>
					<SPAN>
						<A href="detail.jsp">${type.title } </A>
					</SPAN>
					<BR/>
					<SPAN>accp</SPAN>
					<SPAN class="gray">[ ${type.times } ]</SPAN>
					</TH>
				</TR>
			</c:if>
		</c:forEach>
		
		
		<TR class="tr3">
			<TD colspan="4">娱乐</TD>
		</TR>
	<!--       子版块       -->
		
		<c:forEach items="${requestScope.typelist }" var="type">
			<c:if test="${type.area==4 }">
				<TR class="tr3">
					<TD width="5%">&nbsp;</TD>
					<TH align="left">
					<IMG src="image/board.gif">
					<A href="list.jsp">${type.name }</A>
					</TH>
					<TD align="center">${type.counts }</TD>
					<TH>
					<SPAN>
						<A href="detail.jsp">${type.title } </A>
					</SPAN>
					<BR/>
					<SPAN>accp</SPAN>
					<SPAN class="gray">[ ${type.times } ]</SPAN>
					</TH>
				</TR>
			</c:if>
		</c:forEach>
		
		
		
	</TABLE>
</DIV>

<BR/>
<CENTER class="gray">2007 Beijing Aptech Beida Jade Bird
Information Technology Co.,Ltd 版权所有</CENTER>
</BODY>
</HTML>