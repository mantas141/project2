<?php 
include_once('../cfg/database_connect.inc');

$page = $_REQUEST['page'];
if($page == 'save'){
    $ID = $_REQUEST['id'];
    $value = $_REQUEST['value'];
    $sql = "INSERT INTO `items_prices`(`Item_ID`, `price`) VALUES ('$ID','$value')";
    $query = sql_query($sql);
    if($query != FALSE){
        $string = array();
        $row = sql_fetch_array(sql_query("SELECT * FROM items WHERE ID = $ID"));
        $size = $row['Size'];
        $total_sum = 0;
        $counter = 0;
        $price_sql = sql_query("SELECT * FROM items_prices WHERE Item_ID = $ID");
        while($row1 = sql_fetch_array($price_sql)){
            $last_date = $row1['date'];
            $price = $row1['price'];
            $total_sum += $price;
            $counter ++;
        }
        if($counter != 0){
            $average = $total_sum / $counter;
            $average = number_format($average);
        }
        $price_slot = $price / $size;
        $string['average'] = $average;
        $string['last_price'] = $price;
        $string['date'] = $last_date;
        $string['price_slot'] = $price_slot;
        sql_query("UPDATE items SET Price_slot = '$price_slot', Average_value = '$average' WHERE ID = '$ID'");
        echo json_encode($string);
    }
    
    
}else if($page == 'traders'){
    $ID = $_REQUEST['id'];
    $value = $_REQUEST['value'];
    $sql = "UPDATE items SET traders_price = '$value' WHERE ID = $ID";
    $query = sql_query($sql);
    if($query != FALSE){
        $string = array();
        $string['traders_price'] = $value;
        echo json_encode($string);
    }
}


?>
