<?php
	header("Access-Control-Allow-Origin: *");
	$con = new mysqli('127.0.0.1','root','','pro'); 
	// $con = new mysqli('127.0.0.1','root','','pro'); 
	mysqli_query($con,"set names 'utf8'");
	$sql = "select * from goodsmsg";
	$res = $con->query($sql);
	$arr = array();
	$data=$_POST['arr'];
	// return false;
	while ($row = $res->fetch_assoc()) {
		foreach ($data as $value) {
			# code...
			if($row['goodsId']==$value){
				array_push($arr,$row['goodsName']);
			}
			
		}
	}
	print_r( json_encode($arr) );

	//关闭数据库
	$con->close();
?>