<template>
  <div id="app">
    <!-- <private-header></private-header> -->
    <router-view></router-view>
    <!-- <private-introduce></private-introduce> -->
    <!-- <private-footer></private-footer> -->
  </div>
</template>

<script>
import './components/css/public.css'
import equipType from './components/index/equipMonitor.js';
var equipM = new equipType();
// var str = JSON.stringify(equipM.monitor());
// console.log(equipM.monitor().mobile)

if(equipM.monitor().mobile)
{
  var header = require('./components/public/head.vue');
  var introduce = require('./components/public/bottom.vue');
  var footer = require('./components/public/footer.vue')
}
else if(!equipM.monitor().mobile)
{
  console.log(1);
  var header = require('./components/public/head_pc.vue')
  // var introduce = require('./components/public/bottom_pc.vue');
  // var footer = require('./components/public/footer_pc.vue')
}
export default {
  name: 'app',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  },
  components:{
    'private-header':header,
    // 'private-introduce':introduce,
    // 'private-footer':footer
  },
}
</script>

