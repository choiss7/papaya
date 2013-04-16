1. excel msgr 변경

  - /sms/web/sms-apache-tomcat-4.1.39/webapps/sms/modules/index.html 에서 Host, SupportUrl, HelpUrl 경로 정보 확인

  - /sms/web/sms-apache-tomcat-4.1.39/webapps/sms/modules/excel/DacomSMSPro.ini 에서 아래 수정
  [<option>]
  InstallFolder=<ProductDir>
  DateTime=2009-06-30, 14:00:00  // 해당일 이전 정보일 경우 client의 opsection.ini update
  Size=303						 // opsection.ini 파일의 크기
  DownloadUrl=DacomSMSPro/opsection.in

  - /sms/web/sms-apache-tomcat-4.1.39/webapps/sms/modules/excel/DacomSMSPro/opsection.ini 에서 아래 수정
  Host=@ygo^Ci2}6Q''X&2rw  		//sms.lgdacom.net 을 Installer2Enc.exe 에서 encode
  Path=VK?NNL~m)9$,luB_*^
  File=DacomSMSPro.ini
  NoMessageBox=1

  [Vars]
  <INFO>
  <Listener>164.124.119.154:2710</Listener>						// ezServer Listener
  <SupportUrl>http:&slsh;&slsh;sms.lgdacom.net</SupportUrl>		// web URL
  <HelpUrl>http:&slsh;&slsh;sms.lgdacom.net&slsh;modules&slsh;help</HelpUrl>
  </INFO>
