<?php 
$servername = 'localhost';
$username = 'username';
$password = '123456';
$database_name = 'side_stuff';


$db_mysqli = mysqli_connect($servername,$username,$password,$database_name);

function get_New_mySQLi_connection()
{
    return mysqli_connect("localhost","username","123456","side_stuff");
}

function sql_select_db($dbname)
{
    global $db_mysqli;
    mysqli_select_db($db_mysqli, $dbname);
}

function sql_query($q)
{
    global $db_mysqli;
    return mysqli_query($db_mysqli, $q);
}

function sql_fetch_array($q)
{
    return mysqli_fetch_array($q, MYSQLI_ASSOC);
}

function sql_fetch_row($q)
{
    return mysqli_fetch_row($q);
}

function sql_num_rows($q)
{
    return mysqli_num_rows($q);
}

function sql_insert_id()
{
    global $db_mysqli;
    return mysqli_insert_id($db_mysqli);
}

function sql_error()
{
    global $db_mysqli;
    return mysqli_error($db_mysqli);
}

function sql_errno()
{
    global $db_mysqli;
    return mysqli_errno($db_mysqli);
}

function sql_close()
{
    global $db_mysqli;
    return mysqli_close($db_mysqli);
}

function sql_real_escape_string($string)
{
    global $db_mysqli;
    return mysqli_real_escape_string($db_mysqli, $string);
}

function sql_set_charset($charset){
    global $db_mysqli;
    return mysqli_set_charset($db_mysqli, $charset);
}

function sql_multi_query($sql){
    global $db_mysqli;
    return mysqli_multi_query($db_mysqli, $sql);
}

function sql_store_result(){
    global $db_mysqli;
    return mysqli_store_result($db_mysqli);
}

function sql_next_result(){
    global $db_mysqli;
    return mysqli_next_result($db_mysqli);
}

function sql_more_results(){
    global $db_mysqli;
    return mysqli_more_results($db_mysqli);
}


?>