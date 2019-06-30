<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN" class="is-AppPromotionBarVisible cssanimations csstransforms csstransitions flexbox no-touchevents no-mobile">
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>我的收藏--知否</title>
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta name="keywords" content="读《Web 全栈工程师的自我修养》">
    <meta name="description" content="阅读影浅分享的读《Web 全栈工程师的自我修养》，就在知否网。">

    <link rel="stylesheet" type="text/css" href="../styles/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../styles/font-awesome.min.css">

    <link rel="stylesheet" media="all" href="../styles/letter.css">

    <script src="../scripts/hm.js"></script>
    <script src="../scripts/detail.js"></script>

    <script type="text/javascript" src="../scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="../scripts/jquery.qrcode.min.js"></script>
    <link rel="stylesheet" href="../styles/top.css">
    <link rel="stylesheet"  href="../bootstrap-3.3.7/css/bootstrap.css"/>
	<script type="text/javascript" src="../js/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="../bootstrap-3.3.7/js/bootstrap.js"></script>
</head>
<body class="posts_show">
   <%@ include file="top.jsp"%>
    <div class="zu-global-notify" id="zh-global-message" style="display:none">
        <div class="zg-wrap">
            <div class="zu-global-nitify-inner">
            <a class="zu-global-notify-close" href="javascript:;" title="关闭" name="close">x</a>
            <span class="zu-global-notify-icon"></span>
            <span class="zu-global-notify-msg"></span>
            </div>
        </div>
    </div>
    <br />
    <br />
    <div id="main">
        <div class="zg-wrap zu-main clearfix ">
            <ul class="letter-list">
                <li id="conversation-item-10005_622873">
                    <a class="letter-link" href="msg-list?conversationId=10005_622873&amp;updateRead=1&amp;msgType=1"></a>
                   
                   <div class="letter-info">
                   	<span class="l-time">2019/6/29</span>
                        <div class="l-operate-bar">
                            <a href="javascript:void(0);" class="sns-action-del" data-id="10005_622873">
                            删除
                            </a>
                        </div>
                    </div>
                    
                    <div class="chat-headbox">
                    	<!--
                        	作者：chenfang
                        	时间：2019-06-29
                        	描述：未读时头像上有红点，已读消失，可改变class来实现
                        -->
                    	<span class="msg-num"></span>
                        <a class="list-head">
                            <img alt="头像" src="http://static.nowcoder.com/images/head/notify.png">
                        </a>
                    </div>
                    
                    <div class="letter-detail">
                    	<!--
                        	作者：chenfang
                        	时间：2019-06-29
                        	描述：点击可以跳到
                        -->
                        <a title="问题" class="letter-name level-color-1">
                        	 发件人：<span style="color: #000000;">“二维数组中的查找”</span> 
                        </a>
                        <!--
                        	作者：chenfang
                        	时间：2019-06-29
                        	描述：点击下面的超链接未读才变成已读
                        -->
                        <p class="letter-brief">
                            <a href="msg-list?conversationId=10005_622873&amp;updateRead=1&amp;msgType=1">
                                网络水军的兴衰起伏，与互联网的进化相互交织。他们是社交时代的镜子，折射的不仅是屏幕上的瞬息万变，还有公众意识与舆论的更替变迁。从论坛时代到微博时代，再到微信时代，水军一直处于舆论的风口浪尖，但他们自称舆论的“弄潮儿”。从人声鼎沸到繁华落尽，如今，水军进入蛰伏期，静待属于他们的春天再次来临。
                            </a>
                        </p>
                    </div>
                </li>

        </div>
        <script type="text/javascript">
          $(function(){

            // If really is weixin
            $(document).on('WeixinJSBridgeReady', function() {

              $('.weixin-qrcode-dropdown').show();

              var options = {
                "img_url": "",
                "link": "http://nowcoder.com/j/wt2rwy",
                "desc": "",
                "title": "读《Web 全栈工程师的自我修养》"
              };

              WeixinJSBridge.on('menu:share:appmessage', function (argv){
                WeixinJSBridge.invoke('sendAppMessage', options, function (res) {
                  // _report('send_msg', res.err_msg)
                });
              });

              WeixinJSBridge.on('menu:share:timeline', function (argv) {
                WeixinJSBridge.invoke('shareTimeline', options, function (res) {
                  // _report('send_msg', res.err_msg)
                });
              });

              // $(window).on('touchmove scroll', function() {
              //   if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
              //     $('div.backdrop').show();
              //     $('div.share-help').show();
              //   } else {
              //     $('div.backdrop').hide();
              //     $('div.share-help').hide();
              //   }
              // });

            });

          })
        </script>
    </div>
    <div id="zh-footer" class="zh-footer">
<div class="content zg-wrap clearfix">


<span class="copy">© 2019 知否</span>

</div>
</div>

  <div id="quick-download">
    <button type="button" class="close-link btn-link" data-toggle="modal" data-target="#quick-download-app-modal"><i class="fa fa-times-circle"></i></button>

    <a class="download-link" href="http://nowcoder.com/download">
      <h3>牛客网</h3>
      <h4>程序员的首选学习分享平台</h4>
      <button type="button" class="btn btn-info btn-sm">下载 APP</button>
    </a>

    <div class="modal fade" id="quick-download-app-modal" tabindex="-1" role="dialog">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">提示</div>
          <div class="modal-body">
            <div class="checkbox">
              <label class="i-checks">
                <input id="already-installed" type="checkbox"><i></i> 我已安装了牛客网App，不再显示
              </label>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-block btn-default" id="close-quick-download-app-modal">关 闭</button>
          </div>
        </div>
      </div>
    </div>
  </div>



</body></html>