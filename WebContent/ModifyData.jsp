<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.zhifou.bean.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN" 
	class="js is-AppPromotionBarVisible cssanimations csstransforms csstransitions flexbox no-touchevents no-mobile"
	style="">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<meta http-equiv="X-ZA-Response-Id"
	content="46acde5c53db46f2806ccad726de9826">
<title>个人资料修改</title>
<meta name="apple-itunes-app" content="app-id=432274380">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="mobile-agent"
	content="format=html5;url=https://nowcoder.com/">
<meta id="znonce" name="znonce"
	content="d3edc464cf014708819feffde7ddd01e">
<link rel="search" type="application/opensearchdescription+xml"
	href="https://nowcoder.com/static/search.xml" title="牛客">
<link rel="stylesheet" href="styles/index.css">
<link rel="stylesheet" href="styles/gdt-style.css">
<link rel="stylesheet"  href="bootstrap-3.3.7/css/bootstrap.css"/>
	<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.js"></script>
<style>
.zm-item-answer-author-info a.collapse {
	margin-top: 0
}
</style>

</head>
<body class="zhi ">
	<%@ include file="top.jsp"%>
	<div role="navigation" class="zu-top">
        <div class="zg-wrap modal-shifting clearfix" id="zh-top-inner">
            <a href="https://nowcoder.com/" class="zu-top-link-logo" id="zh-top-link-logo" data-za-c="view_home" data-za-a="visit_home" data-za-l="top_navigation_zhihu_logo">牛客</a>
            <div class="top-nav-profile">
                <a href="https://nowcoder.com/people/hu-yuan-24-48" class="zu-top-nav-userinfo " id=":0" role="button" aria-haspopup="true" aria-activedescendant="">
                    <span class="name">知否</span>
                    <img class="Avatar" src="images/res/da8e974dc_s.jpg" srcset="https://pic1.zhimg.com/da8e974dc_xs.jpg 2x" alt="知否">
                    <span id="zh-top-nav-new-pm" class="zg-noti-number zu-top-nav-pm-count" style="visibility:hidden" data-count="0">
                    </span>
                </a>
                <ul class="top-nav-dropdown" id="top-nav-profile-dropdown" aria-labelledby=":0">
                    <li>
                    <a href="https://nowcoder.com/people/hu-yuan-24-48" tabindex="-1" id=":1">
                    <i class="zg-icon zg-icon-dd-home"></i>我的主页
                    </a>
                    </li>
                    <li>
                    <a href="https://nowcoder.com/inbox" tabindex="-1" id=":2">
                    <i class="zg-icon zg-icon-dd-pm"></i>私信
                    <span id="zh-top-nav-pm-count" class="zu-top-nav-pm-count zg-noti-number" style="visibility:hidden" data-count="0">
                    </span>
                    </a>
                    </li>
                    <li>
                    <a href="https://nowcoder.com/settings" tabindex="-1" id=":3">
                    <i class="zg-icon zg-icon-dd-settings"></i>我的收藏
                    </a>
                    </li>
                    <li>
                    <a href="https://nowcoder.com/logout" tabindex="-1" id=":4">
                    <i class="zg-icon zg-icon-dd-logout"></i>退出
                    </a>
                    </li>
                </ul>
            </div>        
            <!--提问-->
            <a id="modal-578824 zu-top-add-question" href="#modal-container-578824" role="button" class="zu-top-add-question btn" data-toggle="modal">提问</a>
            
            <div role="search" id="zh-top-search" class="zu-top-search">
                <form method="GET" action="https://nowcoder.com/search" id="zh-top-search-form" class="zu-top-search-form">
                <input type="hidden" name="type" value="content">
                <label for="q" class="hide-text">知否搜索</label><input type="text" class="zu-top-search-input" id="q" name="q" autocomplete="off" value="" placeholder="搜索你感兴趣的内容..." role="combobox" aria-autocomplete="list">
                <button type="submit" class="zu-top-search-button"><span class="hide-text">搜索</span><span class="sprite-global-icon-magnifier-dark"></span></button>
                </form>
            </div>
            <div id="zg-top-nav" class="zu-top-nav">
                <ul class="zu-top-nav-ul zg-clear">
                    <li class="zu-top-nav-li current" id="zh-top-nav-home">
                    <a class="zu-top-nav-link" href="https://nowcoder.com/" id="zh-top-link-home" data-za-c="view_home" data-za-a="visit_home" data-za-l="top_navigation_home">首页</a>
                    </li>
                    <li class="zu-top-nav-li " id="zh-top-nav-explore">
                    <a class="zu-top-nav-link" href="https://nowcoder.com/explore">发现</a>
                    </li>
                    <li class="top-nav-noti zu-top-nav-li ">
                    <a class="zu-top-nav-link" href="javascript:;" id="zh-top-nav-count-wrap" role="button"><span class="mobi-arrow"></span>消息<span id="zh-top-nav-count" class="zu-top-nav-count zg-noti-number" style="display: none;">0</span></a>
                    </li>
                </ul>
                <div class="zu-top-nav-live zu-noti7-popup zg-r5px no-hovercard" id="zh-top-nav-live-new" role="popup" tabindex="0">
                    <div class="zu-top-nav-live-inner zg-r5px">
                        <div class="zu-top-live-icon">&nbsp;</div>
                        <div class="zu-home-noti-inner" id="zh-top-nav-live-new-inner">
                            <div class="zm-noti7-popup-tab-container clearfix" tabindex="0" role="tablist">
                            <button class="zm-noti7-popup-tab-item message" role="tab">
                            <span class="icon">消息</span>
                            </button>
                            <button class="zm-noti7-popup-tab-item user" role="tab">
                            <span class="icon">用户</span>
                            </button>
                            <button class="zm-noti7-popup-tab-item thanks" role="tab">
                            <span class="icon">赞同和感谢</span>
                            </button>
                            </div>
                        </div>
                        <div class="zm-noti7-frame-border top"></div>
                        <div class="zm-noti7-frame">
                            <div class="zm-noti7-content message zh-scroller" style="position: relative; overflow: hidden;">
                                <div class="zh-scroller-inner" style="height: 100%; width: 150%; overflow: auto;"><div class="zh-scroller-content" style="position: static; display: block; visibility: visible; overflow: hidden; width: 315px; min-height: 100%;">
                                <div class="zm-noti7-content-inner">
                                <div class="zm-noti7-content-body">
                                <div class="zm-noti7-popup-loading">
                                <span class="noti-spinner-loading"></span>
                                </div>
                                </div>
                                </div>
                                </div></div>
                                <div class="zh-scroller-bar-container" style="position: absolute; right: 1px; top: 0px; height: 98px; width: 6px; border: 1px solid rgb(68, 68, 68); opacity: 0; cursor: default; border-radius: 2px; -webkit-user-select: none; background: rgb(102, 102, 102);"><div style="-webkit-user-select: none;"></div></div><div class="zh-scroller-bar" style="position: absolute; right: 2px; top: 2px; opacity: 0.5; width: 6px; border-radius: 3px; cursor: default; -webkit-user-select: none; display: none; background: rgb(0, 0, 0);"></div>
                            </div>
                            <div class="zm-noti7-content user zh-scroller" style="display: none; position: relative; overflow: hidden;"><div class="zh-scroller-inner" style="height: 100%; width: 150%; overflow: auto;"><div class="zh-scroller-content" style="position: static; display: block; visibility: visible; overflow: hidden; width: 315px; min-height: 100%;">
                            <div class="zm-noti7-content-inner">
                            <div class="zm-noti7-content-body">
                            <div class="zm-noti7-popup-loading">
                            <span class="noti-spinner-loading"></span>
                            </div>
                            </div>
                            </div>
                            </div></div><div class="zh-scroller-bar-container" style="position: absolute; right: 1px; top: 0px; height: 98px; width: 6px; border: 1px solid rgb(68, 68, 68); opacity: 0; cursor: default; border-radius: 2px; -webkit-user-select: none; background: rgb(102, 102, 102);"><div style="-webkit-user-select: none;"></div></div><div class="zh-scroller-bar" style="position: absolute; right: 2px; top: 2px; opacity: 0.5; width: 6px; border-radius: 3px; cursor: default; -webkit-user-select: none; display: none; background: rgb(0, 0, 0);"></div></div>
                            <div class="zm-noti7-content thanks zh-scroller" style="display: none; position: relative; overflow: hidden;"><div class="zh-scroller-inner" style="height: 100%; width: 150%; overflow: auto;"><div class="zh-scroller-content" style="position: static; display: block; visibility: visible; overflow: hidden; width: 315px; min-height: 100%;">
                            <div class="zm-noti7-content-inner">
                            <div class="zm-noti7-content-body">
                            <div class="zm-noti7-popup-loading">
                            <span class="noti-spinner-loading"></span>
                            </div>
                            </div>
                            </div>
                            </div></div><div class="zh-scroller-bar-container" style="position: absolute; right: 1px; top: 0px; height: 98px; width: 6px; border: 1px solid rgb(68, 68, 68); opacity: 0; cursor: default; border-radius: 2px; -webkit-user-select: none; background: rgb(102, 102, 102);"><div style="-webkit-user-select: none;"></div></div><div class="zh-scroller-bar" style="position: absolute; right: 2px; top: 2px; opacity: 0.5; width: 6px; border-radius: 3px; cursor: default; -webkit-user-select: none; display: none; background: rgb(0, 0, 0);"></div></div>
                        </div>
                        <div class="zm-noti7-frame-border bottom"></div>
                        <div class="zm-noti7-popup-footer">
                            <a href="https://nowcoder.com/notifications" class="zm-noti7-popup-footer-all zg-right">查看全部 »</a>
                            <a href="https://nowcoder.com/settings/notification" class="zm-noti7-popup-footer-set" title="通知设置"><i class="zg-icon zg-icon-settings"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <p class="lead">
				<strong>个人信息修改：</strong> 
			</p>
			<!--表单开始-->
			<form class="form-horizontal" role="form" action="personalmessageservlet?method=modifyData" method="post" enctype="multipart/form-data" >
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">用户名</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="username" name="username" value="${user.username}"
							   placeholder="用户名">
					</div>
				</div>
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">密码</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="userpassword" name="userpassword"  value="${user.userpassword}"
							   placeholder="张三">
					</div>
				</div>

				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">邮箱</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="usermail" name="usermail"  value="${user.usermail}"
							   placeholder="字段">
					</div>				
				</div> 
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">更换头像</label>
					<div class="col-sm-4">
						<input type="file" id="userphoto" name="file" />
					</div>			
				</div>
   
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">个人签名</label>
					<div class="col-sm-4">
						<textarea rows="3" name="usermeans" id="usermeans"  value="${user.usermeans}" cols="50" placeholder="签名"></textarea>
					</div>			
				</div>
 
				<div class="form-group">	
					<button style="margin-left: 210px " type="submit" class="btn btn-primary"  value="确认修改">确认修改</button>				
				</div>  			
		    </form>	
		</div>
	</div>
</div>
			<!--弹出层-->
            <div class="modal fade" id="modal-container-751906" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
									<h4 class="modal-title" id="myModalLabel">
										修改个人信息
									</h4>
								</div>
								<form></form>
								<div class="modal-body">
									<form action="" method="post">
					                    <div class="form-group">
					                        <label for="recipient-name" class="control-label">字段1:</label>
					                        <input type="text" class="form-control" id="recipient-name">
					                    </div>
					                    <div class="form-group">
					                        <label for="message-text" class="control-label">字段2:</label>
					                        <input type="text" class="form-control" id="recipient-name">
					                    </div>
					                    <div class="form-group">
					                        <label for="message-text" class="control-label">字段3:</label>
					                        <input type="text" class="form-control" id="recipient-name">
					                    </div>
					                    <div class="form-group">
					                        <label for="message-text" class="control-label">字段4:</label>
					                        <input type="text" class="form-control" id="recipient-name">
					                    </div>
					                </form>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">取消</button> 
									<button type="submit" class="btn btn-primary">修改</button>
								</div>
								</form>
							</div>
		
						</div>
		
		    </div>
 			<!--弹出层结束-->

   
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/assets/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
function upload(){
	var username = document.getElementById("username").value;
	var userpassword = document.getElementById("userpassword").value;
	var usermail = document.getElementById("usermail").value;
	var userphoto = document.getElementById("userphoto").value;
	var usermeans = document.getElementById("usermeans").value;
	$.ajax({
		url:"/zhifou/personalmessageservlet",
		async:true,
		type:"POST",
		data:{"username":username,"userpassword":userpassword,"usermail":usermail,"userphoto":userphoto,"usermeans":usermeans,"method":"uploadpersonalmessage"},
		success:function(data){
			if (data == 1) {
				alert("信息修改成功");
			} else {
				alert("信息修改失败");
			}
		},
		error:function(){
			alert("请求失败");
		},
		dataType:"text"				
	});  
}


</script>
</html>