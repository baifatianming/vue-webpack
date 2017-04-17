<template>
  <div id='footer'>
        <ul class='clear'>
            <li><router-link to='/'><i class='index'></i>首页</router-link></li>
            <li><router-link to='/comment'><i class='commnet'></i>评价</router-link></li>
            <li><router-link to='/favourite'><i class='favourite'></i>收藏(0)</router-link></li>
            <li><router-link to='/account'><i class='account'></i>我的订单</router-link></li>
            <li><router-link to='/cart'><i class='cart'></i>结算(0)</router-link></li>
        </ul>
      </div>
</template>

<script>
import '../css/footer.css'
  export default{
    name:'footer',

  }
</script>
