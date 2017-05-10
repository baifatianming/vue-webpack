<template>
	<div>
		<private-header></private-header>
		<div class="banner big">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					  <div class="swiper-slide" v-for="(key,item) in banner_pic"><img :src="key" alt=""></div>
			  	</div>
			  		<div class="swiper-pagination"></div>
			</div>
		</div>
		<div class="middle">
			<ul>
				<li><a href="#"><img src="../../imgs/icon_comments170328_CN.gif" alt=""></a></li>
				<li><a href="#"><img src="../../imgs/icon_freeshipping161116_CN.gif" alt=""></a></li>
				<li><a href="#"><img src="../../imgs/icon_wx161116_CN.gif" alt=""></a></li>
				<li><a href="#"><img src="../../imgs/icon_wb161116_CN.gif" alt=""></a></li>
				<li><a href="#"><img src="../../imgs/icon_7dayreturn161116_CN.gif" alt=""></a></li>
			</ul>
		</div>
		<div class="waterfall">
			<div class="box"  v-for='(key,item) in pic_url'>
				<img :src="key_pic" v-for='(key_pic,item_pic) in key'>
			</div>	
			
		</div>
		<!-- <private-introduce></private-introduce> -->
    	<private-footer></private-footer>
		</div>	
</template>

<script type="text/javascript">
	import "../index/swiper.min.css";
	import "../index/swiper.min.js";
	import "./jquery-1.8.3.min.js";
	import "./jquery.lazyload.min.js"
	import "./index_pc.css"

	import '../../components/css/public.css'
  import header from '../../components/public/head.vue';
  import introduce from '../../components/public/bottom.vue';
  import footer from '../../components/public/footer.vue'
  import equipType from './equipMonitor.js';
	  export default {
	    data(){
	     return {

				"banner_pic":["../../img/NEWS_1180X570_170321_CN2.gif",
							"../../../img/SPORTS_1180X570_170414_CN.jpg",
							"../../../img/DRESS_1180X570_170412_CN.jpg",
							"../../../img/EDM_1180x570_170413_CN_1.jpg",
							"../../../img/2P110_1180X570_170413_CN.jpg",
							"../../../img/17SSBUSINESS_1180X570_170412_CN.jpg",
							"../../../img/30338_1180X570_170412_CN.jpg",
							"../../../img/2P70_1180X570_170413_CN.jpg"]
				,				
				"pic_url": [["../../../../img/indexWaterFall/1.jpg",
								"../../../../img/indexWaterFall/2.jpg",
								"../../../../img/indexWaterFall/3.jpg",
								"../../../../img/indexWaterFall/4.jpg"],
							["../../../../img/indexWaterFall/5.jpg",
								"../../../../img/indexWaterFall/6.jpg",
								"../../../../img/indexWaterFall/7.jpg",
								"../../../../img/indexWaterFall/8.jpg"
								],
								["../../../../img/indexWaterFall/9.jpg",
								"../../../../img/indexWaterFall/10.jpg",
								"../../../../img/indexWaterFall/11.jpg",
								"../../../../img/indexWaterFall/12.jpg"
								],
								["../../../../img/indexWaterFall/13.jpg",
								"../../../../img/indexWaterFall/14.jpg",
								"../../../../img/indexWaterFall/15.jpg",
								"../../../../img/indexWaterFall/16.jpg"
								],
								["../../../../img/indexWaterFall/17.jpg",
								"../../../../img/indexWaterFall/18.jpg",
								"../../../../img/indexWaterFall/19.jpg",
								"../../../../img/indexWaterFall/20.jpg"
								],
								["../../../../img/indexWaterFall/21.jpg",
								"../../../../img/indexWaterFall/22.jpg",
								"../../../../img/indexWaterFall/23.jpg",
								"../../../../img/indexWaterFall/24.jpg"
								],
								["../../../../img/indexWaterFall/25.jpg",
								"../../../../img/indexWaterFall/26.jpg",
								"../../../../img/indexWaterFall/27.jpg",
								"../../../../img/indexWaterFall/28.jpg"
								],
								["../../../../img/indexWaterFall/29.jpg",
								"../../../../img/indexWaterFall/30.jpg",
								"../../../../img/indexWaterFall/31.jpg",
								"../../../../img/indexWaterFall/32.jpg"
								],
								["../../../../img/indexWaterFall/33.jpg",
								"../../../../img/indexWaterFall/34.jpg",
								"../../../../img/indexWaterFall/35.jpg",
								"../../../../img/indexWaterFall/36.jpg"
								]]
					
	     }
	   },
  components:{
    'private-header':header,
    'private-introduce':introduce,
    'private-footer':footer
  },
	   created()
	   {
	   	    setTimeout(function(){
	   	    	var pic = $('.box>img');
	   	    	 var short = pic.eq(0).height();
				var tall = pic.eq(1).height(); 
				var gap = parseInt(pic.eq(1).css('margin-left').split('ex'));
				$('.waterfall').css({
					'margin-top': gap+'px',
					'margin-bottom':gap+'px'
				});
				$('.waterfall').css({
					height: parseInt(short+tall+gap)
				});
				$('.box').css({
					'height':$('.waterfall').height(),
					'margin-bottom':gap
				});
				var n = pic.length;
				for(var x=0;x<n;x++)
				{
					var obj = new Object;
					obj[x]=pic[x]
					switch(x%4)
					{
					case 0:
					console.log(x);
					pic.eq(x).css({
						top: '0',
						left: '0'
					});break;

					case 1:
					pic.eq(x).css({
						top:'0',
						right:'0'
					});break;

					case 2:
					pic.eq(x).css({
						top:tall+gap,
						right:'0'
					});break;

					case 3:
					pic.eq(x).css(
					{
						top:short+gap,
						left:'0'
					});break;
				}
				}
				$('img').lazyload();
				pic.css({
					cursor: 'pointer'
				});	
				pic.click(function(event) {
					/* Act on the event */
					self.location='http://localhost:8080/#/goodslist';
				});
				var equipM = new equipType()
				if(equipM.monitor().mobile)
				{
					
					var a = $('.box').index();
					console.log(gap);
					$('.box').eq(a).css({
						'margin-bottom': gap+50+'px'
					});
					var t = $('.box').eq(a).css('margin-bottom');
					console.log(t);
				}

		   	},1000)
	   	    },
		mounted(){
			setTimeout(function(){
				var mySwiper = new Swiper('.swiper-container', {
				autoplay: 3000,//可选选项，自动滑动
				pagination : '.swiper-pagination',
				paginationClickable :true,
				loop:true
			})
			},500)
			
		}	
	 }
</script>

					