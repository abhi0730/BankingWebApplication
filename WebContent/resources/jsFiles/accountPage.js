/**
 * 
 */
function mainFunction()
{
	
	$('#homeLink').click(function(){
		$('#homeid').css("display","block");
		$('#debitid').css("display","none");
		$('#creditid').css("display","none");
		$('#transferid').css("display","none");
		$('#transid').css("display","none");
	});
	
	
	
	$('#creditLink').click(function(){
		$('#homeid').css("display","none");
		$('#debitid').css("display","none");
		$('#creditid').css("display","block");
		$('#transferid').css("display","none");
		$('#transid').css("display","none");
	});
	
	$('#debitLink').click(function(){
		$('#homeid').css("display","none");
		$('#debitid').css("display","block");
		$('#creditid').css("display","none");
		$('#transferid').css("display","none");
		$('#transid').css("display","none");
	});
	
	$('#transferLink').click(function(){
		$('#homeid').css("display","none");
		$('#debitid').css("display","none");
		$('#creditid').css("display","none");
		$('#transferid').css("display","block");
		$('#transid').css("display","none");
	});
	
	
	$('#transLink').click(function(){
		$('#homeid').css("display","none");
		$('#debitid').css("display","none");
		$('#creditid').css("display","none");
		$('#transferid').css("display","none");
		$('#transid').css("display","block");
	});
	
}

$(document).ready(function(){

mainFunction();			
		});