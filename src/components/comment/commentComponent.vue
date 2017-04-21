
<template>
  <div class="commentComponent">
  <private-header></private-header>
  <div class="big">
    <div id="main-content">
      <div class="product-comment">
        <router-link :to="'/detail/'+item.indexID" v-for="item in data" style="text-decoration: none;">
          <div class="comment-template clear">
            <div class="comment-image">
              <img v-bind:src="item.img"/>
            </div>
            <div class="comment-container">
              <div class="comment-order">订单后四位：<span>{{item.order}} - {{item.address}}</span></div>
              <div class="comment-content">{{item.content}}</div>
              <div class="comment-info">
                <span comment-product-info>{{item.size}}</span>
                <span class="comment-time">{{item.time}}</span>
              </div>
            </div>
          </div>
        </router-link>
      </div>
    </div>
    </div>
    <private-introduce></private-introduce>
    <private-footer></private-footer>
  </div>
</template>

<script type="text/javascript">
  import './commentComponent.css';
  import $ from 'jquery';

  import '../../components/css/public.css'
  import header from '../../components/public/head.vue';
  import introduce from '../../components/public/bottom.vue';
  import footer from '../../components/public/footer.vue'
  import url from '../../../baseUrl.js'
  export default {
    name: 'comment',
    data: function(){
      return {
        data:[],
        culm:5
      }
    },
    created:function(){
      var self = this;
      $.ajax({
        url:url.baseUrl+'php/comment.php',
        type:'GET',
        success:function(msg){
          self.data = JSON.parse(msg);
          for(let i = 0;i<self.culm;i++){
            self.data.push(JSON.parse(msg)[i]);
          }
          self.culm+=6;
        }
      });

      $(window).scroll(function(){
        if($(window).scrollTop()==$(document).height()-$(window).height() ){
          setTimeout(function(){
            $.ajax({
            url:url.baseUrl+'php/comment.php',
            type:'GET',
            success:function(msg){
              for(let i = 0;i < self.culm ;i++){
                self.data.push(JSON.parse(msg)[i])
              }
            }
          })
          },1000)
        }
      })
    },
    components:{
    'private-header':header,
    'private-introduce':introduce,
    'private-footer':footer
  }

  };

</script>

