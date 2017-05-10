<?php 
	// if(isset($_REQUEST['username'])){
	// 		$_SESSION['username']= $_REQUEST['username'];//获取当前发送过来的值
	// 		$str= $_SESSION['username'];//只能获取第一次发送过来的值
	// }
	header("Access-Control-Allow-Origin: *");
	// session_start();
	// session_destroy(); //销毁session
	// $_SESSION['username']='hallo';

	// //检查session，判断用户是否登录
	// $bool=false;
	// if(isset($_SESSION['username'])){
		// $username= $_SESSION['username'];
	// 	$bool=true;
	// }
	// else{
	// 	$str= false;   //"还没有seesion的值";
	// 	echo 'false';
	// 	return false;
	// }
	// $arr1 = array( );
	// array_push($arr1,$str);
	// print_r(json_encode($arr1));

	// 下面两行代码是由于采用了localstorage储存用户登录状态（跨域，session无法共享）
	$bool=true;
	$username=$_POST['username'];
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
		$con = new mysqli('127.0.0.1','root','root','pro'); 
		// $con = new mysqli('127.0.0.1','root','','pro'); 
		mysqli_query($con,"set names 'utf8'");
		$sql = "select * from user where userName='".$username."'";
		mysqli_query($con,"set names 'utf8'");
		$res = $con->query($sql);
		// print_r( json_encode($res->num_rows) );
		// print_r( json_encode( $res->fetch_assoc() ) );//得到用户信息字段
		$result=$res->fetch_assoc();
		// print_r( $result['goodsMsg'] );//得到货物信息字段

		if($_POST['type']=='order'){

			print_r( $result['done'] );
			//关闭数据库
			$con->close();
			return false;

		}
		if($_POST['type']=='person'){
			$arr = array();
			array_push($arr,$result['userName']);
			array_push($arr,$result['address']);
			array_push($arr,$result['phone']);
			print_r(json_encode($arr));
			return false;
		}
		if($_POST['type']=='find'){
			//此时，客户端请求购物车信息加载，只需要返回数据则可
			print_r( $result['goodsMsg'] );
			//关闭数据库
			$con->close();
			return false;
		}
		// 购物车增加收获地址
		if($_POST['type']=='setAdd'){
			// $str1=$_POST['rename'];
			$str2=$_POST['readd'];
			$str3=$_POST['rephone'];
			$sql2="update user set address='".$str2."' where userName='".$username."'";
			$sql3="update user set phone='".$str3."' where userName='".$username."'";
			if($con->query($sql2)){
			    echo "修改地址成功";
			    //关闭数据库
			    // $con->close();
			    // return false;
			}
			if($con->query($sql3)){
			    echo "修改电话成功";
			    //关闭数据库
			    $con->close();
			    return false;
			}
			
		}
		if($result['goodsMsg']){//用户购物车有信息，是一个数组
			// 1、判断goodId是否存在，存在，修改数量
			$arrGoods=json_decode($result['goodsMsg']);
			$arrDoneGoods=json_decode($result['done']);//用户买过的商品
			// gettype( $result['goodsMsg'] );
			// return false;
			if($_POST['type']=='buy'){
				// 先把用户购物车的信息存进已完成的订单字段
				if(!$arrDoneGoods){
					//用户没有买过东西
					$str2=json_encode($arrGoods);//直接把信息购物车信息存进去
				}
				else{
					//循环比较两个数组对象
					$len1=count($arrGoods);
					$len2=count($arrDoneGoods);
					$mark=true;
					for($j=0;$j<$len1;$j++){
						for($k=0;$k<$len2;$k++){
							if($arrGoods[$j]->goodsId==$arrDoneGoods[$k]->goodsId){
								$mark=false;
								$num=$arrDoneGoods[$k]->num;
								$arrDoneGoods[$k]->num=$num+$arrGoods[$j]->num;//已买过的货物修改数量
							}
						}
						if($mark){
							//购物车有没有买过的货物
							array_push($arrDoneGoods,$arrGoods[$j]);
						}
					}
					$str2=json_encode($arrDoneGoods);//修改完成
				}
				// 存进已完成字段
				$sql="update user set done='".$str2."' where userName='".$username."'";
				if($con->query($sql)){
				    echo "准备发货";
				}
				//此处是用户结算，清空购物车
				unset($arrGoods);
				//修改后存进数据库
				$str1='';
				$sql="update user set goodsMsg='".$str1."' where userName='".$username."'";
				if($con->query($sql)){
				    echo "true";
				    return false;
				}
				return false;

			}
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
						if(count($arrGoods)==0){
							$str1='';
						}
						else{
							$str1=json_encode($arrGoods);
						}
						$sql="update user set goodsMsg='".$str1."' where userName='".$username."'";
						if($con->query($sql)){
						    echo "删除成功";
						    return false;
						}
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