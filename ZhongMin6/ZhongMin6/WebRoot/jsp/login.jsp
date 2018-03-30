<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>安徽众民网络科技有限公司 </title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style3.css">
	<link rel="shortcut icon"  href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon" />
	<!-- For-Mobile-Apps-and-Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta name="renderer" content="webkit" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Simple Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</head>
<script type="text/javascript">
 window.onload = function(){
  if(window.parent != window){
    window.parent.location.href=window.location.href;
  } else {
    if(GetQueryString('logoutway')) {
      //alert('该用户已在其他地方登录，你已下线');
      layer.alert('该账号已在其他地方登录，您已被迫下线，如非本人操作请重新登录并及时修改密码', {
         skin: 'layui-layer-lan', //样式类名
         title: '提示'
         ,closeBtn: 0
        }, function(){
          var url = window.location.href;
          window.location.href = url.substr(0,url.indexOf('?logoutway=edge'));
        });
   }
  }
}
 
function GetQueryString(name)
{
   var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
   var r = window.location.search.substr(1).match(reg);
   if(r!=null)return unescape(r[2]); return null;
}
</script>
<body>
    <h1>众民汽车后台登录系统</h1>
    <div class="container w3">
       <!--  <h2>现在登录</h2> -->
		<form action="${pageContext.request.contextPath}/uc/login.action" method="post">
			<p style=" color:#FFF">${requestScope.message}</p>
			<div class="username">			 
				<span class="username" style="height:19px">用户:</span>
				<input type="text" name="username" class="name" placeholder="" required>
				<div class="clear"></div>
			</div>
			<div class="password-agileits">
				<span class="username"style="height:19px">密码:</span>
				<input type="password" name="password" class="password" placeholder="" required>
				<div class="clear"></div>
			</div>
			<div class="rem-for-agile">
				<input type="checkbox" name="flag" class="remember">记得我
　　
<br>
				
			</div>
			<div class="login-w3">
					<input type="submit" class="login" value="Login">
			</div>
			<div class="clear"></div>
		</form>
	</div>
	<div class="footer-w3l">
		<p> 众民公司后台登录系统</p>
	</div>
</body>
</html>