<template>
  <div id='introduce'>
    <div class='introduceTop'>
      <ul class='clear'>
        <li><router-link to='/login'><i></i>登入</router-link></li>
        <li><router-link to='/'><i class='touch'></i>触屏版</router-link></li>
        <li><router-link to='/computer'><i class='computer'></i>电脑版</router-link></li>
      </ul>
    </div>
    <p>©2017 lativ . 沪ICP备15013396号 . 上海工商</p>
  </div>
</template>

<script>
import '../css/introduce.css'
  export default{
    name:"introduce"
  }
</script>
