//public
	class equipType
	{
		constructor() {};
		monitor()
		{
			var u = navigator.userAgent, app = navigator.appVersion;
			
			return { // 客户端浏览器版本信息 
					// trident: u.indexOf('Trident') > -1, // IE内核
					// webKit: u.indexOf('AppleWebKit') > -1, // 苹果、谷歌内核
					mobile: !!u.match(/AppleWebKit.*Mobile.*/), // 是否为移动终端
					// UC_Browser:u.indexOf('Linux')>-1,
					Android: u.indexOf('Android') > -1|| u.indexOf('Linux') > -1, // android终端或者uc浏览器
					iPhone: u.indexOf('iPhone') > -1 || u.indexOf('Mac') > -1 // 是否为iPhone或者QQHD浏览器
				};
		}
		equipment()
		{
			let temp = this.monitor();
			console.log(temp);
			for(let key in temp)
			{
				if(temp[key]==true)
				{
					document.write(123);
					return key;
				}
			}
		}
	}

export default equipType;