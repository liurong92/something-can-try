$(document).ready(function() {

    $('#register').click(function(event) {
        console.log('aaaaaaa');
        event.preventDefault();
        $.ajax({
            url: '/register',
            type: 'GET'
        });
    });
});