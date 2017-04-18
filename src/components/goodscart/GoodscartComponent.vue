<template>
	<div class="goodscart" >
		<h1>购物车</h1>
		<ul>
			<li v-for="(item, index) in ssitems">
				<img src="" alt="">
				<div class="box clear">
					<h3>1212</h3>
					<strong>{{item.price}}</strong>
					<div class="mesg clear">
						<em @click="modify(--item.num,item.goodsId)">-</em>
						<input type="number" v-model:value="item.num">
						<em @click="modify(++item.num,item.goodsId)">+</em>
					</div>
				</div>
				<span @click="remove(item.goodsId)">delete</span>
			</li>
		</ul>
	</div>
</template>

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
				ssitems:[],
				name: 'Tom',
				psw: 123456
			}
		},
		methods:{
			// login: function(){

			// 	var username=this.name;
			// 	var psw=this.psw;

			// 	$.ajax({
			// 		url: 'php/login.php',
			// 		type: 'post',
			// 		dataType: 'json',
			// 		data: {'username': username,'psw':psw},
			// 	})
			// 	.done(function(success) {
			// 		console.log(success);
			// 	})
			// 	.fail(function(error) {
			// 		console.log(error);
			// 		document.write(error.responseText);
			// 	})
			// 	.always(function() {
			// 		console.log("complete");
			// 	});
				
			// },
			modify:function(num,goodsId){
				$.post('php/goodscart.php',{'type':'modify','num':num,"goodsId":goodsId},function(res){
					console.log(res);
				})
				console.log(this.name)

			},
			remove:function(goodsId){
				var arr=[];
				for(var i=0 ;i<this.ssitems.length;i++){
					if(this.ssitems[i].goodsId!=goodsId){
						arr.push(this.ssitems[i])
					}
				}
				this.ssitems=arr;//刷新数据，点击的时候可以从页面移除
				$.post('php/goodscart.php',{'type':'remove',"goodsId":goodsId},function(res){
					console.log(res);
				})
			}
		},
		computed:{
			// items:{
			// 	get:function(){
					
			// 		$.post('php/goodscart.php',{'type':'find'},function(res){
			// 			console.log(JSON.parse(res));
			// 			console.log(res);
			// 			// self.items=JSON.parse(res);
			// 			// return JSON.parse(res);
			// 			// return [{price:111,num:22},{price:3,num:24}];
			// 		})
			// 		return [{price:111,num:22},{price:3,num:24}];
			// 		// this.items=[{price:111,num:22},{price:3,num:24}];

			// 	},
			// 	set:function(newVal){

			// 	}
			// }
		},
		created:function(){
			var self=this;
			$.post('php/goodscart.php',{'type':'find'},function(res){
				console.log(JSON.parse(res));
				console.log(res);
				self.ssitems=JSON.parse(res);
			})
		}
	}
</script>

