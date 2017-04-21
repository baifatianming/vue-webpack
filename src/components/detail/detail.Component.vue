<template>
	<div class="mian-detail-content">
		<!-- <div id="main-header">
			<div>
				<a href="http://localhost:8080/" class="logo"></a>
				<div id="searchbox">
					<a href="javascript" class="ui-link">
						<i class="icon-search"></i>
					</a>	
				</div>
			</div>
		</div>

		<div id="main-menu" @click="addActive">
			<ul>
				<li data-category="WOMEN" class="wd16">
					<span id="WOMEN" class="ui-btn" >女装</span>
				</li>
				<li data-category="MEN" class="wd16">
					<span id="MEN" class="ui-btn">男装</span>
				</li>
				<li data-category="KIDS" class="wd16">
					<span id="KIDS" class="ui-btn">童装</span>
				</li>
				<li data-category="BABY" class="wd20">
					<span id="BABY" class="ui-btn" >婴幼儿</span>
				</li>
				<li data-category="SPORTS" class="wd16">
					<span id="SPORTS" class="ui-btn" >运动</span>
				</li>
				<li data-category="SALE" class="wd16">
					<span id="SALE" class="ui-btn">特惠</span>
				</li>
			</ul>
		</div> -->
		<private-header></private-header>
		<div class="big">
		<div id="main-content">
			<div class="sitemap">
				<a href="#" class="ui-link">
					<i class="icon-angle-left"></i>
				</a>
				<span class="maptext">
					<a href="#" class="ui-link">MEN</a>
					/
					<a href="#" class="ui-link">T恤&POLO</a>
					/
					<a href="#" class="ui-link">短袖,背心</a>
				</span>
				
			</div>

			<div class="d-product-img">
				<div class="owl-stage-outer">
					<div class="d-img swiper-container" style="width:240px">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<img :src="dataf.goodsImgMsg"/>
							</div>
							<div v-for="item in datafirst.split(',')" class="swiper-slide">
								<img :src="item"/>
							</div>	
						</div> 
						<div class="swiper-pagination"></div>			
					</div>
				</div>			
			</div>

			<div class="order">
				<div class="product-info">
					<div class="name-area">
						{{dataf.goodsName}}
						（<span>{{dataf.goodsColor}}</span>）
					</div>
					<div class="price-area">
						<div class="l-div">
							<span class="sprice">¥</span>
							<span class="price">29</span>
							<span class="store-price activities">39</span>
						</div>
						<div class="r-div">
							<a href="#">
								【限时热促．2件 ¥58】
							</a>
						</div>
					</div>
				</div>
				<div class="color" @click="addcurrent">
					<a data-sort='' class="product-color" v-for="(item,index) in datasource" >
						<img :src='"../../../img/"+item.goodsColor+".jpg"' :class="index==0?'current':''" :data="item.goodsColor"/>
					</a>
				</div>
				<div class="size">
					<span>尺码</span>
					<div class="sizelist" @click.stop="addborder">
						<a class="product-size" v-for="item in datasize">{{item}}</a>
					</div>
					<div class="keep-box" @click="addon">
						<span class="product-keep">收藏</span>
					</div>
				</div>
				<table id="amt-table">
					<tbody>
						<tr>
							<td>
								<div class="ui-nodisc-icon">
									<a class="decrease" @click="minus"></a>
									<input type="text" class="order-amount" v-model="quantity"/>
									<a class="increase" @click="add"></a>
								</div>
							</td>
							<td class="alignr">
								<a href="#" class="addShopcar" @click.prevent="addShopcar">加入购物车</a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="product-report gapm20">
				<div class="ui-grid-b product-report-nav" @click="addopen">
					<div class="ui-block-a open">图文详解</div>
					<div class="ui-block-b">尺码说明</div>
					<div class="ui-block-c productComment">
						评价
						(<span id="comment-count">3</span>)
					</div>
				</div>
				<div class="product-img open" >
					<img v-for="item in datadetail" :src="item" style="width: 300px; display: inline;"/>
				</div>
				<div class="product-size">
					<div class="ui-collapsible">
						<h4 class="ui-collapsible-heading ui-collapsible-heading-collapsed" @click.prevent="change">
							<a href="#" class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-inherit ui-icon-carat-d">
								<span class="after aa"></span>
								<span>材质及说明</span>
							</a>
						</h4>
						<div class="ui-collapsible-content ui-body-inherit">
							<div class="product-desc">
			                    <ul class="font14 gapl5">
			                        <li>大身 : 棉76%、聚酯纤维24%</li><li>罗纹 : 棉82%、聚酯纤维18%</li>
			                        
			                        <li style="line-height: 1;">&nbsp;</li>
			                        <li>1.深浅色请分开洗涤。</li><li>2.请放入细网洗衣袋中弱速水洗，以保持商品型态。 </li><li>3.洗涤时，水温请低于30℃；请使用中性洗剂；请勿长时间浸泡。</li><li>4.请勿使用漂白剂、荧光增白剂及衣物柔软剂，以免破坏布料。</li><li>5.不可湿放，以免衣物染色；请弱速轻脱水，不可烘干，以免衣物缩水。</li>
			                        
			                    </ul>
			                </div>
			                
						</div>
					</div>
					<div class="ui-collapsible">
		                <h4 class="ui-collapsible-heading ui-collapsible-heading-collapsed" @click.prevent="change">
		                	<a href="#"class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-inherit ui-icon-carat-d">
		                		<span class="after aa"></span>
		                		商品尺码表
		                		<!-- <span></span> -->
		                	</a>
		                </h4>
		                <div class="ui-collapsible-content ui-body-inherit">
		                	<div id="size-report-area" class="osize font-xs" style="width: 100%; overflow-x: scroll;">
			                    <table><thead><tr><th class="t-title" colspan="8">商品尺码表</th></tr><tr><th>尺码(cm)</th><th>身高/胸围</th><th>肩宽</th><th>胸宽</th><th>袖长</th><th>袖口宽</th><th>衣长</th><th>下摆</th></tr></thead><tbody><tr><td>S</td><td>165/84A</td><td>43.5</td><td>46</td><td>19</td><td>15.5</td><td>63.5</td><td>46</td></tr><tr><td>M</td><td>170/92A</td><td>45</td><td>49</td><td>20.5</td><td>16.5</td><td>66.5</td><td>49</td></tr><tr><td>L</td><td>175/100A</td><td>46.5</td><td>52</td><td>21.5</td><td>17.5</td><td>69.5</td><td>52</td></tr><tr><td>XL</td><td>180/108B</td><td>48.5</td><td>56</td><td>22.5</td><td>18.5</td><td>72.5</td><td>56</td></tr><tr><td>XXL</td><td>185/112C</td><td>50.5</td><td>60</td><td>22.5</td><td>19.5</td><td>75.5</td><td>60</td></tr></tbody></table>
			                    
			                </div>
			                <div id="try-report-area" class="osize font-xs" style="width: 100%; overflow-x: scroll;">
			                    <table><thead><tr><th class="t-title" colspan="7">试穿纪录</th></tr><tr><th>试穿人员</th><th>身高(cm)</th><th>胸围</th><th>体重(kg)</th><th>肩宽</th><th>建议尺码</th><th>穿着感</th></tr></thead><tbody><tr><td>人员1</td><td>166-170</td><td>85.7</td><td>61</td><td>42</td><td>S</td><td>适中</td></tr><tr><td>人员2</td><td>166-170</td><td>101</td><td>103.1</td><td>44</td><td>XL</td><td>适中</td></tr><tr><td>人员3</td><td>171-175</td><td>97</td><td>76.3</td><td>41</td><td>L</td><td>适中</td></tr><tr><td>人员4</td><td>171-175</td><td>92.5</td><td>67.2</td><td>43</td><td>M</td><td>适中</td></tr><tr><td>人员5</td><td>176-180</td><td>105</td><td>94.9</td><td>45.5</td><td>XXL</td><td>适中</td></tr><tr><td>人员6</td><td>176-180</td><td>93</td><td>78.5</td><td>44</td><td>L</td><td>适中</td></tr></tbody></table>
			                    
							</div>
							<div id="feather-content-area" class="osize font-xs"></div>
							<div id="model-info-area" class="osize font-xs" style="width: 100%; overflow-x: scroll;">

								<table>
								<tbody><tr><td class="t-title" colspan="4">模特儿信息</td></tr>
								<tr>
								<td colspan="4"><img class="v_middle" src="http://s4.lativ.com/m/i/ModelPicture/1759126924/08_1.jpg" alt=""></td>
								</tr>

								<tr>

								<td>
								身高</td>
								<td>
								181</td>

								<td>
								体重(kg)</td>
								<td>
								67</td>

								</tr>

								<tr>

								<td>
								肩宽</td>
								<td>
								44</td>

								<td>
								胸围</td>
								<td>
								88</td>

								</tr>

								<tr>

								<td>
								腰围</td>
								<td>
								76</td>

								<td>
								低腰围</td>
								<td>
								84</td>

								</tr>

								<tr>

								<td>
								臀围</td>
								<td>
								96</td>

								<td colspan="2"></td>

								</tr>

								<tr class="gray-bg">
								<td colspan="4">
								试穿尺寸</td>
								</tr>
								<tr class="gray-bg">

								<td>
								上身</td>
								<td>
								M</td>

								<td>
								下身</td>
								<td>
								M／30／79</td>

								</tr>

								</tbody>
								</table>

								</div>
			                </div>
		                </div>
		                
					
	                <div class="ui-collapsible">
		                <h4 class="ui-collapsible-heading ui-collapsible-heading-collapsed" @click.prevent="change">
		                	<a href="#"class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-inherit ui-icon-carat-d">
		                		<span class="after aa"></span>
		                		尺码测量方式
		                		<span></span>
		                	</a>
		                </h4>
		                <div class="ui-collapsible-content ui-body-inherit" aria-hidden="false">
                
			                <img id="size-report-img" src="http://s3.lativ.com/m/images/sizechart01_CN.gif?4028">
			            </div>	
	                </div>
	                <div class="ui-collapsible">
		                <h4 class="ui-collapsible-heading ui-collapsible-heading-collapsed" @click.prevent="change">
		                	<a href="#"class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-left ui-btn-inherit ui-icon-carat-d">
		                		<span class="after aa"></span>
		                		试穿测量方式
		                	</a>
		                </h4>
		                <div class="ui-collapsible-content ui-body-inherit" aria-hidden="false">
                
			                <img id="try-report-img" src="http://s3.lativ.com/m/images/sizechart02_CN.gif?4028">
			            </div>
	                </div>
				</div>
				<div class="product-comment">
					<div class="comment-template">
						<div class="comment-order">订单后四位：<span class="comment-order-id">4888 - 上海</span></div>
						<div class="comment-content">很好看清新</div>
						<div class="comment-info"><span class="comment-product-info">白色-175/100A/L</span><span class="comment-time gridr">2017-04-16 12:29</span></div>
					</div>
					<div class="comment-template">
						<div class="comment-order">订单后四位：<span class="comment-order-id">5185 - 江西省</span></div>
						<div class="comment-content">价格很实惠，衣服也蛮好看。相当满意</div>
						<div class="comment-info"><span class="comment-product-info">白色-175/100A/L</span><span class="comment-time gridr">2017-04-07 15:54</span></div>
					</div>
					<div class="comment-template">
						<div class="comment-order">订单后四位：<span class="comment-order-id">9723 - 江苏省</span></div>
						<div class="comment-content">穿着不错</div>
						<div class="comment-info"><span class="comment-product-info">白色-165/84A/S</span><span class="comment-time gridr">2017-04-06 20:17</span></div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<private-introduce></private-introduce>
    	<private-footer></private-footer>
	</div>
</template>

<script type="text/javascript">
	import './detail.Component.css'
	import $ from 'jquery'
	import './js/swiper.css'
	import Swiper from "./js/swiper.min.js"

	import '../../components/css/public.css'
 	import header from '../../components/public/head.vue';
  	import introduce from '../../components/public/bottom.vue';
  	import footer from '../../components/public/footer.vue'
  	import url from '../../../baseUrl.js'
	export default {
		name:'detail',
		data:function(){
			return {
				datasource:[],
				status:false,
				quantity:1,
				datafirst: "",
				dataf:{},
				datasize:[],
				datadetail:[],
				goodsId:'',
				imgSrc:'',
				price:'29',
				color:'',
				size:'',
				description:''
			}
		},
		methods:{
			addActive:function(event){
				// console.log(event.target);
				$(event.currentTarget).find('li').removeClass('active');
				var addactive = $(event.target).parent().addClass('active');
			},
			add:function(event){
				// console.log($(event.target));
				const inputAdd = parseInt($(event.target).prev().val());
				this.quantity = inputAdd + 1;
			},
			minus:function(event){
				// console.log(event.target);
				let inputMin = parseInt($(event.target).next().val());
				if(inputMin >1){
					this.quantity = inputMin - 1;
				}				
			},
			addcurrent:function(event){
				// console.log(event.target);
				// console.log($(event.target).prop('tagName'));
				var self = this;
				if($(event.target).prop('tagName')=="IMG"){
					$(event.currentTarget).find('img').removeClass('current');
					$(event.target).addClass('current');				
				
					let color = $(event.target).attr('data');
					
					var srcPath = $('.swiper-slide').first().children().attr('src');

					var k1 = srcPath.lastIndexOf('-');
					var k2 = srcPath.lastIndexOf('.');
					var k3 = srcPath.substring(k1+1,k2);
					// console.log(k3);

					var path = srcPath.replace(srcPath.substring(k1+1,k2),color)
					

					$('.swiper-slide').first().children().attr('src',path);

					$('.order').find('.name-area').children().html(color);

					self.imgSrc = $('.swiper-slide').first().children().prop('src');
					self.color = color;
				}
				
				
			},
			addborder:function(event){
				// console.log(event.target);
				$(event.currentTarget).find('a').removeClass('current');
				$(event.target).addClass('current');
				
				if($(event.target).prop('tagName')=="A"){
					this.size = $(event.target).text();
				}else if($(event.target).prop('tagName')=="IMG"){
					this.size = $(event.target).parent().text();
				}

				console.log(this.size )
				$(event.currentTarget).find('img').remove();
				$(event.target).append('<img src="../../../img/size_select.png">')
			},
			addon:function(event){
				if($(event.target).hasClass('on')){
					$(event.target).removeClass('on')
				}else{
					$(event.target).addClass('on')
				}
			},
			addopen:function(event){
				const productImg = $('.gapm20').find('.product-img');
				const productSize = $('.gapm20').find('.product-size');
				const productComment = $('.gapm20').find('.product-comment');
				// console.log(event);
				if($(event.target).prop("tagName")=="DIV"){
					$(event.target).siblings().removeClass('open');
					$(event.target).addClass('open');
					console.log($(event.target).prop("class"));
					if($(event.target).prop("class")=='ui-block-a open'){
						$('.gapm20').children('div :gt(0)').removeClass('open');
						productImg.addClass('open');
					}else if($(event.target).prop("class")=='ui-block-b open'){
						$('.gapm20').children('div :gt(0)').removeClass('open');
						productSize.addClass('open');
					}else{
						$('.gapm20').children('div :gt(0)').removeClass('open');
						productComment.addClass('open');
					}
				}else{
					// console.log(111);
					$(event.target).parent().siblings().removeClass('open');

					$(event.target).parent().addClass('open');

					$('.gapm20').children('div :gt(0)').removeClass('open');
					$('.gapm20').find('.product-comment').addClass('open');
				}
			},
			change:function(event){
				// console.log($(event.currentTarget));
				const show = $(event.currentTarget).next();
				show.toggle();
				if(show.css('display')=='block'){
					console.log($(event.currentTarget).find('.ui-btn'))
					$(event.currentTarget).find('.ui-btn').removeClass('ui-icon-carat-d').addClass('ui-icon-carat-u');
				}else{
					$(event.currentTarget).find('.ui-btn').removeClass('ui-icon-carat-u').addClass('ui-icon-carat-d');
				}
			},
			addShopcar:function(event){
				var username=window.localStorage.getItem("username");
				// console.log(this)
				const obj = {
					"type":"add",
					"goodsId":this.goodsId,
					"num":this.quantity,
					"description":this.description,
					"imgSrc":this.imgSrc,
					"price":this.price,
					"color":this.color,
					"size":this.size,
					"username":username
				};
				console.log(obj.description);
				$.ajax({
					url: url.baseUrl+'php/goodscart.php',
					type: 'POST',
					dataType: 'json',
					data: obj,
					success:function(res){
						console.log(res);
					},
					error:function(res){
						console.log(res)
					}
				})
				
			}
		},
		created:function(){

			
			const self = this;
			console.log(location.hash);
			const goodsId = location.hash.split('/')[2];
			this.goodsId = goodsId;
			// console.log(goodsId);
			$.ajax({
				url: url.baseUrl+'php/detail.php',
				type: 'GET',
				dataType: 'json',
				data: {goodid: goodsId},
				success:function(res){
					console.log("success");
					self.datasource = res;
					self.datafirst = res[0].goodsImgLun;
					// self.status = true;
					self.description = res[0].goodsName;
					self.color = res[0].goodsColor;
					self.imgSrc = res[0].goodsImgMsg;
					self.dataf = res[0];
					self.datasize = res[0].goodsSize.split(',');
					self.datadetail = res[0].goodsImgDetail.split(',');
					// console.log(res[0]);
					// console.log(self.datafirst);
					// console.log(self.datasource);
				},
				error:function(error){
					console.log(error);	
				}
			})		
			
		},
		mounted:function(){
			setTimeout(function(){
				var swiper = new Swiper('.swiper-container',{
					pagination: '.swiper-pagination',
			    	paginationClickable: true,
			    	spaceBetween: 30,
				});
			},500)
		},
  components:{
    'private-header':header,
    'private-introduce':introduce,
    'private-footer':footer
  }
	}
</script>