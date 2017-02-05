$('#connect').click = function() {
    $('.disconnected').css('display', 'none');
    $('.connected').css('display', 'block');
    $('#password').focus();
};
