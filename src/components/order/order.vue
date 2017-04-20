<template>
  <div class="big">
    <div class="orderHeader clear"><i></i>我的订单</div>
    <div class="orderMsg"><router-link to="/person"><i></i><span>个人信息</span><i></i></router-link></div>
    <div class="orderButton clear">
      <div class="active">
      <p>0</p>
      <p>全部订单</p>
      </div>
      <div>
        <p>0</p>
        <p>代发货</p>
      </div>
      <div>
        <p>0</p>
        <p>已发货</p>
      </div>
      <div>
        <p>0</p>
        <p>已完成</p>
      </div>
    </div>

    <div class="orderList">
      <ul>
        <li><span>日期:</span><span></span></li>
        <li><span>订单号:</span><span></span></li>
        <li><span>状态:</span><span></span></li>
      </ul>
      <span class="orderListBtn" @click="orderShow">在线交谈</span>
      <span class="orderListBtn" @click="orderShow">退货</span>
      <span class="orderListBtn" @click="orderShow">评价</span>
    </div>
    <i></i>
  </div>
</template>

<script type="text/javascript">
  import '../css/public.css';
  import '../css/order.css'
  export default {
    name:'order',
    data:function(){
      return {}
    },
    methods:{
      orderShow:function(){
        alert('还未开通!')
      }
    }
    }
</script>
