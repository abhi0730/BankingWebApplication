function mainFunction()
{
$('.input').keyup(function () {
    if (!this.value.match(/[0-9]/)) {
        this.value = this.value.replace(/[^0-9]/g, '');
    }
});
}
$(document).ready(function(){

	mainFunction();			
			});