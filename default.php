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
</head>
<body>
<div class='container'>
    <header>
        <nav>
            <div class='nav-wrapper red darken-3'>
            	<span class='text-focus-in'>OnlinePOS</span>
            </div>
        </nav>
    
</header>
</div>
<div class='container'>
<?php 
$sql = sql_query("SELECT * FROM eft");
while($row = sql_fetch_array($sql)){
    print_r($row);echo "<BR>";echo "<BR>";
}




?>

</div>
<!--JavaScript at end of body for optimized loading-->
<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>