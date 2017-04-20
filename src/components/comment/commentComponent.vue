<template>
  <div class="commentComponent">
    <private-header></private-header>
    <div class="big">
    <div id="main-content">
      <div class="product-comment">
        <router-link :to="{ name: 'comment', params: { id: item.indexID }}" v-for="item in data" style="text-decoration: none;">
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
  import url from '../../../baseUrl.js';

  import '../../components/css/public.css'
  import header from '../../components/public/head.vue';
  import introduce from '../../components/public/bottom.vue';
  import footer from '../../components/public/footer.vue'

  export default {
    name: 'comment',
    data: function(){
      return {
        data:[]
      }
    },
    created:function(){
      var self = this;
      $.ajax({
        url:url.baseUrl+'/php/comment.php',
        type:'GET',
        success:function(msg){
          self.data = JSON.parse(msg);
        }
      })
    },
    components:{
    'private-header':header,
    'private-introduce':introduce,
    'private-footer':footer
  }
  }
</script>
