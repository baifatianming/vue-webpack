<?php 
	include "DBHelper.php";
	// 允许localhost:8080端口跨域访问
	header("Access-Control-Allow-Origin: http://localhost:8080");

	$goodId = $_GET['goodid'];

	$sql = "select * from goodsmsg where goodsId='$goodId';";

	$array = query($sql);

	if(count($array) >0){
	 	// echo json_encode($array, JSON_UNESCAPED_UNICODE);
	 	print_r( json_encode ($array));
	}else{
		echo '{"state":false,"message":"数据请求错误"}';
	}
 ?>