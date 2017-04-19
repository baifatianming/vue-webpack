<template>
  <div id='footer'>
    <div class="goToTop" style="display:none" @click="goToTop"><i></i></div>
    <ul class='clear'>
      <li @click="hide"><router-link to='/'><i class='index'></i>首页</router-link></li>
      <li @click="hide"><router-link to='/comment'><i class='comment'></i>评价</router-link></li>
      <li @click="hide"><router-link to='/collection'><i class='favourite'></i>收藏(0)</router-link></li>
      <li @click="hide"><router-link to='/account'><i class='account'></i>我的订单</router-link></li>
      <li @click="hide"><router-link to='/cart'><i class='cart'></i>结算(0)</router-link></li>
    </ul>
  </div>
</template>

<script>
  import '../css/footer.css';
  import $ from 'jquery';
  export default{
    name:'footer',
    methods:{
      hide:function(){
        $('.listAll').attr('style','display:none');
        $('.big').attr('style','display:block');
      },
      goToTop:function(){
        $(document).scrollTop(0);
      }
    }
  }
</script>
