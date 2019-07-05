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
      <div class="avatar">
        <a href="#" src="${user.userphoto}"><span>青春</span></a>
      </div>
      <section class="topspaceinfo">
      	<h1 ><a style="color:white" href="http://localhost:8080/zhifou/ModifyData.jsp">修改资料</a></h1>
      	
        <h1>个人签名</h1>
        <p>于千万人之中，我遇见了我所遇见的人....</p>
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
        <h2 class="title"><a href="/">论吃鸡</a></h2>
        <ul class="text">
          <p>和平精英</p>
          <p>“跳哪?”
          	“P城!机场!g港!学校!”
          	“人太多了吧?”
          	“这游戏不就是杀人的吗”
          	“前面有人!”
          	“干他丫的!”
          	“有车来了!”
          	“直接扫车!”
          	“房子里有人!”
          	“冲进去!”</p>
          <p>“跳哪?”
          	“哪人少跳哪”
          	“搜东西太无聊了吧”
          	“吃鸡最重要!”
          	“前面有人!”
          	“等他看见我们再打”
          	“有车来了!”
          	“等他们停车再打!”
          	“房子里有人!”
          	“在门口等着别出声，等他们出来再打”</p>
          <p class="textimg"><img src="images/text02.jpg"></p>
          <p>“跳哪?”
          	“打野吧，西南海边，渔村，农场”
          	“太穷了吧”
          	“打枪又不会，野区风景还好，超喜欢打野的”
          	“前面有人!”
          	“调头，别让他们发现了!”
          	“有车来了!”
          	“快把门都打开，躲厕所装死”
          	“房子里有人!”
          	设置—音频设置—所有人
          	“大哥，别开枪，我们是友军!”</p>
          
        </ul>
        <div class="textfoot">
          <a href="/">阅读全文</a><a href="/">评论</a><a href="/">转载</a>
        </div>
      </article> 
      <article>
        <h2 class="title"><a href="/">谈王者意识</a></h2>
        <ul class="text">
          <p>王者荣耀</p>
          <p>对于很多新手来说，是知道小地图这个东西的存在的(就是在游戏界面的左上角)，但是很少会去有意识的看这个地方。我这里要说的是，对于新手而言，小地图是尤为重要的存在。
                                 其中数目最多的蓝色和红色的东西就是己方和对方的防御塔，红色圆圈图标是敌方英雄，蓝色圆圈图标是己方队友，绿色圆圈图标则是自己，黄色的是野怪。
                                 知道了这些小地图的多种元素后，我们就要知道如何看懂小地图。有的新手可能会说，看小地图还需要你教？不不不，总有你不知道的东西在里面。</p>
          <p>看小地图最重要的目的就是知道哪里爆发了团战，当蓝色圆圈与红色圆圈很集中的时候就要意识到爆发团战了，这个时候你要做出选择
          	(这个选择会在后面优先级意识中详细说明)，是否要去支援团战，最直接的判断依据就是团战爆发点距离你远不远，这些信息都可以从小地图上获得。</p>
          <p class="textimg"><img src="../images/text01.jpg"></p>
          <p>防御塔受到攻击时，在小地图上会有闪烁的提示，这个时候同样要有意识的去守塔，除非你有十分正当的理由放弃这个塔，塔受到攻击会类似于
          	英雄一样有掉血的现象，体现在小地图上就是防御塔的颜色由实心逐渐变成空心，在塔的颜色完全变空时，可以选择随便攻击一下这座塔，让其失去防御的能力。</p>
          <p>还有一个细节就是英雄图标的圆圈上有一个小小的箭头，这个箭头表示的是该英雄的朝向，新手不会三指操作（这个三指操作我最近看视频才知道的，
          	我也不会，看起来很6）就可以通过这个细节来提高技能对看不见的敌人的命中率(比如虞姬的一技能，嬴政的大招等等。)</p>
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