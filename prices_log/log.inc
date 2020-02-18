<?php 
$base_url = './images/';
$sql = sql_query("SELECT * FROM items");
$array = array();
$col_counter = 0;
while($row = sql_fetch_array($sql)){
    $ID = $row['ID'];
    $array[$ID]['ID'] = $ID;
    $array[$ID]['name'] = $row['Item_name'];
    $array[$ID]['url'] = $row['Image_url'];
    $array[$ID]['prices'] = array();
    $sql_prices = sql_query("SELECT * FROM items_prices WHERE Item_ID = $ID");
    $x = 0;
    $last_price = '-';
    while($row1 = sql_fetch_array($sql_prices)){
        $price = $row1['price'];
        $date = $row1['date'];
        $array[$ID]['prices'][$x]['price'] = $price;
        $array[$ID]['prices'][$x]['date'] = $row1['date'];
        $x ++;
        if($x > $col_counter){
            $col_counter = $x;
        }
        $last_date = $date;
        $last_price = $price;
    }

    $array[$ID]['last_price'] = $last_price;
    $array[$ID]['last_price'] = $last_price;
    
}
?>

<div class="row">
	<div class="input-field col s3">
	<input id="000" type="text" onkeyup="Search()">
	</div>
	<div class="col s9"></div>
</div>

<table class="centered">
    <thead>
        <tr>
        	<th>Item</th>
            <th>Item name</th>
            <th>Last price</th>
            <th>Average value</th>
            <th>Last updated</th>
            <?php 
            for($y = 1; $y <= $col_counter; $y++){
                
                echo "<th>Value ".$y."</th>";
            }
            
            
            ?>
        </tr>
    </thead>
    <tbody>
    <?php 
    $base_url = './images/';
    $sql = sql_query("SELECT * FROM items");
    foreach($array as $data){
        $url = $base_url."".$data['url'].".png";
        
        
        echo "<tr id ='".$data['name']."'>";
      //  echo "<td><img src='".$url."' alt='".$row['Item_name']."'</td>";
        echo "<td>&nbsp;</td>";
        
        echo "<td>".$data['name']."</td>";
        echo "<td>".$data['last_price']."</td>";
        echo "<td></td>";//average value
        
        foreach($data['prices'] as $price_array){
            if(isset($price_array['price'])){
                echo "<td>".$price_array['price']."</td>";
            }else{
                echo "<td>-</td>";
                
            }
        }
        
        echo "</tr>";
        
    }
    ?>
    
    </tbody>
</table>