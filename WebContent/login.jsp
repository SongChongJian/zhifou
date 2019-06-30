<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<title>登录 - 知否</title>
<link rel="stylesheet" type="text/css" href="styles/register-login.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/assets/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/bootstrap-3.3.7-dist/css/bootstrap.css">
</head>
<body>
<div id="box"></div>
<div class="cent-box">
	<div class="cent-box-header">
		<h1 class="main-title hide">知否</h1>
		<h2 class="sub-title">生活热爱分享</h2>
	</div>

	<div class="cont-main clearfix">
		<div class="index-tab">
			<div class="index-slide-nav">
				<a href="login.jsp" class="active">登录</a>
				<a href="register.jsp">注册</a>
				<div class="slide-bar"></div>				
			</div>
		</div>
		<form action="userservlet" method="post" onsubmit="return checkall()">
			<div class="login form">
				<div class="group">
					<div class="group-ipt email">
						<input type="text" name="mail" id="email" class="ipt" onblur="check_mail(this)" autocomplete="off" placeholder="邮箱地址" required>
						<input type="hidden" name="method" value="login" />
					</div>
					<div id="mail_message"></div>
					<div class="group-ipt password">
						<input type="password" name="password" id="password" class="ipt" onblur="check_password(this)" autocomplete="off" placeholder="输入您的登录密码" required>
					</div>
					<div id="password_message"></div>
					<div class="group-ipt verify">
						<input type="text" name="checkcode" id="verify" class="ipt" onblur="check_checkcode(this)" autocomplete="off" placeholder="输入验证码" required>
						<img onclick="changeImg(this)" src="checkimageservlet" class="imgcode" />
					</div>
					<div id="checkcode_message"></div>
				</div>
			</div>
			<div class="button">
			<button type="submit" class="login-btn register-btn" id="button">登录</button>
			</div>
		</form>
		

		<div class="remember clearfix">
			<label class="remember-me"><span class="icon"><span class="zt"></span></span><input type="checkbox" name="remember-me" id="remember-me" class="remember-mecheck" checked>记住我</label>
			<label class="forgot-password">
				<a href="#">忘记密码？</a>
			</label>
		</div>
		
	</div>
</div>

<div class="footer">
	<p>知否 - ZhiFou</p>
	<p>Designed By ZhiFou & <a href="zrong.me">mycodes.net</a> 2019</p>
</div>

<script src='js/particles.js' type="text/javascript"></script>
<script src='js/background.js' type="text/javascript"></script>
<script src='js/jquery.min.js' type="text/javascript"></script>
<script src='js/layer/layer.js' type="text/javascript"></script>
<script src='js/index.js' type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/assets/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/bootstrap-3.3.7-dist/css/bootstrap.css">
<script>
	$('.imgcode').hover(function(){
		layer.tips("看不清？点击更换", '.verify', {
        		time: 6000,
        		tips: [2, "#3c3c3c"]
    		})
	},function(){
		layer.closeAll('tips');
	});
	$("#remember-me").click(function(){
		var n = document.getElementById("remember-me").checked;
		if(n){
			$(".zt").show();
		}else{
			$(".zt").hide();
		}
	});
	/* 更改验证码 */
	function changeImg(e){
		e.src="checkimageservlet?time="+new Date().getTime();
	}
	//密码
	function check_password(e){
		var password = e.value;
		var passReg = /\w{6,18}/;
		if(!passReg.test(password)){
			document.getElementById("password_message").innerHTML = "密码格式不正确(6-18位)！";
			document.getElementById("password_message").style.color = "red";
			return false;
		}else{
			document.getElementById("password_message").innerHTML = "✔";
			document.getElementById("password_message").style.color = "green";
			return true;
		}
	}
	document.getElementsByName("password")[0].onfocus=function(){
		check_username(document.getElementsByName("username")[0]);
	}
	
	//邮箱
	function check_mail(e){
		var email = e.value;
		var emailReg=/^\w+@\w+\.[A-Za-z]{2,3}$/;
		if(!emailReg.test(email)){
		/* 	$('#mail_message').popover('show'); */
			document.getElementById("mail_message").innerHTML = "邮箱格式不正确，请检查！！";
			document.getElementById("mail_message").style.color = "red";
			return false;
		}
		document.getElementById("mail_message").innerHTML = "✔";
		document.getElementById("mail_message").style.color = "green";
		return true;
	}
	document.getElementsByName("mail")[0].onfocus=function(){
		check_username(document.getElementsByName("username")[0]);
		check_password(document.getElementsByName("password")[0]);
		/* check_checkpassword(document.getElementsByName("checkpassword")[0]); */
	}
	//验证码
	function check_checkcode(e){
		var checkcode = e.value;
		if(checkcode == null || checkcode.trim() == ""){
			document.getElementById("checkcode_message").innerHTML = "请输入验证码!";
			document.getElementById("checkcode_message").style.cssText="color:red;font-size: 11px";
			return false;
		}else{
			$.ajax({
				url:"/zhifou/userservlet",
				async:true,
				type:"POST",
				data:{"checkcode":checkcode,"method":"codeCheck"},
				success:function(data){
					if (data == 0) {
						document.getElementById("checkcode_message").innerHTML = "验证码不正确!";
						document.getElementById("checkcode_message").style.cssText="color:red;font-size: 11px";
						
					}else{
						document.getElementById("checkcode_message").innerHTML = "✔";
						document.getElementById("checkcode_message").style.color = "green";
					}
				},
				error:function(){
					alert("请求失败");
				},
				dataType:"json"				
			});
			return true;
		}
	}
	document.getElementsByName("checkcode")[0].onfocus=function(){
		check_password(document.getElementsByName("password")[0]);
		check_mail(document.getElementsByName("mail")[0]);
	}
	
	//判断提交条件
	function checkall(){
		var password = check_password(document.getElementsByName("password")[0]);
		var mail = check_mail(document.getElementsByName("mail")[0]);
		var checkcode = check_checkcode(document.getElementsByName("checkcode")[0]);
		if(username&&password&&checkpassword&&mail&&checkcode){
			return true;
		}
		return false;
	}
</script>
</body>
</html>