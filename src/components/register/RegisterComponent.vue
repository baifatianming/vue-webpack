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
		    <label  class="col-sm-2 control-label">手机号码</label>
		    <div class="col-sm-10">
		      <input type="number" class="form-control" v-model="phone">
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
		    	<input type="button" value="注册" class="btn btn-default" @click="submit">
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
				phone: '223232',
				psw: 123456
			}
		},
		methods:{
			submit: function(){
				var name=this.name;
				var psw=this.psw;
				var phone=this.phone;
				// var params = new URLSearchParams();
				// params.append('username', username);
				// params.append('psw', psw);
				// console.log(params)
				// axios.get('php/login.php',params).then(function(response){
				// 	console.log(response);
				// 	document.write(response.data);
				// 	if(response.data=='登录成功'){
				// 		alert('登录成功');
				// 	}
				// 	else{
				// 		alert('检查用户名密码是否正确');
				// 	}
				// })
				// .catch(function(error){//客户端出错才会进入这
				// 	document.write(error);
				// 	console.log(1212);
				// })

				$.ajax({
					url: 'php/reg.php',
					type: 'post',
					dataType: 'json',
					data: {'username': name,'psw':psw,'phone':phone},
				})
				.done(function(success) {
					console.log(success);
				})
				.fail(function(error) {
					console.log(error);
					document.write(error.responseText);
				})
				.always(function() {
					console.log("complete");
				});
				
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
