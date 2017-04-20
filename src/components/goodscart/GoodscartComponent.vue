<template>
	<div class="goodscart" >
		<span @click="changeAddress()"><img src="../../../img/go.png" alt=""></span>
		<a href="http://localhost:8080/#/goodslist"><img src="../../../img/prov.png" alt=""></a>
		<h1 class="sure">确认订单</h1>
		<div class="person" v-if="personMesg[1]==undefined">
			<h2 @click="address()">请添加地址+</h2>
			<input type="text" v-if="show" placeholder="请输入地址" ref="input">
			<button v-if="show" @click="setAdd()">确定</button>
		</div>
		<div class="person" v-if="personMesg[1]">
			<p>收货人：{{personMesg[0]}}</p>
			<p>收货地址：{{personMesg[1]}}</p>
			<p>联系电话：{{personMesg[2]}}</p>
		</div>
		<ul class="clear">
				<h2 v-if="!ssitems[0]">你的购物车是空的</h2>
			<li v-for="(item, index) in ssitems">
				<img :src="item.imgSrc" alt="">
				<div class="acbox clear">
					<h3>{{despt[index]}}</h3>
					<strong>单价：￥{{item.price}}</strong>
					<div class="mesg clear">
						<em @click="modify(--item.num,item.goodsId)">-</em>
						<input type="text" v-model:value="item.num">
						<em @click="modify(++item.num,item.goodsId)">+</em>
					</div>
				</div>
				<span @click="remove(item.goodsId)"><img src="../../../img/delete.png" alt=""></span>
			
			</li>
			<span class="footer">
				<span>共{{sum}}件商品</span>
				<strong>总金额￥{{sumPrice}}元</strong>
			</span>
		</ul>
		<button @click="buy()">{{des}}</button>
		<!-- <button>返回商品</button> -->
	</div>
</template>
<!-- v-for="(item, index) in personMesg" -->
<script type="text/javascript">
	import http from '../../utils/HttpClient'
	import axios from '../../js/axios.min'
	import $ from '../../js/jquery-3.1.1'
	import VueRouter from '../../router/index'
	import './GoodscartComponent.css'

	export default {
		name: 'home',
		data: function(){
			return {
				despt:[],
				show:false,
				des:'结算',
				sum:0,
				sumPrice:0,
				ssitems:[],
				personMesg:[],
				name: 'Tom',
				psw: 123456
			}
		},
		methods:{
			modify:function(num,goodsId){
				//修改总数量
				var init=0
				for(var i=0 ;i<this.ssitems.length;i++){
					if(this.ssitems[i].goodsId==goodsId){
						this.ssitems[i].num=num;
					}
					init+=parseInt(this.ssitems[i].num);
				}
				this.sum=parseInt(init);
				// 修改总金额
				var start=0;
				for(var i=0 ;i<this.ssitems.length;i++){
					// 上面已经修改数量，此处不必在修改
					start+=parseInt(this.ssitems[i].num)*parseInt(this.ssitems[i].price);
				}
				this.sumPrice =start;
				$.post('http://localhost/123/chengyi/lativ/php/goodscart.php',{'type':'modify','num':num,"goodsId":goodsId,'username':window.localStorage.getItem("username")},function(res){
					console.log(res);
				})

			},
			remove:function(goodsId){
				//刷新数据，点击的时候可以从页面马上移除
				var arr=[];
				for(var i=0 ;i<this.ssitems.length;i++){
					if(this.ssitems[i].goodsId!=goodsId){
						arr.push(this.ssitems[i])
					}
				}
				// 修改总数量
				for(var i=0 ;i<this.ssitems.length;i++){
					if(this.ssitems[i].goodsId==goodsId){
						this.sum-=(this.ssitems[i].num);
					}
				}
				// 修改总金额
				for(var i=0 ;i<this.ssitems.length;i++){
					if(this.ssitems[i].goodsId==goodsId){
						this.sumPrice-=parseInt(this.ssitems[i].num)*parseInt(this.ssitems[i].price);
					}
				}
				this.ssitems=arr;
				$.post('http://localhost/123/chengyi/lativ/php/goodscart.php',{'type':'remove',"goodsId":goodsId,'username':window.localStorage.getItem("username")},function(res){
					console.log(res);
				})
			},
			buy:function(){
				var self=this;
				if(this.sum==0){
					alert('请先添加商品');
					return false;
				}
				this.des="正在结算...";
				self.ssitems=[];//清空页面
				self.sum=0;
				self.sumPrice=0;
				$.post('http://localhost/123/chengyi/lativ/php/goodscart.php',{'type':'buy','username':window.localStorage.getItem("username")},function(res){
					console.log(res);
					self.des="结算";
				})
			},
			address:function(){
				this.show=!this.show;
				// this.show==true?this.$refs.input.focus():'';
				// this.$refs.input.focus();
				// console.log(this.$refs.input.focus())
			},
			setAdd:function(){
				var mesg=this.$refs.input.value.replace(/(^\s*)|(\s*$)/g,"");
				//增加地址
				if(!mesg){
					alert("地址不能空");
					return false;
				}
				$.post('http://localhost/123/chengyi/lativ/php/goodscart.php',{'type':'setAdd','address':mesg,'username':window.localStorage.getItem("username")},function(res){
					console.log(res);
					window.location.reload();
				})

			},
			changeAddress:function(){
				// console.log(22222222222)
				// var changeName=prompt("请输入你的名字")
			}
		},
		computed:{
			// items:{
			// 	get:function(){
					
			// 		$.post('php/goods.php',{'type':'find'},function(res){
			// 			console.log(JSON.parse(res));
			// 			console.log(res);
			// 			return res;
			// 		})
			// 		return res;

			// 	},
			// 	set:function(newVal){

			// 	}
			// }
		},
		created:function(){
			//页面刷新从数据库加载购物车信息
			var self=this;
			var arrGoodsId=[];//存的是goodid
			$.post('http://localhost/123/chengyi/lativ/php/goodscart.php',{'type':'find','username':window.localStorage.getItem("username")},function(res){
				console.log(res);
				console.log( typeof res);
				//res为空
				if(!res[4]){
					return false;//查询到购物车没有数据停止
				}
				res=JSON.parse(res);
				// console.log(JSON.parse(res[0].description));
				// 求总数量
				for(var i=0 ;i<res.length;i++){
					self.sum+=parseInt(res[i].num);
				}
				// 求总金额
				for(var i=0 ;i<res.length;i++){
					self.sumPrice+=parseInt(res[i].num)*parseInt(res[i].price);
					// console.log(res[i].goodsId);
					arrGoodsId.push(res[i].goodsId);
				}
				self.ssitems=res;

				$.post('http://localhost/123/chengyi/lativ/php/getDescription.php',{"arr":arrGoodsId}, function(data, textStatus, xhr) {
					/*optional stuff to do after success */
					console.log(data);
					var list=JSON.parse(data);
					console.log(list);
					// console.log(list[0]);
					self.despt=list;

				});
			})

			$.post('http://localhost/123/chengyi/lativ/php/goodscart.php',{'type':'person','username':window.localStorage.getItem("username")},function(res){
				// console.log(res);
				res=JSON.parse(res);
				self.personMesg=res;
				console.log(res)
			})
		}
	}
</script>

