
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.web.DTO.ContractFile"%>
<%@page import="com.web.DTO.Condition"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.web.DAO.ConditionDAO"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%

	ConditionDAO conditionDAO = new ConditionDAO();
	Connection conn = conditionDAO.getConn();
	Condition condition = new Condition();
	
	condition.setNo(conditionDAO.getAI(conn, "contractinfo"));
	condition.setCreditor((String)session.getAttribute("creditor"));
	condition.setCreditorAddr((String)session.getAttribute("creditorAddr"));
	condition.setCreditorResiNum((String)session.getAttribute("creditorRegiNum"));
	condition.setCreditorEmail((String)session.getAttribute("creditorEmail"));
	condition.setSignDate((String)session.getAttribute("signdate"));
	condition.setDeadLine((String)session.getAttribute("deadline"));
	condition.setMoney((String)session.getAttribute("money"));
	condition.setDeptor((String)session.getAttribute("deptor"));
	condition.setDeptorAddr((String)session.getAttribute("deptorAddr"));
	condition.setDeptorEmail((String)session.getAttribute("deptorEmail"));
	condition.setSpcContents((String)session.getAttribute("spcContents"));
	condition.setSignDate((String)session.getAttribute("signdate"));

	conditionDAO.getMultiReq(request);
	conditionDAO.insert(conn, condition);
	ContractFile cf = conditionDAO.getcontractFile(request, condition);
	conditionDAO.Insert(conn, cf);
	session.setAttribute("fno", cf.getFno());
%>
<jsp:forward page="/index.jsp">
<jsp:param value="signatureForm" name="currentPage"/>
</jsp:forward>