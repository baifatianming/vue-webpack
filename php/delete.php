<?php
header("Access-Control-Allow-Origin: http://localhost:8080");

$conn = new mysqli("127.0.0.1","root","root","pro") or die("连接失败!");

$conn->query("set names utf8");

$del="delete from collection where indexID='".$_POST['id']."'";
$result = $conn->query($del);
echo "删除成功!";
$conn->close();
?>
