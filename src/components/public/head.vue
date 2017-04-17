<template>
  <div>
    <header id="main-header">
      <div class="clear">
        <a id="logo"></a>
        <div id="searchBox">
          <a class="search-icon"></a>
        </div>
      </div>
    </header>
    <nav id="main-nav">
      <ul class="clear listType">
        <li v-for="(key,index) in listAll"><span class="ui-btn" @click='goToShow' :index="index">{{key}}</span></li>
      </ul>
      <ul class="clear listAll" v-if="show">
        <li class="goA" @click="gotoGoods"><router-link to="/goodslist" >NEW!{{sex}}上新&爆款<i class="go"></i></router-link></li>
        <li @click.stop="goToshow1" v-for="(key,index) in listClassify"><i class="up"></i>{{key.name}}
          <ul class="hide">
            <li class="goA list_li" v-for="key1 in key.item" @click="gotoGoods"><router-link to="#">{{key1}}<i class="go"></i></router-link></li>
          </ul>
        </li>
      </ul>
    </nav>
  </div>
</template>

<script type="text/javascript">
  import '../css/commentComponent.css'

  export default {
    name:'header',
    data:function(){
      return {
        listAll:['女装','男装','童装','婴幼儿','运动','特惠'],
        listClassify:[
        {name:'特辑推荐',item:['SPORT 动.不断前行','COOL .轻凉衣系列','2017 .授权T恤系列','USA Pima','亲子&情侣系列']},
        {name:'T恤&POLO',item:['短袖印花T恤','短袖 . 背心','七分袖 . 长袖','长版上衣','厚棉系列','POLO衫']},
        {name:'衬衫',item:['休闲衬衫','商务衬衫','雪纺 . 轻柔系列','法兰绒衬衫']},
        {name:'针织衫',item:['针织衫 . 毛衣','美力奴系列','羊绒系列']},
        {name:'外套类',item:['休闲 . 军装外套','风衣 . 机能 . 西装外套','保暖摇粒绒系列','羽绒系列']},
        {name:'裤装&裙装',item:['牛仔裤','束脚裤','长裤','短裤 . 七分裤','裙装 . 连衣裙']},
        {name:'内衣&内裤&袜子',item:['无钢圈文胸','Bra_内置罩杯内衣','吊带衫 . 背心','保暖衣系列','COOL_轻凉系列','内裤','紧身裤','袜子']},
        {name:'起居服&配件',item:['起居服','围巾 . 帽子','腰带','鞋类','其他']}
        ],
        show:false,
        sex:'',
        index:''
      }
    },
    methods:{
      goToShow:function(e){
        if(this.index == e.target.attributes.index.value){
          console.log(1);
          this.show==true? this.show=false:this.show=true;
          this.sex=e.target.innerHTML;
          this.index=e.target.attributes.index.value;
        }else{
          this.show=true;
          this.sex=e.target.innerHTML;
          this.index=e.target.attributes.index.value;
        }

      },
      goToshow1:function(e){
        if(e.target.children[1]!=undefined){
          e.target.children[1].className=='hide'? e.target.children[1].className='':e.target.children[1].className='hide';
          e.target.firstChild.className=="down"? e.target.firstChild.className="up":e.target.firstChild.className="down";
        }
      },
      gotoGoods:function(){
        console.log(1);
        this.show=false;
      }
    }
  }
</script>
