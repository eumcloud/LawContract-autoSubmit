<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서명패드</title>

<script type="text/javascript" src='<%=request.getContextPath()%>/js/jquery-1.11.3.min.js'></script>
<script type="text/javascript" src='<%=request.getContextPath()%>/js/signature_pad.min.js'></script>
<style type="text/css">
#signature-pad canvas{
background-color:#DDEDE0;
opacity:0.5;
}
.m-signature-pad{
align:center;
}
</style>
</head>
<body>
<div id="signature-pad" class="m-signature-pad">
        <div class="m-signature-pad--body">
            <canvas></canvas>
        </div>
        <div class="m-signature-pad--footer">
            <div class="description">사인해 주세요~</div>
            <button type="button" class="button clear" data-action="clear">지우기</button>
            <button type="button" class="button save" data-action="save">저장</button>
        </div>
    </div>

<script type="text/javascript" src='<%=request.getContextPath()%>/js/canvasPad.js'></script>

</body>
</html>