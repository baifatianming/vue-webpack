<template>
  <div class="big">
    <div class="goodsTop"><i class="back"></i>MEN/T恤&POLO衫/短袖印花T恤</div>
    <select v-model="range">
      <option>全部颜色展开</option>
      <option>全部款式展开</option>
    </select>
    <div class="goodsContent">
      <ul class="clear">
        <li v-for="(key,index) in source" :index=key.goodsId>
          <router-link :to="'/detail/'+key.goodsId">
          <img :src=key.goodsImg>
          <div><span v-for="key1 in size[index]" class="rangeShow">{{key1}}</span></div>
          <p>{{key.goodsName}}</p>
          <p>{{key.goodsPrice}}</p>
          </router-link>
        </li>
      </ul>
    </div>

  </div>
</template>

<script type='text/javascript'>
  import '../css/public.css';
  import '../css/goodslist.css';
  import $ from 'jquery';
  export default {
    name:'goodslist',
    data:function(){
      return {
        source:'',
        size:[],
        range:'全部款式展开'
      }
    },
    created:function(){
      var self = this;
      $.ajax({
        url:'http://localhost/lativ/php/goodslist.php',
        type:'GET',
        success:function(res){
          var resObj = JSON.parse(res);
          for(var i=0;i<resObj.length;i++){
            var sizeArr = resObj[i].size.split(',');
            self.size.push(sizeArr);
          }
          self.source = resObj;
        }
      });
      $(document).scroll(function(){
        if($(document).scrollTop()>0){
          $('.goToTop').attr('style','display:block');
        }else{
          $('.goToTop').attr('style','display:none');
        }
      })
    },
    updated:function(){
      if(this.range=='全部颜色展开'){
        $('.rangeShow').attr('style','display:none');
      }else{
        $('.rangeShow').attr('style','display:inline-block');
      }
    }
  }
</script>
