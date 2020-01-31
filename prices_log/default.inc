
<script>
function navigate(link, id){
	console.log(link);
	console.log(id);
	$.ajax({
    	type: "POST",
    	beforeSend: function(){
        },
    	url: './prices_log/link.php', //will return 1 or 0
    	data: {"page": id},
    	success: function(data){
			$('#replace').html(data);
    	},
    	error: function(data){
	    	
    	}});
}

</script>

<div class="row grey darken-2" id='navigation_2'>
    <div class='col s4 center' style='border-right: 1px solid #4a4949;cursor:pointer;' onclick='navigate(this, 1)'><span style='color:#e8d108;font-size:20px;'>Log</span></div>
    <div class='col s4 center' style='border-right: 1px solid #4a4949;cursor:pointer;' onclick='navigate(this, 2)'><span style='color:#e8d108;font-size:20px;'>Compare</span></div>
    <div class='col s4 center' style='cursor:pointer;' onclick='navigate(this, 3)'><span style='color:#e8d108;font-size:20px;'>Item List</span></div> 
</div>
<div class="container" id="replace">

</div>

<?php 


?>