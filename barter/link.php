<?php 
include_once('../cfg/database_connect.inc');


$id = $_REQUEST['page'];
switch($id){
    case '1':
        include('../barter/hideout.inc');
        break;
    case '2':
        include('../barter/barter.inc');
        break;
}


?>