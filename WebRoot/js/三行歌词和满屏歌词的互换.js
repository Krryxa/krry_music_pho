
//创建一个MP3播放器
	var audioDom = document.createElement("audio");
//满屏歌词
	function listenerMan(){
		//获取当前播放时间
		var time  = this.currentTime;
		//解析歌词对应的时间
		var ct = parseInt(time);
		$(".l_"+ct).addClass("sel").siblings().removeClass("sel");
		$(".lrc_con").stop().animate({
			scrollTop:($(".sel").index())*23.94 - 164
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
			scrollTop:($(".sel").index())*23.94 - 24
		},300);
	}

	//一开始默认为三行歌词
	audioDom.addEventListener("timeupdate",listenerMan);

	//控制满屏歌词和三行歌词的锁
	var lrcsanClose = true;

	//两个监听满屏歌词和三行歌词的事件的互换
	function changeListener(){
		if(lrcsanClose){
			$(".lrc_con").find("ul").css({
				overflow: "auto",
				height: "73px",
				marginTop: "286px"
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