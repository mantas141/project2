<?php 

/*
 * 
 * 
 * Input field for new price check
 *          Average price calc and input happens here
 * Reset prices button
 * 
 */
$base_url = './images/';
$sql = sql_query("SELECT * FROM items ORDER BY Price_slot desc");
$array = array();
$col_counter = 0;
while($row = sql_fetch_array($sql)){
    $ID = $row['ID'];
    $array[$ID]['ID'] = $ID;
    $array[$ID]['name'] = $row['Item_name'];
    $array[$ID]['url'] = $row['Image_url'];
    $array[$ID]['average_price'] = $row['Average_value'];
    $array[$ID]['size'] = $row['Size'];
    $array[$ID]['traders'] = $row['traders_price'];
    
    $array[$ID]['prices'] = array();
    $sql_prices = sql_query("SELECT * FROM items_prices WHERE Item_ID = $ID");
    $x = 0;
    $last_price = '-';
    $last_date = '-';
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
    $array[$ID]['last_date'] = $last_date;
    
}

?>

<div class="row">
	<div class="input-field col s3">
	<input id="000" type="text" onkeyup="Search()" onblur="ShowAll()">
	</div>
	<div class="col s9"></div>
</div>

<table class="centered highlight">
    <thead>
        <tr>
        	<th>Item</th>
            <th>Item name</th>
            <th>Last price</th>
            <th>Price/slot</th>
            <th>Size</th>
            <th>Traders price</th>
            <th>Average value</th>
            <th>Last updated</th>
            <th>Update price</th>
            <th>Update trader</th>
        </tr>
    </thead>
    <tbody>
    <?php 
    $base_url = './images/';
    $sql = sql_query("SELECT * FROM items");
    foreach($array as $data){
        $url = $base_url."".$data['url'].".png";
        if($data['last_price'] != '' && $data['last_price'] != '-'){
            $price_slot = $data['last_price'] / $data['size'];
            $symbol = '₽';
        }else{
            $price_slot = '-';
            $symbol = '';
        }
        if($data['traders'] != ''){
            $traders_price = $data['traders'];
            $symbol_tp = '₽';
        }else{
            $traders_price = '-';
            $symbol_tp = '';
        }
        
        echo "<tr id ='".$data['name']."'>";
      //  echo "<td><img src='".$url."' alt='".$row['Item_name']."'</td>";
        echo "<td>&nbsp;</td>";
        
        echo "<td>".$data['name']."</td>";
        echo "<td id='last_price_".$data['ID']."'>".$data['last_price']." ".$symbol."</td>";
        echo "<td id='price_slot_".$data['ID']."'>".$price_slot." ".$symbol."</td>";//Price/slot 
        echo "<td>".$data['size']."</td>";//Size
        echo "<td id='traders_price_".$data['ID']."'>".$traders_price." ".$symbol_tp."</td>";//Price/slot
        echo "<td id='average_price_".$data['ID']."'>".$data['average_price']." ".$symbol."</td>";//average value
        echo "<td id='last_date_".$data['ID']."'>".$data['last_date']."</td>";
        echo "<td><input style='width:90px' type='number' id='input_".$data['ID']."'></input>";//Input
        echo "<button class='btn waves-effect waves-light' type='submit' name='action' style='background-color:#262727' onclick='SubmitNewPrice(\"".$data['ID']."\")'>
    <i class='material-icons'>send</i>
  </button>";
        echo "</td>";
        echo "<td><input style='width:90px' type='number' id='input_traders_".$data['ID']."'></input>";//Input
        echo "<button class='btn waves-effect waves-light' type='submit' name='action' style='background-color:#262727' onclick='SubmitNewTradersPrice(\"".$data['ID']."\")'>
    <i class='material-icons'>send</i>
  </button>";
        echo "</td>";
        echo "</tr>";
        
    }
    ?>
    
    </tbody>
</table>