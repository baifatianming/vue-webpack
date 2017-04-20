<template>
<div>
  <div class="personalHeader clear"><i></i>个人信息</div>
  <div class="personalMsg">
    <div><span>姓&nbsp;&nbsp;名:</span><input type="text"></div>
    <div><span>邮&nbsp;&nbsp;箱:</span><input type="text"></div>
    <div><p>密&nbsp;&nbsp;码:</p><input type="password" class="personalPsd"></div>
    <div><p>密码确认:</p><input type="password" class="personalPsd"></div>
  </div>
  <div></div>
  <div class="personalBtn1"><input type="button" value="确认送出" class="personalBtn"></div>
  </div>
</template>

<script>
  import '../css/personal.css'

  export default{
    name:'person'
  }
</script>
