<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.zhifou.bean.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- saved from url=(0029)#signin -->
<html lang="zh-CN" dropeffect="none"
	class="js is-AppPromotionBarVisible cssanimations csstransforms csstransitions flexbox no-touchevents no-mobile"
	style="">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<meta http-equiv="X-ZA-Response-Id"
	content="46acde5c53db46f2806ccad726de9826">
<title>首页 - 知否</title>
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

	<div class="zu-global-notify" id="zh-global-message"
		style="display: none">
		<div class="zg-wrap">
			<div class="zu-global-nitify-inner">
				<a class="zu-global-notify-close" href="javascript:;" title="关闭"
					name="close">x</a> <span class="zu-global-notify-icon"></span> <span
					class="zu-global-notify-msg"></span>
			</div>
		</div>
	</div>
	<div class="zg-wrap zu-main clearfix " role="main">
		<div class="zu-main-content">
			<div class="zu-main-content-inner">
				<div class="zg-section" id="zh-home-list-title">
					<i class="zg-icon zg-icon-feedlist"></i>最新动态 <input type="hidden"
						id="is-topstory"> <span
						class="zg-right zm-noti-cleaner-setting" style="list-style: none">
						<a href="https://nowcoder.com/settings/filter"
						class="zg-link-gray-normal"> <i
							class="zg-icon zg-icon-settings"></i>设置
					</a>
					</span>
				</div>
				<div class="zu-main-feed-con navigable" data-feedtype="topstory"
					id="zh-question-list" data-widget="navigable"
					data-navigable-options="{&quot;items&quot;:&quot;&gt; .zh-general-list .feed-content&quot;,&quot;offsetTop&quot;:-82}">
					<a href="javascript:;" class="zu-main-feed-fresh-button"
						id="zh-main-feed-fresh-button" style="display: none"></a>
					<div id="js-home-feed-list"
						class="zh-general-list topstory clearfix"
						data-init="{&quot;params&quot;: {}, &quot;nodename&quot;: &quot;TopStory2FeedList&quot;}"
						data-delayed="true" data-za-module="TopStoryFeedList">

						<div
							class="feed-item folding feed-item-hook feed-item-2
                        "feed-item-a="" data-type="a" id="feed-2"
							data-za-module="FeedItem" data-za-index="">
							<meta itemprop="ZReactor" data-id="389034"
								data-meta="{&quot;source_type&quot;: &quot;promotion_answer&quot;, &quot;voteups&quot;: 4168, &quot;comments&quot;: 69, &quot;source&quot;: []}">
							<div id="showDiv" class="feed-item-inner">
								<c:forEach items="${userindexs}" varStatus="status" var="item">
										<div class="avatar">
											<a title="李淼" data-tip="p$t$amuro1230"
												class="zm-item-link-avatar" target="_blank"
												href="https://nowcoder.com/people/amuro1230"> <img
												src="images/res/12a8e1ce5ad8060fddb93ae2df98028b_m.jpg"
												class="zm-item-img-avatar"></a>
										</div>
										<div id="showDiv" class="feed-main">
											<div class="feed-source" data-za-module="FeedSource">
												热门回答，来自 <a href="https://nowcoder.com/topic/19562033"
													data-tip="t$t$19562033" data-token="19562033"
													data-topicid="3946" target="_blank">${item.categoryid }</a>
												<a data-follow="t:link" href="javascript:;"
													class="zg-follow zu-autohide follow-topic zu-edit-button"
													data-id="3946">关注话题</a>
											</div>
											<div class="feed-content" data-za-module="AnswerItem">
												<meta itemprop="answer-id" content="389034">
												<meta itemprop="answer-url-token" content="13174385">
												<h2 class="feed-title">
													<a class="question_link" target="_blank"
														href="https://nowcoder.com/question/19857995#answer-389034">${item.questiontitle }</a>
												</h2>
												<div class="feed-question-detail-item">
													<div class="question-description-plain zm-editable-content"></div>
												</div>
												<div class="expandable entry-body">
													<!-- <link itemprop="url" href="/question/19857995/answer/13174385">
		                                            <meta itemprop="answer-id" content="389034">
		                                            <meta itemprop="answer-url-token" content="13174385"> -->
													<div class="zm-item-vote">
														<a class="zm-item-vote-count js-expand js-vote-count"
															href="javascript:;" data-bind-votecount="">4168</a>
													</div>
													<div class="zm-votebar" data-za-module="VoteBar">
														<button class="up" aria-pressed="false" title="赞同">
															<i class="icon vote-arrow"></i><span class="count">4168</span>
															<span class="label sr-only">赞同</span>
														</button>
														<button class="down" aria-pressed="false"
															title="反对，不会显示你的姓名">
															<i class="icon vote-arrow"></i> <span
																class="label sr-only">反对，不会显示你的姓名</span>
														</button>
													</div>
													<div class="zm-item-answer-author-info">
														<a class="author-link" data-tip="p$b$amuro1230"
															target="_blank"
															href="https://nowcoder.com/people/amuro1230">${item.username }</a>
														<span title="${item.questiontitle }" class="bio">，${item.questiontitle }</span>
													</div>
						 							<div class="zm-item-vote-info" data-votecount="4168"
														data-za-module="VoteInfo">
														<span class="voters text"> <a href="#"
															class="more text"> <span class="js-voteCount">4168</span>&nbsp;人赞同
														</a>
														</span>
													</div> 
													<div class="zm-item-rich-text expandable js-collapse-body"
														data-resourceid="123114" data-action="/answer/content"
														data-author-name="${item.username }"
														data-entry-url="/question/19857995/answer/13174385">
														<textarea hidden="" class="content"></textarea>
														<div class="zh-summary summary clearfix">${item.answercontent}
															<a
																href="https://nowcoder.com/question/19857995/answer/13174385"
																class="toggle-expand">显示全部</a>
														</div>
														<p class="visible-expanded">
															<a itemprop="url" class="answer-date-link meta-item"
																data-tip="s$t$发布于 2011-09-23" target="_blank"
																href="https://nowcoder.com/question/19857995/answer/13174385">编辑于
																2015-06-24</a>
														</p>
													</div>
												</div>
												<div class="feed-meta">
													<div
														class="zm-item-meta answer-actions clearfix js-contentActions">
														<div class="zm-meta-panel">
															<a data-follow="q:link"
																class="follow-link zg-follow meta-item"
																href="javascript:;" id="sfb-123114"> <i
																class="z-icon-follow"></i>关注问题
															</a> 
															<a href="#" name="addcomment"
																class="meta-item toggle-comment js-toggleCommentBox">
																<i class="z-icon-comment"></i>69 条评论
															</a> 
															<a onclick="setCollection('${item.answerid}','${item.questionid }')" class="meta-item js-thank"
																data-thanked="false"> <i class="z-icon-thank"></i>收藏
															</a>
	
	
															<button class="meta-item item-collapse js-collapse">
																<i class="z-icon-fold"></i>收起
															</button>
														</div>
													</div>
													<a href="#" class="ignore zu-autohide" name="dislike"
														data-tip="s$b$不感兴趣"></a>
												</div>
											</div>
										</div>
									</c:forEach>
							</div>
							<div class="undo-dislike-options" data-item_id="2">
								此内容将不会在动态中再次显示 <span class="zg-bull">•</span> <a href="#"
									class="meta-item revert">撤销</a> <a href="#"
									class="ignore zu-autohide close"></a>
							</div>
						</div>
					</div>
					<a onclick="showmore()" id="zh-load-more" data-method="next"
						class="zg-btn-white zg-r3px zu-button-more" style="">更多</a>
				</div>
			</div>
		</div>
	</div>
	
	<meta name="entry" content="ZH.entryHome" data-module-id="page-main">
	<script type="text/zscript" znonce="d3edc464cf014708819feffde7ddd01e"></script>
	<input type="hidden" name="_xsrf"
		value="21aa1c8d254df2899b23ab9afbd62a53">
	<div class="zh-backtotop" style="opacity: 0; display: none;">
		<a data-action="backtotop" data-tip="s$r$回到顶部" href="javascript:;"
			class="btn-backtotop btn-action">
			<div class="arrow"></div>
			<div class="stick"></div>
		</a>
	</div>
	<div id="zh-tooltip" data-theme="" class="tooltip bottom"
		style="visibility: hidden; left: 778px; top: 321px; display: none;">
		<div class="tooltip-arrow"></div>
		<div class="tooltip-inner content-prewrap">不感兴趣</div>
	</div>
	<div class="copyright-notification">
		<div class="user-image-container">
			<img class="user-image" src="https://nowcoder.com/">
		</div>
		<div class="tooltip right noty-tooltip">
			<div class="tooltip-arrow arrow"></div>
			<div class="tooltip-inner inner">如需转载，请通过私信或评论联系我</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>

<script type="text/javascript">
	function showmore(){
		var content="";
		$.ajax({
			url:"/zhifou/recommend",
			async:false,
			type:"POST",	
			dataType:"json",
			data:{"method":"searchQuestionByPage"},
			success:function(data){
				if(data.length>0){
					 $.each(data,function(index,obj){
						content+="<div class='avatar'>"
						+"		<a title='李淼' data-tip='p$t$amuro1230'"
						+"			class='zm-item-link-avatar' target='_blank'> <img"
						+"			src='images/res/12a8e1ce5ad8060fddb93ae2df98028b_m.jpg'"
						+"			class='zm-item-img-avatar'></a>"
						+"	</div>"
						+"	<div class='feed-main'>"
						+"		<div class='feed-source' data-za-module='FeedSource'>"
						+"			热门回答，来自 <a "
						+"				data-tip='t$t$19562033' data-token='19562033'"
						+"				data-topicid='3946' target='_blank'>"+obj.categoryname+"</a>"
						+"			<a data-follow='t:link' href='javascript:;'"
						+"				class='zg-follow zu-autohide follow-topic zu-edit-button'"
						+"				data-id='3946'>关注话题</a>"
						+"		</div>"
						+"		<div class='feed-content' data-za-module='AnswerItem'>"
						+"			<meta itemprop='answer-id' content='389034'>"
						+"			<meta itemprop='answer-url-token' content='13174385'>"
						+"			<h2 class='feed-title'>"
						+"				<a class='question_link' target='_blank'>"+obj.questiontitle+"</a>"
						+"			</h2>"
						+"			<div class='feed-question-detail-item'>"
						+"				<div class='question-description-plain zm-editable-content'></div>"
						+"			</div>"
						+"			<div class='expandable entry-body'>"
						+"				<div class='zm-item-vote'>"
						+"					<a class='zm-item-vote-count js-expand js-vote-count'"
						+"						href='javascript:;' data-bind-votecount=''>4168</a>"
						+"				</div>"
						+"				<div class='zm-votebar' data-za-module='VoteBar'>"
						+"					<button class='up' aria-pressed='false' title='赞同'>"
						+"						<i class='icon vote-arrow'></i><span class='count'>4168</span>"
						+"						<span class='label sr-only'>赞同</span>"
						+"					</button>"
						+"					<button class='down' aria-pressed='false'"
						+"						title='反对，不会显示你的姓名'>"
						+"						<i class='icon vote-arrow'></i> <span"
						+"							class='label sr-only'>反对，不会显示你的姓名</span>"
						+"					</button>"
						+"				</div>"
						+"				<div class='zm-item-answer-author-info'>"
						+"					<a class='author-link' data-tip='p$b$amuro1230'"
						+"						target='_blank'>"+obj.username+"</a>"
						+"					<span title='"+obj.questiontitle+"' class='bio'>，"+obj.questiontitle+"</span>"
						+"				</div>"
						+"				<div class='zm-item-vote-info' data-votecount='4168'"
						+"					data-za-module='VoteInfo'>"
						+"					<span class='voters text'> <a href='#'"
						+"						class='more text'> <span class='js-voteCount'>4168</span>&nbsp;人赞同"
						+"					</a>"
						+"					</span>"
						+"				</div> "
						+"				<div class='zm-item-rich-text expandable js-collapse-body'"
						+"					data-resourceid='123114' data-action='/answer/content'"
						+"					data-author-name='"+obj.username+"'"
						+"					data-entry-url='/question/19857995/answer/13174385'>"
						+"					<textarea hidden='' class='content'></textarea>"
						+"					<div class='zh-summary summary clearfix'>"+obj.answercontent+""
						+"						<a class='toggle-expand'>显示全部</a>"
						+"					</div>"
						+"					<p class='visible-expanded'>"
						+"						<a itemprop='url' class='answer-date-link meta-item'"
						+"							data-tip='s$t$发布于 2011-09-23' target='_blank'>编辑于"
						+"							2015-06-24</a>"
						+"					</p>"
						+"				</div>"
						+"			</div>"
						+"			<div class='feed-meta'>"
						+"				<div"
						+"					class='zm-item-meta answer-actions clearfix js-contentActions'>"
						+"					<div class='zm-meta-panel'>"
						+"						<a data-follow='q:link'"
						+"							class='follow-link zg-follow meta-item' id='sfb-123114'> <i"
						+"							class='z-icon-follow'></i>关注问题"
						+"						</a> <a href='#' name='addcomment'"
						+"							class='meta-item toggle-comment js-toggleCommentBox'>"
						+"							<i class='z-icon-comment'></i>69 条评论"
						+"						</a> <a onclick='setCollection("+obj.answerid+","+obj.questionid+")' class='meta-item js-thank'"
						+"							data-thanked='false'> <i class='z-icon-thank'></i>收藏"
						+"						</a>"
						+"						<button class='meta-item item-collapse js-collapse'>"
						+"							<i class='z-icon-fold'></i>收起"
						+"						</button>"
						+"					</div>"
						+"				</div>"
						+"				<a href='#' class='ignore zu-autohide' name='dislike'"
						+"					data-tip='s$b$不感兴趣'></a>"
						+"			</div>"
						+"		</div>"
						+"	</div>"
					;
					}); 
				}
				$("#showDiv").append(content); 
			},
			error:function(){
				alert("请求失败");
			}
		});
	}
	
	
	function setCollection(answerid,questionid){
		alert(answerid+"  "+questionid)
		 $.ajax({
			url:"/zhifou/collection",
			type:"post",	
			dataType:"json",
			data:{"method":"addCollection","answerid":answerid,"questionid":questionid},
			success:function(data){
				alert("收藏成功");
			},
			error:function(){
				alert("请求失败");
			}
		}); 
	}
	

</script>
</html>