
<script>
function navigate(link, id){

	$.ajax({
    	type: "POST",
    	beforeSend: function(){
        },
    	url: './prices_log/link.php', 
    	data: {"page": id},
    	success: function(data){
			$('#replace').html(data);
    	},
    	error: function(data){
	    	
    	}}); //TODO Change color of selected link and merge it with the generated content
}

function Search(){//Active search functionality for items
	var SearchVal = $('#000').val();
	$("tbody > *").hide();
	console.log($("table > *").find($("[id*='"+SearchVal+"']")).show());
	$("tbody > *").find($("[id*='"+SearchVal+"']")).show()
}

function ShowAll(){//Part of search functionality to display all of the items again onblur
	var SearchVal = $('#000').val();
	if(SearchVal == ''){
	$("tbody > *").show();
	}
}

function SubmitNewPrice(ItemId){//Function to change prices on button click
	var amount = $('#input_'+ItemId).val();
	$.ajax({
    	type: "POST",
    	beforeSend: function(){
        },
    	url: './prices_log/ajax.php', 
    	data: {"page": "save", "id": ItemId, "value": amount},
    	success: function(data){
			console.log(String.fromCharCode(8381));
        	var data = JSON.parse(data);
        	console.log(data);
        	console.log(typeof data);
			if((typeof data) == 'object'){
				document.getElementById('average_price_'+ItemId).innerText = data.average+" "+String.fromCharCode(8381);
				document.getElementById('last_price_'+ItemId).innerText = data.last_price+" "+String.fromCharCode(8381);
				document.getElementById('last_date_'+ItemId).innerText = data.date;
				document.getElementById('price_slot_'+ItemId).innerText = data.price_slot+" "+String.fromCharCode(8381);
				
			}
    	},
    	error: function(data){
	    	
    	}});
}
function SubmitNewTradersPrice(ItemId){//Function to change prices on button click
	var amount = $('#input_traders_'+ItemId).val();
	$.ajax({
    	type: "POST",
    	beforeSend: function(){
        },
    	url: './prices_log/ajax.php', 
    	data: {"page": "traders", "id": ItemId, "value": amount},
    	success: function(data){
			console.log(String.fromCharCode(8381));
        	var data = JSON.parse(data);
        	console.log(data);
        	console.log(typeof data);
			if((typeof data) == 'object'){
				document.getElementById('traders_price_'+ItemId).innerText = data.traders_price+" "+String.fromCharCode(8381);
				
				
			}
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