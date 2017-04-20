<?php
  header("Access-Control-Allow-Origin: http://localhost:8080");

  $username = $_GET['username'];
  $password = $_GET['password'];

  $conn = new mysqli("127.0.0.1","root","","pro") or die("连接失败!");
  $conn->query("set names utf8");
   $sql = "insert into user(userName,passWord) values('".$username."','".$password."')";
   $result = $conn->query($sql);
  echo $result;
 ?>
