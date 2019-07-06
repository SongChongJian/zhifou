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
<title>个人中心</title>
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
<link href="styles/styles.css" rel="stylesheet">
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
	<br /><br />
 <div class="mainContent">
    <aside>
      <p style="text-align:center;font-size:25px"><span>青春</span></p>
      <div class="avatar">
      <img src="${user.userphoto}"/>    
                 
      </div>
    
      <section class="topspaceinfo">
      	<h1 ><a style="color:white" href="http://localhost:8080/zhifou/ModifyData.jsp">修改资料</a></h1>
      	
        <h1>个人签名</h1>
        <p>${user.usermeans }</p>
      </section>
      <div class="userinfo"> 
        <p class="btns"><a href="/" target="_blank">我的相册</a><a href="/" target="_blank">我的邮箱</a></p>   
      </div>
      <section class="newpic">
         <h2>最新照片</h2>
         <ul>
           <li><a href="/"><img src="images/01.jpg"></a></li>
           <li><a href="/"><img src="images/02.jpg"></a></li>
           <li><a href="/"><img src="images/03.jpg"></a></li>
           <li><a href="/"><img src="images/04.jpg"></a></li>
           <li><a href="/"><img src="images/05.jpg"></a></li>
           <li><a href="/"><img src="images/06.jpg"></a></li>
           <li><a href="/"><img src="images/07.jpg"></a></li>
           <li><a href="/"><img src="images/08.jpg"></a></li>
         </ul>
      </section>
      <section class="taglist">
         <h2>全部标签</h2>
         <ul>
           <li><a href="/">游戏</a></li>
           <li><a href="/">90后</a></li>
           <li><a href="/">study</a></li>
           <li><a href="/">毕业季</a></li>
        </ul>
      </section>
    </aside>
    <div class="blogitem">
      <article>
        <h2 class="title"><a href="/">我回答的问题：</a></h2>
        <ul class="text"> 
          <c:forEach items="${answers }" var="item">
            <p>${item.answercontent }</p>
          </c:forEach>   
        </ul>
        <div class="textfoot">
          <a href="/">阅读全文</a><a href="/">评论</a><a href="/">转载</a>
        </div>
      </article> 
      <article>
        <h2 class="title"><a href="/">我回答的问题:</a></h2>
        <ul class="text">
          <c:forEach items="${answers }" var="item">
            <p>${item.answercontent }</p>
          </c:forEach>        
        </ul>
        <div class="textfoot">
          <a href="/">阅读全文</a><a href="/">评论</a><a href="/">转载</a>
        </div>
      </article>
      <div class="pages"><span>1</span><a href="/" hidefocus="">2</a><a href="/" hidefocus="">3</a><a href="/" class="next">下一页&gt;&gt;</a></div>
    </div>
 </div>
<footer>
   <div class="footavatar">
     <img src="images/photo.jpg" class="footphoto">
     <ul class="footinfo">
       <p class="fname"><a href="/dancesmile" >青春</a>  </p>
       <p class="finfo">性别：无 年龄：20岁</p>
       <p>现居：河南郑州</p></ul>
   </div>
   
   <div class="Copyright">
     <ul>
       <a href="/">帮助中心</a><a href="/">空间客服</a><a href="/">投诉中心</a><a href="http://www.777moban.com.com/" target="_blank">网页模板</a><a href="/">空间协议</a>
     </ul>
   </div>
 </footer>
	
	
	
</body>	
</html>