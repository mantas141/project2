<?php 

/* Item picture
 * Item name
 * Type
 * 
 * Grid size
 * Quest item 1/0
 * In raid amount (quests)
 * Buyable  (quests)
 * Average value
 * 
 * */


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
            <th>Average value</th>
            <th>Type</th>
            <th>Grid size</th>
            <th>Quest item</th>
            <th>Find in raid amount</th>
            <th>Buyable amount</th>
        </tr>
    </thead>
    <tbody>
    <?php 
    $base_url = './images/';
    $sql = sql_query("SELECT * FROM items");
    while($row = sql_fetch_array($sql)){
        if($row['Quest_item'] == 0){
            $row['Quest_raid_amount'] = '-';
            $row['Quest_buy_amount'] ='-';
        }
        if($row['Average_value'] == 0){
            $row['Average_value'] = '-';
        }
        
        $url = $base_url."".$row['Image_url'].".png";
        
        echo "<tr id ='".$row['Item_name']."'>";
      //  echo "<td><img src='".$url."' alt='".$row['Item_name']."'</td>";
        echo "<td>&nbsp;</td>";
        
        echo "<td>".$row['Item_name']."</td>";
        echo "<td>".$row['Average_value']."</td>";
        echo "<td>".$row['Type']."</td>";
        echo "<td>".$row['Grid_size']."</td>";
        echo "<td>".$row['Quest_item']."</td>";
        echo "<td>".$row['Quest_raid_amount']."</td>";
        echo "<td>".$row['Quest_buy_amount']."</td>";
        
        echo "</tr>";
        
    }
    ?>
    
    </tbody>
</table>