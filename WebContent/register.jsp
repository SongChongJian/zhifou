<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
	<title>注册 - 知否</title>
	<link rel="stylesheet" type="text/css" href="styles/register-login.css">
</head>
<body>
<div id="box"></div>
<div class="cent-box register-box">
	<div class="cent-box-header">
		<h1 class="main-title hide">知否</h1>
		<h2 class="sub-title">生活热爱分享</h2>
	</div>
	<div class="cont-main clearfix">
		<div class="index-tab">
			<div class="index-slide-nav">
				<a href="login.jsp">登录</a>
				<a href="register.jsp" class="active">注册</a>
				<div class="slide-bar slide-bar1"></div>				
			</div>
		</div>
		<form action="userservlet" method="post" onsubmit="return checkall()">
			<div class="login form">		
				<div class="group">
					<div class="group-ipt user">
						<input type="text" name="username" autocomplete="off" id="user" class="ipt" onblur="check_username(this)" placeholder="选择一个用户名" required>
					</div>
					<div id="username_message"></div>
					<div class="group-ipt password">
						<input type="password" name="password" autocomplete="off" id="password" class="ipt" onblur="check_password(this)" placeholder="设置登录密码" required>
					</div><span id="password_message"></span>
					<div class="group-ipt password1">
						<input type="password" name="checkpassword" autocomplete="off" id="password1" class="ipt" onkeyup="check_checkpassword(this)" placeholder="重复密码" required>
					</div><span id="checkpassword_message"></span>
					<div class="group-ipt email">
						<input type="email" name="mail" autocomplete="off" id="email" class="ipt" onblur="check_mail(this)" placeholder="请输入邮箱" required>
						<input type="hidden" name="method" value="register" />
						<input type="hidden" name="code" value="0" />
					</div><span id="mail_message"></span>
					<div class="group-ipt verify">
						<input type="text" name="checkcode" autocomplete="off" id="verify" class="ipt" onblur="check_checkcode(this)" placeholder="输入验证码" required>
						<img onclick="changeImg(this)" src="checkimageservlet" class="imgcode" />
					</div><span id="checkcode_message"></span>
				</div>
				<div class="button">
					<button style="width: 300px" type="submit" class="login-btn register-btn" id="button">注册</button>
				</div>
			</div>
		</form>	
		
	</div>
</div>

<div class="footer">
	<p>知否 - ZhiFou</p>
	<p>Designed By 知否 & <a href="zrong.me">mycodes.net</a> 2019</p>
</div>

<script src='js/particles.js' type="text/javascript"></script>
<script src='js/background.js' type="text/javascript"></script>
<script src='js/jquery.min.js' type="text/javascript"></script>
<script src='js/layer/layer.js' type="text/javascript"></script>
<script src='js/index.js' type="text/javascript"></script>
<script>
	$('.imgcode').hover(function(){
		layer.tips("看不清？点击更换", '.verify', {
        		time: 6000,
        		tips: [2, "#3c3c3c"]
    		})
	},function(){
		layer.closeAll('tips');
	})

	$(".login-btn").click(function(){
		var email = $("#email").val();
		var password = $("#password").val();
		var verify = $("#verify").val();

	})
	$("#remember-me").click(function(){
		var n = document.getElementById("remember-me").checked;
		if(n){
			$(".zt").show();
		}else{
			$(".zt").hide();
		}
	})
</script>
<script type="text/javascript">
	/* 更改验证码 */
	function changeImg(e){
		e.src="checkimageservlet?time="+new Date().getTime();
	}
	/* 表单验证 */
	//用户名
	function check_username(e){
		var username = e.value;
		if(username == null || username.trim() == ""){
			document.getElementById("username_message").innerHTML = "用户名不能为空！";
			document.getElementById("username_message").style.color = "red";
			return false;
		}else if(username.length<2 || username.length>10){
			document.getElementById("username_message").innerHTML = "用户名长度必须在2-10位！";
			document.getElementById("username_message").style.color = "red";
			return false;
		}else{
			$.ajax({
				url:"/zhifou/userservlet",
				async:true,
				type:"POST",
				data:{"username":username,"method":"userNameIsExit"},
				success:function(data){
					if (data == 1) {
						document.getElementById("username_message").innerHTML = "该用户名已存在！";
						document.getElementById("username_message").style.color = "red";
					} else {
						document.getElementById("username_message").innerHTML = "✔";
						document.getElementById("username_message").style.color = "green";
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
	//确认密码
	function check_checkpassword(e){
		var passReg = /\w{6,18}/;
		var password = document.getElementsByName("password")[0].value;
		var checkpassword = e.value;
		if(!passReg.test(checkpassword)){
			document.getElementById("checkpassword_message").innerHTML = "密码格式不正确(6-18位)！";
			document.getElementById("checkpassword_message").style.color = "red";
			return false;
		}else if(password!=checkpassword){
			document.getElementById("checkpassword_message").innerHTML = "密码不一致！";
			document.getElementById("checkpassword_message").style.color = "red";
			return false;
		}
		else{
			document.getElementById("checkpassword_message").innerHTML = "✔";
			document.getElementById("checkpassword_message").style.color = "green";
			return true;
		}
	}
	document.getElementsByName("checkpassword")[0].onfocus=function(){
		check_username(document.getElementsByName("username")[0]);
		check_password(document.getElementsByName("password")[0]);
	}
	//邮箱
	function check_mail(e){
		var email = e.value;
		var emailReg=/^\w+@\w+\.[A-Za-z]{2,3}$/;
		if(!emailReg.test(email)){
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
		check_username(document.getElementsByName("username")[0]);
		check_password(document.getElementsByName("password")[0]);
		check_mail(document.getElementsByName("mail")[0]);
	}
	
	//判断提交条件
	function checkall(){
		var username = check_username(document.getElementsByName("username")[0]);
		var password = check_password(document.getElementsByName("password")[0]);
		var checkpassword = check_checkpassword(document.getElementsByName("checkpassword")[0]);
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