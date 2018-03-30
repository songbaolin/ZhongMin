<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta charset="UTF-8">
	<title>添加用户</title>
	<meta name="keywords" content="">
	<meta name="content" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
   <%--  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script> --%>
 
    <link rel="stylesheet" type="text/css" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
     <script type="text/javascript">
		function checkForm(){
		// 校验用户名:
			var cityName = document.getElementById("cityName").value;
			if(cityName.length>20){
				alert("城市名不能超过20个字符");
				return false;
			}
			if(cityName == ''){
				alert("城市名不能为空!");
				return false;
			}
		
		// 校验密码:
			var cityUrl = document.getElementById("cityUrl").value;
			if(cityUrl == ''){
				alert("Url不能为空!");
				return false;
			}
			if(cityUrl.length>20){
				alert("Url长度不能超过20！");
				return false;
			}
			
			
			
		}
	
	</script>
</head>
     <div class="place" style=" margin-top:-10px">
    <span>位置：</span>
    <ul class="placeul">
   
    <li><a href="#">表单</a></li>
    </ul>
    </div>
  
    <div style="width:350px;margin:0px auto;">
        <form action="#" class='form' method="post"  onsubmit="<!-- return checkForm() -->">
            <div class="formtitle"><span>添加城市</span></div>
            <div style="height:45px;line-height:45px;background: #fff;width:350px;padding-left:15px;margin-top: 32px;position: relative;">
                <span class="glyphicon glyphicon-map-marker" style="font-size:18px;vertical-align:middle;top:-3px;color: #999;"></span>&nbsp;&nbsp;&nbsp;
                <input type="text"  id="cityName" name="cityName" style="height:45px;border:0;width:297px;" placeholder="例如：界首市或颍州区" maxlength="5">
                <span style='position:absolute;right: 0;bottom:-37px;font-size:13px;color: #f00;'></span>
            </div>
            
            <div style="height:45px;line-height:45px;background: #fff;width:350px;padding-left:15px;margin-top: 32px;position: relative;">
                <span class="glyphicon glyphicon-tree-deciduous" style="font-size:18px;vertical-align:middle;top:-3px;color: #999;"></span>&nbsp;&nbsp;&nbsp;
                <input type="text" name=cityUrl  id="cityUrl" style="height:45px;border:0;width:297px;"  placeholder="例如：/fuyang.jsp">
                <span style='position:absolute;right: 0;bottom:-37px;font-size:13px;color: #f00;'></span>
            </div>           
            <input type="submit" class="button" value="提交" style="padding: 10px 20px;border-radius: 10px;margin:30px auto 70px;margin-left: 35px;">
             <div style="margin-bottom:50px;">
             
             <p style="color:red;margin-left: 38px; ">请勿随意添加</p>
                    <p>pc端添加的url格式：例如/jsp/fuyang.jsp</p>
                    <p>手机端添加url格式：例如：/mobile/fuyang.jsp</p>
             </div>
                    
            
        </form>
    </div>

</body>
</html>
