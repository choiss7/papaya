<%@page contentType="text/html; charset=euc-kr"%>
<html>
<head>
<script language="javascript" src="WebInstaller.js"></script>
<script language="javascript">
function oninstall()
{
	if(inst.object == null)
	{
		alert("인스톨러가 설치되지 않았습니다.");
		return;
	}
	
<%
	if (request.getServerName().equals("sms2.uplus.co.kr")) {
%>
	AddOption("Host", "A6rw&:+@%hVYd? bT0]");	
<%
	}else {
%>
	AddOption("Host", "~MVMpp?Y)612=bYAAGn<-");
<%
	}
%>
	
	AddOption("Path", "2(Rmw{If!C:PmXP2Z>");       

	AddOption("File", "DacomSMSPro.ini");
	AddOption("NoMessageBox", "1");

<%
        if (request.getServerName().equals("sms2.uplus.co.kr")) {
%>

	AddInfoVar("Listener", "164.124.119.250:2710");	
<%
        }else {
%>
	AddInfoVar("Listener", "112.155.233.155:2710");
<%
        }
%>

	AddInfoVar("SupportUrl", ReplaceCode("http://sms2.uplus.co.kr"));
	AddInfoVar("HelpUrl", ReplaceCode("http://sms2.uplus.co.kr/help/help-01.htm"));

	errcode = inst.InstallSection(GetSection(), 0);
	if(errcode > 2) alert(inst.GetErrorMessage(errcode));
}
</script>
</head>
<body onload="oninstall(); return true;" topmargin="0" leftmargin="0">
<script type="text/javascript">object_patch('1,0,0,2')</script>
</body>
</html>
