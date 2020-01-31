<?php 

include_once('./cfg/database_connect.inc');

?>

<html>
<head>
<!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      
</head>
<body class='grey darken-1'>
<div class='container'>
    <header>
        <nav>
            <div class='nav-wrapper grey darken-4'>
            	<span class='text-focus-in'>EfT</span>
            	<ul id="nav-mobile" class='right hide-on-med-and-down'>
            		<li><a href='?page=prices_log'>Prices log</a></li>
            		<li><a href='?page=profit_tool'>Profit tool</a></li>
            		<li><a href='?page=raid_log'>Raid log</a></li>
            		<li><a href='?page=gun_modding'>Gun modding</a></li>
            		<li><a href='?page=barter'>Barter</a></li>
            		<li><a href='?page=quest_list'>Quest list</a></li>
            	</ul>
            </div>
        </nav>
    
</header>
</div>
<div class='container'>
    
    
    
    <?php 
    if(isset($_REQUEST['page'])){
        $switch = $_REQUEST['page'];
        switch($switch){
            case 'prices_log':
                include('./prices_log/default.inc');
                break;
            case 'profit_tool':
                include('./profit_tool/default.inc');
                break;
            case 'raid_log':
                include('./raid_log/default.inc');
                break;
            case 'gun_modding':
                include('./gun_modding/default.inc');
                break;
            case 'barter':
                include('./barter/default.inc');
                break;
            case 'quest_list':
                include('./quest_list/default.inc');
                break;
        }
    }
    
    
    ?>
    

</div>
<!--JavaScript at end of body for optimized loading-->
<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>