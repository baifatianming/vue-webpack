<template>
  <div id="app">
    <private-header></private-header>
    <router-view></router-view>
    <private-introduce></private-introduce>
    <private-footer></private-footer>
  </div>
</template>

<script>
import './components/css/public.css'
import header from './components/public/head.vue';
import introduce from './components/public/bottom.vue';
import footer from './components/public/footer.vue'
export default {
  name: 'app',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  },
  components:{
    'private-header':header,
    'private-introduce':introduce,
    'private-footer':footer
  },
}
</script>

