<?php 
	// if(isset($_REQUEST['username'])){
	// 		$_SESSION['username']= $_REQUEST['username'];//获取当前发送过来的值
	// 		$str= $_SESSION['username'];//只能获取第一次发送过来的值
	// }

	session_start();
	// session_destroy(); //销毁session
	// $_SESSION['username']='hallo';

	//检查session，判断用户是否登录
	$bool=false;
	if(isset($_SESSION['username'])){
		$username= $_SESSION['username'];
		$bool=true;
	}
	else{
		$str= false;   //"还没有seesion的值";
		echo 'false';
		return false;
	}
	// $arr1 = array( );
	// array_push($arr1,$str);
	// print_r(json_encode($arr1));

	if($bool){
		// 创建一个类
		class Goods{  
		  public $goodsId;  
		  public $num;  
		  public $description;  
		  public $imgSrc;  
		  public $price;  
		  public $color;  
		  public $size;  
		 }
		//用户已经登录
		// 如果session存在，检查数据库是否已经有用户信息，
		// 有，就修改
		// 没有，就添加
		// $con = new mysqli('bdm274246623.my3w.com','bdm274246623','aA852233','bdm274246623_db'); 
		header("Access-Control-Allow-Origin: *");
		$con = new mysqli('127.0.0.1','root','','pro'); 
		// $con = new mysqli('127.0.0.1','root','','pro'); 
		mysqli_query($con,"set names 'utf8'");
		$sql = "select * from user where userName='".$username."'";
		$res = $con->query($sql);
		// print_r( json_encode($res->num_rows) );
		// print_r( json_encode( $res->fetch_assoc() ) );//得到用户信息字段
		$result=$res->fetch_assoc();
		// print_r( $result['goodsMsg'] );//得到货物信息字段

		if($_POST['type']=='find'){
			//此时，客户端请求购物车信息加载，只需要返回数据则可
			print_r( $result['goodsMsg'] );
			//关闭数据库
			$con->close();
			return false;
		}
		if($result['goodsMsg']){//用户购物车有信息，是一个数组
			// 1、判断goodId是否存在，存在，修改数量
			$arrGoods=json_decode($result['goodsMsg']);
			// gettype( $result['goodsMsg'] );
			// return false;
			$flag=true;
			for($i=0;$i<count($arrGoods);$i++){
				if($arrGoods[$i]->goodsId==$_POST['goodsId']){
					$flag=false;
					if($_POST['type']=='add'){
						// 此时存在，修改数量,只有在商品列表出改变才会进入此处
						$number=$arrGoods[$i]->num;
						$arrGoods[$i]->num=$number+$_POST['num'];
						echo "添加成功";
					}
					if($_POST['type']=='modify'){
						//此时是由于在购物车详情修改信息造成的
						$arrGoods[$i]->num=$_POST['num'];
						echo "修改成功";
					}
					if($_POST['type']=='remove'){
						//此时是在购物车详情删除商品
						// $arrGoods[$i]->num=$_POST['num'];
						array_splice($arrGoods, $i, 1);//删除数组中下标是i的元素
						echo "删除成功";
					}
					//修改后存进数据库
					$str1=json_encode($arrGoods);
					$sql="update user set goodsMsg='".$str1."' where userName='".$username."'";
					if($con->query($sql)){
					    echo "true";
					    // return false;
					}
				}
			}
			if($flag){
			// 2、不存在货物信息，添加
				if(!$_POST['goodsId']){
					echo "没有信息";
					return false;
				}
				 $Goods=new Goods(); 
				 $Goods->goodsId=$_POST['goodsId'];
				 $Goods->num=$_POST['num'];
				 $Goods->description=$_POST['description'];
				 $Goods->imgSrc=$_POST['imgSrc'];
				 $Goods->price=$_POST['price'];
				 $Goods->color=$_POST['color'];
				 $Goods->size=$_POST['size'];
				array_push($arrGoods,$Goods);
				// print_r( json_encode($arr));
				$str2=json_encode($arrGoods);
				$sql="update user set goodsMsg='".$str2."' where userName='".$username."'";//'".$str."'这个格式是固定的
				if($con->query($sql)){
				    echo "添加成功";
				}
				
			}
			// print_r( ( $arrGoods ) );
		}
		else{               //用户购物车无信息
		    // $name = $_POST['name'];
			// echo $name;
			$arr=array();
			 $Goods=new Goods(); 
			 $Goods->goodsId=$_POST['goodsId'];
			 $Goods->num=$_POST['num'];
			 $Goods->description=$_POST['description'];
			 $Goods->imgSrc=$_POST['imgSrc'];
			 $Goods->price=$_POST['price'];
			 $Goods->color=$_POST['color'];
			 $Goods->size=$_POST['size'];
			array_push($arr,$Goods);//$cfg是用户发送过来的信息
			// print_r( json_encode($arr));
			$str=json_encode($arr);
			$sql="update user set goodsMsg='".$str."' where userName='".$username."'";//'".$str."'这个格式是固定的
			if($con->query($sql)){
			    echo "添加成功";
			}else{
				echo "添加失败";
			}
		}
		// *************把该字段用客服端传过来的信息覆盖******************//方法不妥


	}

	//关闭数据库
	$con->close();
 ?>