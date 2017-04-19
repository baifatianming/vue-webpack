<?php
header("Access-Control-Allow-Origin: http://localhost:8080");
class Comments{
    public $indexID;
    public $goodsName;
    public $goodsId;
    public $type;
    public $goodsImg;
    public $size;
    public $goodsPrice;
}

$conn = new mysqli("127.0.0.1","root","","lativ") or die("连接失败!");

    $conn->query("set names utf8"); //设置编码为utf8

    $sql = "select * from goodlist";
    $result = $conn->query($sql);//执行数据库命令返回数据
    // $result = mysql_query($sql,$conn);


    if($result->num_rows > 0){//$result->num_rows == 返回的数据
      $arr = array();
        while($row = $result->fetch_assoc()){//循环整个数据每次拿出一条
          $comment = new Comments();
          $comment->indexID = $row["indexId"];
          $comment->goodsId = $row["goodsId"];
          $comment->goodsName=$row["goodsName"];
          $comment->type=$row["type"];
          $comment->size=$row['goodsSize'];
          $comment->goodsImg=$row['goodsImg'];
          $comment->goodsPrice=$row["goodsPrice"];
          // $comment->order=$row["order"];
          array_push($arr, $comment);
        }

        // 返回json字符串
        echo json_encode($arr);
        // echo json_encode($result);
      }
      else {
        echo "没有数据";
      }

      $conn->close();

      ?>
