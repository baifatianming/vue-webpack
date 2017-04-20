<template>
  <div class="big">
    <div class="orderHeader clear"><i></i>我的订单</div>
    <div class="orderMsg"><router-link to="/person"><i></i><span>个人信息</span><i></i></router-link></div>
    <div class="orderButton clear">
      <div class="active">
      <p>{{init}}</p>
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
        <li><span>状态:已支付</span><span></span></li>
      </ul>
      <span class="orderListBtn">在线交谈</span>
      <span class="orderListBtn">退货</span>
      <span class="orderListBtn">评价</span>
    </div>
    <i></i>
  </div>
</template>

<script type="text/javascript">
  import '../css/public.css';
  import '../css/order.css'
  import $ from '../../js/jquery-3.1.1'
  export default {
    name:'order',
    data:function(){
      return {
        init:0

      }
    },
    created:function(){
        var self=this;
        $.post('http://localhost/123/chengyi/lativ/php/goodscart.php',{'type':'order','username':window. localStorage.getItem("username")},function(res){
          var res=JSON.parse(res);
          for(var i=0;i<res.length;i++){
              self.init+=parseInt(res[i].num);//已完成订单全部数量
          }
          console.log(typeof res)
        })
    }

    }
</script>
