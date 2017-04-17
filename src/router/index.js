import Vue from 'vue'
import VueRouter from 'vue-router'
import http from '../utils/HttpClient'

import indexComponent from '../components/index/indexComponent.vue'
import LoginComponent from '../components/login/LoginComponent.vue'
<<<<<<< HEAD
// import '../../src/components/header.js';
=======
import commentComponent from '../components/comment/commentComponent.vue'
>>>>>>> 706ce368493e069eec1ca008f4d99306fda9d1f3

Vue.use(VueRouter)
console.log(indexComponent)
const router = new VueRouter({
	routes: [{
		path: '/',
		name: 'index',
		component: indexComponent
	},{
		path: '/login',
		name: 'login',
		component: LoginComponent
	},{
    path:'/comment',
    name:'comment',
    component:commentComponent
  }]
})

//对将要进入的路由进行权判断
// router.beforeEach((to, from, next) =>{
// 	if(to.path != '/login'){
// 		// http.get('./src/data/sesson.json')
// 		// .then(response => {
// 		// 	if(!response.login){
// 		// 		router.replace('login');
// 		// 	}
// 		// 	next();
// 		// })
// 		// http.get('http://localhost:888/getsession')
// 		// .then(response => {
// 		// 	if(!response.name){
// 		// 		router.replace('login');
// 		// 	}
// 		// 	next()
// 		// });
// 	} else {
// 		// next();
// 	}
// })

export default router
