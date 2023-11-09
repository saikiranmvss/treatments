$(document).on('input','.number-field',function(e){
    $(this).val($(this).val().replace(/[^0-9]/gi, ''));
})