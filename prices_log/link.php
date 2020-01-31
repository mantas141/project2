<?php 
$id = $_REQUEST['page'];
switch($id){
    case '1':
        include('./prices_log/log.inc');
        break;
    case '2':
        include('./prices_log/Compare.inc');
        break;
    case '3':
        include('./prices_log/Items.inc');
        break;
}


?>