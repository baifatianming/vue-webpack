<template>
  <div class="collectionComponent">
    <div id="col-header">
      <a class="col-prov"></a>
      <h1>我的收藏</h1>
    </div>
    <div id="col-content">
      <div class="col-list clear">
        <div class="col-goods" v-for="item in data">
          <a>
            <img v-bind:src="item.CollectionImg" />
            <p>{{item.CollectionName}}</p>
            <p>￥ {{item.CollectionPrice}}</p>
          </a>
          <img src="../../../img/delete.png" alt="" class="delete" v-on:click="remove" :id="item.indexID">
        </div>
      </div>
    </div>
  </div>
</template>

<script type="text/javascript">
import './collectionComponent.css';
import $ from 'jquery'
 export default {
  name:'collection',
  data:function(){
    return {
        data:[]
      }
  },
  created:function(){
    var username = window.localStorage.username;
    var userData = {username:username};
    var self = this;
      $.ajax({
        url:'http://localhost/lativ/php/collection.php',
        type:'GET',
        data:userData,
        success:function(msg){
          self.data = JSON.parse(msg);
        }
      });
  },
  methods:{
    remove:function(e){
      $(e.target).parent().remove();

      var id = $(e.target).attr('id');
      var data = {id:id}
      $.ajax({
        url:'http://localhost/lativ/php/delete.php',
        type:'POST',
        data:data
      })
    }
  }
 }

</script>
