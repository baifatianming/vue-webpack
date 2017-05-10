<?php

header("Access-Control-Allow-Origin: http://localhost:8080");
class Collection{
  public $indexID;
  public $userName;
  public $CollectionImg;
  public $CollectionPrice;
  public $CollectionName;
}


$conn = new mysqli('127.0.0.1','root','root','pro') or die('连接失败!');
$conn->query("set names utf8");

// $indexID = $_GET['indexID'];
$sql = "select * from collection where username ='".$_GET['username']."'";

$result = $conn->query($sql);
if($result->num_rows > 0){
  $arr = array();
  while($row = $result->fetch_assoc()){
    $collection = new Collection();
    $collection->indexID=$row["indexID"];
    $collection->CollectionImg=$row["collectionImg"];
    $collection->CollectionPrice=$row["collectionPrice"];
    $collection->CollectionName=$row["collectionName"];
    array_push($arr,$collection);
  }
  echo json_encode($arr);
}
else {
  echo "没有数据";
}

$conn->close();


?>
