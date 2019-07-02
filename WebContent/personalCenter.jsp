<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人资料</title>
<link rel="stylesheet" href="styles/top.css">
<link href="styles/styles.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.js" ></script>
</head>
<body>
<div role="navigation" class="zu-top">
        <div class="zg-wrap modal-shifting clearfix" id="zh-top-inner">
            <a href="https://nowcoder.com/" class="zu-top-link-logo" id="zh-top-link-logo" data-za-c="view_home" data-za-a="visit_home" data-za-l="top_navigation_zhihu_logo">知否</a>
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
   
   
   
   
   
   
   
   
   
   
   
	
	
<br /><br />
 <div class="mainContent">
    <aside>
      <div class="avatar">
        <a href="#" src="${user.userphoto}" ><span>青春</span></a>
      </div>
      <section class="topspaceinfo">
      	<h1 ><a href="http://localhost/zhifou2/ModifyData.jsp">修改资料</a></h1>
      	
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
   <section class="visitor">
     <h2>最近访客</h2>
      <ul>
        <li><a href="/"><img src="images/s0.jpg"></a></li>
        <li><a href="/"><img src="images/s1.jpg"></a></li>
        <li><a href="/"><img src="images/s2.jpg"></a></li>
        <li><a href="/"><img src="images/s3.jpg"></a></li>
        <li><a href="/"><img src="images/s8.jpg"></a></li>
        <li><a href="/"><img src="images/s5.jpg"></a></li>
        <li><a href="/"><img src="images/s6.jpg"></a></li>
        <li><a href="/"><img src="images/s7.jpg"></a></li>
      </ul>
   </section>
   <div class="Copyright">
     <ul>
       <a href="/">帮助中心</a><a href="/">空间客服</a><a href="/">投诉中心</a><a href="http://www.777moban.com.com/" target="_blank">网页模板</a><a href="/">空间协议</a>
     </ul>
   </div>
 </footer>

</body>
</html>