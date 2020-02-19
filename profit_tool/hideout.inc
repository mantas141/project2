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
        </tr>
    </thead>
    <tbody>
    <?php 

    foreach($array as $data){

        echo "<tr id ='".$data['name']."'>";
      //  echo "<td><img src='".$url."' alt='".$row['Item_name']."'</td>";
        echo "<td>".$data['ID']."</td>";
        
        echo "<td>".$data['name']."</td>";
       
        
    }
    ?>
    
    </tbody>
</table>