/**
 * 
 */
function mainFunction()
{
	$('#creditLink').click(function(){
		$('#homeid').css("display","none");
		$('#debitid').css("display","none");
		$('#creditid').css("display","block");
		$('#transid').css("display","none");
	});
	
	$('#debitLink').click(function(){
		$('#homeid').css("display","none");
		$('#debitid').css("display","block");
		$('#creditid').css("display","none");
		$('#transid').css("display","none");
	});
	
	$('#transLink').click(function(){
		$('#homeid').css("display","none");
		$('#debitid').css("display","none");
		$('#creditid').css("display","none");
		$('#transid').css("display","block");
	});
	$('#homeLink').click(function(){
		$('#homeid').css("display","block");
		$('#debitid').css("display","none");
		$('#creditid').css("display","none");
		$('#transid').css("display","none");
	});
}

$(document).ready(function(){

mainFunction();			
		});