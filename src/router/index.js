import Vue from 'vue'
import VueRouter from 'vue-router'
import http from '../utils/HttpClient'

import indexComponent from '../components/index/indexComponent.vue'
import LoginComponent from '../components/login/LoginComponent.vue'
import goodslistComponent from '../components/goodslist/goodslist.vue'
import RegisterComponent from '../components/register/RegisterComponent.vue'
import GoodscartComponent from '../components/goodscart/GoodscartComponent.vue'
import commentComponent from '../components/comment/commentComponent.vue'
import collectionComponent from '../components/collection/collectionComponent.vue'
import orderComponent from '../components/order/order.vue'
import personComponent from '../components/person/person.vue'
Vue.use(VueRouter)

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
  },{
    path:'/cart',
    name:'home',
    component:GoodscartComponent
  }
  ,{
    path:'/goodslist',
    name:'goodslist',
    component:goodslistComponent
  },{
    path:'/collection',
    name:'collection',
    component:collectionComponent
  },{
    path:'/order',
    name:'order',
    component:orderComponent
  },{
    path:'/person',
    name:'person',
    component:personComponent
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
