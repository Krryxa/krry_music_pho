<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
	   <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	   <title>Java开发Music云生态核心技术 V2.0 --krry</title>
	   <meta name="Keywords" content="">
	   <meta name="description"content="">
	   <link rel="stylesheet" href="css/三横线.css"/>
	   <style type="text/css">
	       *{margin:0;padding:0;}
		   body{background:url("images/6.jpg");background-size:cover;font-size:12px;font-family:"微软雅黑";color:#666;}
		   ul li{list-style:none;}
		   .clear{clear:both;}
          
		  /*music start*/
		   .music{width:610px;margin:40px auto;}
		   .music .m_lrc{width:300px;height:500px;float:left;position:relative;z-index:1;}
		   .music .m_lrc .m_title{width:100%;height:55px;background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0,#f2f3f3),color-stop(1,#dddfe1));border-bottom:1px solid #ced1d3;border-radius:5px 5px 0px 0px;position:relative;}
		   .music .m_lrc .m_title h2{font-size:18px;font-weight:500;text-align:center;line-height:55px;}
		   .music .m_lrc .m_title .snas{width:22px;height:16px;top:12px;right:8px;position:absolute;cursor:pointer;}
		   .music .m_lrc .m_con{width:300px;height:445px;position:relative;background:url("images/1235546.jpg");}
		   .music .m_lrc .m_con .lrc_con{overflow:hidden;text-align:center;height:351px;font-size:14px;line-height:24px;padding-top:4px;position:relative;z-index:1;}
		   .music .m_lrc .m_con .lrc_con ul li{transition:font-size .6s ease;line-height:27px;}
		   .music .m_lrc .m_con .lrc_con .sel{font-size:16px;font-weight:bold;color:red;}
		   .music .m_lrc .m_con .lrc_back{height:360px;width:300px;z-index:0;position:absolute;top:0;left:0;overflow:hidden;}
		   .music .m_lrc .m_con .lrc_back ul li{width:300px;height:360px;position:absolute;}

		   .music .m_lrc .m_con .c_play{background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0,#f2f3f3),color-stop(1,#dddfe1));height:85px;width:100%;bottom:0;position:absolute;}
		   .music .m_lrc .m_con .curr{width:87%;height:6px;background:#ccc;margin:16px auto;border-radius:10px 10px 10px 10px;cursor:pointer;}
		   .music .m_lrc .m_con .curr .c_played{width:0;height:6px;border-radius:10px 10px 10px 10px;background:#f60;}
		   .music .m_lrc .m_con .curr .c_cing{position:relative;top:-9px;left:-6px;}
		   .music .m_lrc .m_con .curr .c_cing .c_curr{width:12px;height:12px;background:#fff;border-radius:50%;position:absolute;left:0;cursor:pointer;}
		   .music .m_lrc .m_con .console .e_play .y_con{width:153px;}
		   .music .m_lrc .m_con .console .e_play .y_con .p_icon{width:27px;height:27px;margin-left:24px;float:left;margin-top:2px;}
		   .music .m_lrc .m_con .console .e_play .y_con .p_pre{margin-left:20px;background:url("images/t049oRLO.png")-21px -1100px;}
		   .music .m_lrc .m_con .console .e_play .y_con .p_play{width:31px;height:43px;background:url("images/t049oRLO.png")-456px -1043px;margin-top:-7px;}
		   .music .m_lrc .m_con .console .e_play .y_con .p_stop{background:url("images/t049oRLO.png")-336px -1079px;width:31px;height:43px;display:none;margin-top:-7px;}
		   .music .m_lrc .m_con .console .e_play .y_con .p_next{background:url("images/t049oRLO.png")-465px -1088px;}

		   .music .m_lrc .m_con .console .vloume{margin-top:5px;margin-right:6px;width:20px;height:20px;float:right;background:url("images/playbar.png")-5px -866px;cursor:pointer;}
		   .music .m_lrc .m_con .console .quite{margin-top:5px;margin-right:6px;width:20px;height:20px;float:right;background:url("images/playbar.png")-111px -687px;cursor:pointer;display:none;}
		   .music .m_lrc .m_con .console .b_ball{width:72px;height:6px;background:#ccc;float:right;margin-right:20px;margin-top:11px;border-radius:10px 10px 10px 10px;cursor:pointer;}
		   .music .m_lrc .m_con .console .b_ball .a_small{width:50%;height:6px;border-radius:10px 10px 10px 10px;background:#f60;}
		   .music .m_lrc .m_con .console .b_ball .a_big{position:relative;top:-8px;left:-5px;}
		   .music .m_lrc .m_con .console .b_ball .a_big .a_current{width:10px;height:10px;background:#fff;border-radius:50%;position:absolute;left:50%;cursor:pointer;}

		   .music .m_list{width:300px;height:500px;background:#212732;border-radius:5px 5px 0 0;float:right;left:0px;position:relative;z-index:0;}
		   .music .m_list .m_name{width:100%;height:48px;background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0,#f87d7a),color-stop(1,#ef6a6c));border-radius:5px 5px 0 0;text-align:center;line-height:48px;font-size:16px;color:#fff;}
		   .music .m_list .m_list_con{height:452px;overflow:auto;}
		   .music .m_list .m_list_con .con_song{list-style:none;line-height:40px;width:100%;background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0,#262c35),color-stop(1,#212732));border-bottom:1px solid #1b1f25;}
		   .music .m_list .m_list_con .con_song span{cursor:pointer;}
		   .music .m_list .m_list_con .con_song span:hover{color:#fff}
		   .music .m_list .m_list_con .con_song .selll{color:#fff}
		   .music .m_list .m_list_con .con_song i{width:12px;height:15px;display:block;background:url("images/icon.png") no-repeat -12px -7px;float:left;margin:11px;}
		   .music .m_list .m_list_con .con_song a{width:224px;display:block;float:left;text-decoration:none;font-size:14px;color:#7e868e;}
           .music .m_list .m_list_con .con_song a:hover{color:#fff;}
		   /*end music*/

		::-webkit-scrollbar{width:5px;height:6px;background:#ccc;}
		::-webkit-scrollbar-button{background-color:#e5e5e5;}
		::-webkit-scrollbar-track{background:#999;}
		::-webkit-scrollbar-track-piece{background:#ccc}
		::-webkit-scrollbar-thumb{background:#666;}
		::-webkit-scrollbar-corner{background:#82AFFF;}
		::-webkit-scrollbar-resizer{background:#FF0BEE;}
		scrollbar{-moz-appearance:none !important;background:rgb(0,255,0) !important;}
		scrollbarbutton{-moz-appearance:none !important;background-color:rgb(0,0,255) !important;}
		scrollbarbutton:hover{-moz-appearance:none !important;background-color:rgb(255,0,0) !important;}
	   
	   </style>
	
	</head>
<body>
  <!--music start-->
    <div class="music">
		<div class="m_lrc">
			<div class="m_title">
				<h2>krry小其音乐平台</h2>
				<div class="snas"><span class="u-icon-detail"><i></i></span></div>
			</div>
			<div class="m_con">
				<div class="lrc_con"><ul><span style="font-size:16px;color:red;text-align:center;line-height:360px;font-weight:bold;">krry小其音乐，发现心之美</span></ul></div>
				<div class="lrc_back">
					<ul>
						<li class="k_1"></li>
						<li class="k_2"></li>
						<li class="k_3"></li>
						<li class="k_4"></li>
					</ul>
				</div>
				<div class="c_play">
					<div class="curr">
						<div class="c_played"></div>
						<div class="c_cing">
							<div class="c_curr"></div>
						</div>
					</div>
					<div class="console">
						<div class="e_play">
							<div class="y_con">
								<a href="#" class="p_icon p_pre" title="上一首"></a>
								<a href="#" class="p_icon p_play" title="播放"></a>
								<a href="#" class="p_icon p_stop" title="暂停"></a>
								<a href="#" class="p_icon p_next" title="下一首"></a>
							</div>
						</div>
						<div class="b_ball">
							<div class="a_small"></div>
							<div class="a_big">
								<div class="a_current"></div>
							</div>
						</div>
						<div class="vloume"></div>
						<div class="quite"></div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="m_list">
		    <div class="m_name">krry Music</div>
			<div class="m_list_con">
				<div class="con_song" data-src="https://www.ainyi.com/krry_musicProject/mp3/卓依婷 - 亲爱的你.mp3">
					 <i></i>
					 <a href="#" class="musictitle">卓依婷 - 亲爱的你</a>
					 <p class="author" style="display:none;">卓依婷</p>
					 <span>分享</span>
				</div>
				<div class="con_song" data-src="https://www.ainyi.com/krry_musicProject/mp3/潇洒走一回 - 卓依婷.mp3">
					 <i></i>
					 <a href="#" class="musictitle">潇洒走一回 - 卓依婷</a>
					 <p class="author" style="display:none;">卓依婷</p>
					 <span>分享</span>
				</div>
				<div class="con_song" data-src="https://www.ainyi.com/krry_musicProject/mp3/魏新雨 - 醉西楼.mp3">
					 <i></i>
					 <a href="#" class="musictitle">魏新雨 - 醉西楼</a>
					 <p class="author" style="display:none;">魏新雨</p>
					 <span>分享</span>
				</div>
				<div class="con_song" data-src="https://www.ainyi.com/krry_musicProject/mp3/魏新雨 - 恋人心.mp3">
					 <i></i>
					 <a href="#" class="musictitle">魏新雨 - 恋人心</a>
					 <p class="author" style="display:none;">魏新雨</p>
					 <span>分享</span>
				</div>
				<div class="con_song" data-src="https://www.ainyi.com/krry_musicProject/mp3/魏新雨 - 愿.mp3">
					 <i></i>
					 <a href="#" class="musictitle">魏新雨 - 愿</a>
					 <p class="author" style="display:none;">魏新雨</p>
					 <span>分享</span>
				</div>
				<div class="con_song" data-src="https://www.ainyi.com/krry_musicProject/mp3/魏新雨 - 红衣.mp3">
					 <i></i>
					 <a href="#" class="musictitle">魏新雨 - 红衣</a>
					 <p class="author" style="display:none;">魏新雨</p>
					 <span>分享</span>
				</div>
				<div class="con_song" data-src="https://www.ainyi.com/krry_musicProject/mp3/童可可 - 小光芒.mp3">
					 <i></i>
					 <a href="#" class="musictitle">童可可 - 小光芒</a>
					 <p class="author" style="display:none;">童可可</p>
					 <span>分享</span>
				</div>
				<div class="con_song" data-src="https://www.ainyi.com/krry_musicProject/mp3/童可可 - 他们都说.mp3">
					 <i></i>
					 <a href="#" class="musictitle">童可可 - 他们都说</a>
					 <p class="author" style="display:none;">童可可</p>
					 <span>分享</span>
				</div>
				<div class="con_song" data-src="https://www.ainyi.com/krry_musicProject/mp3/童可可 - 该死的异地恋.mp3">
					 <i></i>
					 <a href="#" class="musictitle">童可可 - 该死的异地恋</a>
					 <p class="author" style="display:none;">童可可</p>
					 <span>分享</span>
				</div>
				<div class="con_song" data-src="https://www.ainyi.com/krry_musicProject/mp3/童可可 - 繁星.mp3">
					 <i></i>
					 <a href="#" class="musictitle">童可可 - 繁星</a>
					 <p class="author" style="display:none;">童可可</p>
					 <span>分享</span>
				</div>
				<div class="con_song" data-src="https://www.ainyi.com/krry_musicProject/mp3/童可可 - 多莉宝贝.mp3">
					 <i></i>
					 <a href="#" class="musictitle">童可可 - 多莉宝贝</a>
					 <p class="author" style="display:none;">童可可</p>
					 <span>分享</span>
				</div>
				<div class="con_song" data-src="https://www.ainyi.com/krry_musicProject/mp3/童可可 - 别让我放不下.mp3">
					 <i></i>
					 <a href="#" class="musictitle">童可可 - 别让我放不下</a>
					 <p class="author" style="display:none;">童可可</p>
					 <span>分享</span>
				</div>
				<div class="con_song" data-src="https://www.ainyi.com/krry_musicProject/mp3/夏天的风-温岚.mp3">
					 <i></i>
					 <a href="#" class="musictitle">夏天的风-温岚</a>
					 <p class="author" style="display:none;">温岚</p>
					 <span>分享</span>
				</div>
				<div class="con_song" data-src="https://www.ainyi.com/krry_musicProject/mp3/张智霖、许秋怡 - 现代爱情故事.mp3">
					 <i></i>
					 <a href="#" class="musictitle">张智霖、许秋怡 - 现代爱情故事</a>
					 <p class="author" style="display:none;">张智霖、许秋怡</p>
					 <span>分享</span>
				</div>
			</div>
		 </div>
		 <div class="clear"></div>
	</div>
<!--end music-->

<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
	//点击拉出播放列表
	var ccle = true;
	$(".snas").click(function(){
		if(ccle){
			$(".m_list").stop().animate({
				left:'-155px',
			});
			$(".m_lrc").stop().animate({
				left:'155px',
			});
			ccle = false;
		}else{
			$(".m_list").stop().animate({
				left:'0px',
			});
			$(".m_lrc").stop().animate({
				left:'0px',
			});
			ccle = true;
		}
	});
    //创建一个MP3播放器
	var audioDom = document.createElement("audio");
	//设置初始音量为0.5
	audioDom.volume = 0.5;
	//获取音乐播放列表
	var children = $(".m_list_con").children();
	//获取列表长度
	var len = children.length;
	//定义数组存放播放列表
	var musicArr = [];
	//设置初始下标
	var playIndex = -1;
	//做一把锁，控制装载最后一行歌词
	var lrcClose = true;

	children.each(function(){
		musicArr.push($(this).data("src"));
	}).on("click",function(){
		//获取音乐列表数组下标
		playIndex = $(this).index();
		//把点击的音乐地址赋给播放器
		audioDom.src = musicArr[playIndex];
		playMusic(playIndex);
	});

	//播放音乐
	function playMusic(playIndex){
		//设置当前音乐标题的样式
		children.eq(playIndex).find(".musictitle").addClass("selll").parent().siblings().find(".musictitle").removeClass("selll");
		//播放音乐
		audioDom.play();
		//设置当前音乐的前面的gif图
		children.eq(playIndex).find("i").css("background","url('images/play.gif') no-repeat").parent().siblings().find("i").css("background","url('images/icon.png') no-repeat -12px -7px");
		//播放按钮隐藏，暂停按钮显示
		$(".p_play").hide();
		$(".p_stop").show();
		//设置当前音乐标题
		setTitle(playIndex);
		//装载歌词
		setLRC(playIndex);
		//设置背景图片
		setBack(playIndex);

		lrcClose = true; //解锁，装载最后一行歌词
	}

	//设置当前音乐标题
	function setTitle(playIndex){
		//获取当前音乐的地址
		var musicSrc = musicArr[playIndex];
	//分割"/" 获得["http:"," ","www.krrymusic.xin","krry_musicProject","mp3","魏新雨 - 醉西楼.mp3"]
		var musicTitleArr = musicSrc.split("/");
		console.log(musicTitleArr);
		//取下标为5的音乐title(亲爱的你 - 卓依婷.mp3)
		var musicTitle = musicTitleArr[5];
		//第二次分割"." 获得["亲爱的你 - 卓依婷","mp3"]
		var musicNameArr = musicTitle.split(".");
		//取下标为0的歌曲title(亲爱的你 - 卓依婷)
		var musicName = musicNameArr[0];
		//设置当前播放音乐的title
		$(".m_title h2").text(musicName);
		return musicName;
	}

	//设置背景图片
	function setBack(playIndex){
		//获取演唱者
		var author = children.eq(playIndex).find(".author").text();
		for(var i = 1;i<5;i++){
			$(".k_"+i).css({
				background:"url('images/"+author+i+".jpg')",
				backgroundSize:"cover",
			});
		}
		$(".music .m_lrc .m_con").css("background","#212732");
	}
	//歌手背景图片的定时切换
	var Index = 0;
	setInterval(function(){
		Index++;
		if(Index > 3) Index = 0;
		$(".lrc_back ul li").eq(Index).show().animate({"opacity":1},1500).siblings().animate({"opacity":0},1500);
	},5000);

	//装载歌词
	function setLRC(playIndex){
		var title = setTitle(playIndex);
		//异步ajax请求歌词
		$.ajax({
			url:"lrc/"+title+".lrc",
			type:"post",
			error:function(req,msg){
				$(".lrc_con").html("<li" +
			"style='line-height:355px;height:355px;text-align:center;" +
			"font-size:18px;color:#FB2727;font-weight:bold;list-style:none;'>" +
			"暂无歌词，敬请期待"+
			"</li>");
			},
			success:function(data){
				//第一次分离歌词,以“[”分割，得到[,"03:01.08]这个世界变得更加美丽"]
				var lrcArr = data.split("[");
				var bofo = -1; //记录上一行歌词的秒数
				var ms = -1; //当前这一行的秒数
				//歌词
				var html = "";
				var lrclast = null; //记录上一行的歌词
				var lrcmes = null; //记录当前行的歌词
				for(var i = 0;i < lrcArr.length;i++){
					//第二次分割歌词，变成["03:01.08","这个世界变得更加美丽"],数组以逗号分隔
					var arr = lrcArr[i].split("]");
					//取到数组arr下标为1的歌词部分
					//将上一行的歌词赋值给lrclast
					lrclast = lrcmes; 
					//得到当前歌词
					lrcmes = arr[1];
					//取到时间
					var time = arr[0].split("."); //变成["03:01","08"]
					//取到time下标为0的分钟和秒
					var ctime = time[0].split(":"); //变成["03","01"];
					//将上一行的秒数赋值给bofo
					bofo = ms;
					//转化成秒数
					ms = ctime[0]*60 + ctime[1]*1;
					//如果上一行和当前行秒数相同，则当前行秒数++ ,解决秒数相同的办法
					if(bofo == ms){
						ms++;
					}
					if(ms >= 0){
						if(!isNaN(bofo)){ //如果是数字
							var classeName = "l_"+bofo;
							var concon = bofo;//bofo会自增，所以下面for循环条件用这个变量来代替
							for(var j = 0;j < ms-concon-1;j++){
								classeName += " l_"+ ++bofo;
							}
							if(lrclast.indexOf("\r")==0 || lrclast.indexOf("\r")==1 || lrclast=="\n"){
								html += "<li class='"+classeName+"' style='height:27px'>"+lrclast+"</li>";
							}else{
								html += "<li class='"+classeName+"'>"+lrclast+"</li>";
							}
						}
					}
				}
				//装载最后一行歌词的机制，先获取歌曲总时间
				setTimeout(function(){
					var allall = audioDom.duration;
					var classlaName = "l_"+ms;
					var conben = ms; //ms会自增，所以下面for循环条件必须用这个变量来代替
					for(var j = 0;j < allall-conben-1;j++){
						classlaName += " l_"+ ++ms;
					}
					html += "<li class='"+classlaName+"'>"+lrcmes+"</li>";
					//把解析好的歌词放入歌词展示区中
					$(".lrc_con ul").html(html);
				},200);	
			}
		});
	}


	//满屏歌词
	function listenerMan(){
		//获取当前播放时间
		var time  = this.currentTime;
		//解析歌词对应的时间
		var ct = parseInt(time);
		$(".l_"+ct).addClass("sel").siblings().removeClass("sel");
		$(".lrc_con").stop().animate({
			scrollTop:($(".sel").index()+1)*27 - 189
		},300);
	}

	//三行歌词
	function listenerSan(){
		//获取当前播放时间
		var time  = this.currentTime;
		//解析歌词对应的时间
		var ct = parseInt(time);
		$(".l_"+ct).addClass("sel").siblings().removeClass("sel");
		$(".lrc_con ul").stop().animate({
			scrollTop:($(".sel").index()+1)*27 - 54
		},300);
	}

	//一开始默认为满屏歌词
	audioDom.addEventListener("timeupdate",listenerMan);

	//控制满屏歌词和三行歌词的锁
	var lrcsanClose = true;

	//两个监听满屏歌词和三行歌词的事件的互换
	function changeListener(){
		if(lrcsanClose){
			$(".lrc_con").find("ul").css({
				overflow: "hidden",
				height: "81px",
				marginTop: "266px"
			});
			//移除满屏歌词监听事件  添加三行歌词监听事件
			audioDom.removeEventListener("timeupdate",listenerMan);
			audioDom.addEventListener("timeupdate",listenerSan);
			lrcsanClose = false;
		}else{
			//移除ul的样式
			$(".lrc_con").find("ul").removeAttr("style");
			//移除三行歌词监听事件  添加满屏歌词监听事件
			audioDom.addEventListener("timeupdate",listenerMan);
			audioDom.removeEventListener("timeupdate",listenerSan);
			lrcsanClose = true;
		}
	}

	//当点击歌词区域的时候,歌词变换
	$(".lrc_con").click(changeListener);

	audioDom.ontimeupdate = function(){
		//获取总时长
		var time = this.duration;
		//获取播放时长
		var stime = this.currentTime;
		//获取播放进度
		var scurrent = stime / time;
		//转换成百分比
		var percent = scurrent * 100;
		//根据歌曲进度赋值
		$(".c_played").width(percent+"%");
		$(".c_curr").css("left",percent+"%");
	}

	//点击拖拽进度条
	$(".curr").mousedown(function(e){
		//获取点击的位置
		var _this = $(this);
		var e = e || window.event;
		var x = e.clientX;
		//获取起点位置
		var le = _this.offset().left;
		//获取进度条总宽度
		var maxWidth = _this.width();
		//当前点击的进度为
		var left = x - le;
		//换算成百分比
		var per = left/maxWidth*100;
		if(per < 0) per = 0;
		if(per > 100) per = 100;
		$(".c_played").css("width",per+"%");
		$(".c_curr").css("left",per+"%");
		//联动进度
		audioDom.currentTime = audioDom.duration*per/100;

		$(document).mousemove(function(e){
			var e = e || window.event;
			var x1 = e.clientX;
			//当前点击的进度为
			var left1 = x1 - le;
			//换算成百分比
			var per1 = left1/maxWidth*100;
			if(per1 < 0) per1 = 0;
			if(per1 > 100) per1 = 100;
			$(".c_played").css("width",per1+"%");
			$(".c_curr").css("left",per1+"%");
			//联动进度
			audioDom.currentTime = audioDom.duration*(per1/100);
		}).mouseup(function(){
			$(document).unbind("mousemove");
			$(document).unbind("mouseup");
		});
	});

	//点击拖拽音量条
	$(".b_ball").mousedown(function(e){
		$(".quite").hide();
		$(".vloume").show();
		//获取点击的位置
		var _this = $(this);
		var e = e || window.event;
		var x = e.clientX;
		//获取起点位置
		var le = _this.offset().left;
		//获取音量条总宽度
		var maxWidth = _this.width();
		//当前点击的音量为
		var left = x - le;
		if(left < 0) left = 0;
		if(left > maxWidth) left = maxWidth;
		$(".a_small").css("width",left+"px");
		$(".a_current").css("left",left+"px");
		//联动音量
		audioDom.volume = left/maxWidth;

		$(document).mousemove(function(e){
			var e = e || window.event;
			var x1 = e.clientX;
			//当前点击的音量为
			var left1 = x1 - le;
			if(left1 < 0) left1 = 0;
			if(left1 > maxWidth) left1 = maxWidth;
			$(".a_small").css("width",left1+"px");
			$(".a_current").css("left",left1+"px");
			//联动音量
			audioDom.volume = left1/maxWidth;
		}).mouseup(function(){
			$(document).unbind("mousemove");
			$(document).unbind("mouseup");
		});
	});

	var currentVolume = 0;   //储存当前的音量，为恢复音量做准备
	var currentWidth = 0;  //储存当前音量条的长度
	//点击音量图标设置静音
	$(".vloume").mousedown(function(){
		$(".quite").show();
		$(".vloume").hide();
		currentVolume = audioDom.volume;//储存当前的音量，为恢复音量做准备
		currentWidth = $(".a_small").width();  //储存当前音量条的长度
		//设置音量条长度为0
		$(".a_small").width(0 + "px");
		$(".a_current").css("left",0 + "px");
		audioDom.volume = 0;
	});

	//点击音量图标恢复原来音量
	$(".quite").mousedown(function(){
		$(".vloume").show();
		$(".quite").hide();
		//恢复之前音量条长度
		$(".a_small").width(currentWidth + "px");
		$(".a_current").css("left",currentWidth + "px");
		audioDom.volume = currentVolume;//恢复当前音量
	});

	//点击播放音乐
	$(".p_play").click(function(){
		if(playIndex == -1){
			playIndex = 0;
			audioDom.src = musicArr[playIndex];
		}
		playMusic(playIndex);
	});

	//点击暂停播放
	$(".p_stop").click(function(){
		stopmusic();
	});

	function stopmusic(){
		audioDom.pause();
		$(".p_play").show();
		$(".p_stop").hide();
		children.eq(playIndex).find("i").css("background","url('images/icon.png')no-repeat -12px -7px");
	}

	//点击上一首音乐
	$(".p_pre").click(function(){
		//边界判断
		playIndex = (playIndex == 0)? 0 : --playIndex;
		//赋值给播放地址
		audioDom.src = musicArr[playIndex];
		//播放
		playMusic(playIndex);
	});

	//点击下一首音乐
	$(".p_next").click(function(){
		//边界判断
		playIndex = (playIndex == (len-1))? 0 : ++playIndex;
		//赋值给播放地址
		audioDom.src = musicArr[playIndex];
		//播放
		playMusic(playIndex);
	});

	//当音乐播放结束，继续下一首
	audioDom.onended = function(){
		$(".p_next").trigger("click");
	}

</script>
</body>

</html>