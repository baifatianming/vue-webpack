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

<<<<<<< HEAD
=======
<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

h1, h2 {
  font-weight: normal;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  display: inline-block;
  margin: 0 10px;
}

a {
  color: #42b983;
}
</style>
>>>>>>> 706ce368493e069eec1ca008f4d99306fda9d1f3
