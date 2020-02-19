<?php 
include_once('../cfg/database_connect.inc');


$id = $_REQUEST['page'];
switch($id){
    case '1':
        include('../profit_tool/hideout.inc');
        break;
    case '2':
        include('../profit_tool/barter.inc');
        break;

}


?>