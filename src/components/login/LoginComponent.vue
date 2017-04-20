<template>
	<div class="loginContent">
		<form class="form-horizontal">
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
		    <div class="col-sm-10">
		      <input class="form-control" v-model="name">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
		    <div class="col-sm-10">
		      <input type="password" class="form-control" v-model="psw">
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		    	<input type="button" value="登录" class="btn btn-default" @click="login">
		    </div>
		  </div>
		</form>
	</div>
</template>

<script type="text/javascript">
	import http from '../../utils/HttpClient'
	import axios from '../../js/axios.min'
	import $ from '../../js/jquery-3.1.1'
	import VueRouter from '../../router/index'
	import 'bootstrap/dist/css/bootstrap.min.css'

	export default {
		name: 'home',
		data: function(){
			return {
				name: 'Tom',
				psw: 123456
			}
		},
		methods:{
			login: function(){
				
				// http.post('login.php', {username: this.name, password: this.pwd})
				// .then(response => {
				// 	console.log(response.data)
				// 	// if(response.state){
				// 	// 	VueRouter.push({name: 'home'})
				// 	// }
				// })

				var username=this.name;
				var psw=this.psw;
				var params = new URLSearchParams();
				params.append('username', username);
				params.append('psw', psw);
				// console.log(params)
				axios.post('http://localhost/123/chengyi/lativ/php/login.php',params).then(function(response){
					console.log(response);
					// document.write(response.data);
					if(response.data=='登录成功'){
						alert('登录成功');
						// 设置localstorage储存用户登录状态
						window.localStorage.setItem("username",username);
						console.log(window.localStorage.getItem("username"));
						window.location.href='http://localhost:8080/#/goodslist';
					}
					else{
						alert('检查用户名密码是否正确');
					}
				})
				.catch(function(error){//客户端出错才会进入这
					document.write(error);
					console.log(1212);
				})

				

				// $.ajax({
				// 	url: 'http://localhost/123/chengyi/lativ/php/login.php',
				// 	type: 'post',
				// 	dataType: 'json',
				// 	data: {'username': username,'psw':psw},
				// })
				// .done(function(success) {
				// 	console.log(success);
				// })
				// .fail(function(error) {
				// 	console.log(error);
				// 	document.write(error.responseText);
				// })
				// .always(function() {
				// 	console.log("complete");
				// });
				
			}
		}
	}
</script>

<style>
	.loginContent{
		width: 400px;
		margin: auto;
	}
</style>
