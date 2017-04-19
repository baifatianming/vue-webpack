<?php
// $conn = new mysqli("127.0.0.1", "root", "", "dazhong") or die("连接失败:" . $conn->connect_error);
//     $sql = "select * from books2";
// $jsonData = array();
//  $result = $conn->query($sql);
//  if($result){
//     while($obj = mysqli_fetch_object($result)){
//       $jsonData[] = $obj;
//     }
//     mysqli_free_result($result);
//  }
header("Access-Control-Allow-Origin: http://localhost:8080");
class Comments{
    public $indexID;
    public $content;
    public $name;
    public $img;
    public $address;
    public $size;
    public $time;
    public $order;

}

    //连接数据库
$conn = new mysqli("127.0.0.1","root","","lativ") or die("连接失败!");

    $conn->query("set names utf8"); //设置编码为utf8

    $sql = "select * from comment";
    $result = $conn->query($sql);//执行数据库命令返回数据
    if($result->num_rows > 0){//$result->num_rows == 返回的数据
        $arr = array();
        while($row = $result->fetch_assoc()){//循环整个数据每次拿出一条
            $comment = new Comments();
            $comment->indexID = $row["indexID"];
            $comment->name = $row["name"];
            $comment->content=$row["content"];
            $comment->img=$row["img"];
            $comment->size=$row['size'];
            $comment->address=$row['address'];
            $comment->time=$row["time"];
            $comment->order=$row["order"];
            array_push($arr, $comment);
        }

        //返回json字符串
        echo json_encode($arr);
    }
    else {
        echo "没有数据";
    }

    $conn->close();

    ?>


