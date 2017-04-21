<template>
  <div class="register">
    <div class="registerHeader"><i class="logo"></i>注册</div>
    <div class="registerBox clear">
      <span>用户名:</span>
      <input type="text" placeholder="请输入你的用户名" class="registerUsn">
    </div>
    <div class="registerBox clear">
      <span>密码:</span>
      <input type="password" placeholder="请输入你的密码" class="registerPsw">
    </div>
    <div class="registerBox clear">
      <span>确认密码:</span>
      <input type="password" placeholder="请再次输入你的密码">
    </div>
    <div class="registerBTN">
      <input type="button" value="确认提交" class="registerBtn" @click="submit">
    </div>
  </div>
</template>

<script>
  import '../css/public.css'
  import '../css/register.css'
  import $ from 'jquery'
  import url from '../../../baseUrl.js'
  export default {
    name:'register',
    data:function(){
      return {
      }
    },
    methods:{
      submit:function(){
        var obj = {
          username : $('.registerUsn').val(),
          password : $('.registerPsw').val()
        }
        if( obj.username!='' && obj.password!=''){
          $.ajax({
           url: url.baseUrl+'php/register.php',
           type: 'GET',
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
    }
  }
}
</script>
