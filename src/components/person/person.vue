<template>
<div>
  <div class="personalHeader clear"><router-link to="/order"><i></i></router-link>个人信息</div>
  <div class="personalMsg">
    <div><span>地&nbsp;&nbsp;址:</span><input type="text"></div>
    <div><span>电&nbsp;&nbsp;话:</span><input type="text"></div>
    <div><p>密&nbsp;&nbsp;码:</p><input type="password" class="personalPsd"></div>
    <div><p>密码确认:</p><input type="password" class="personalPsd"></div>
  </div>
  <div class="personalAdress">
    <i></i>
    <div><span>收货人:</span>s大方</div>
    <div><span>收货地址:</span></div>
  </div>
  <i></i>
  <div class="personalBtn1"><input type="button" value="确认送出" class="personalBtn"></div>
  </div>
</template>

<script>
  import '../css/personal.css'

  export default{
    name:'person'
  }
</script>
