$(document).ready(function() {
    $("#update-userProfile").click(function() {
        var userProfile_password = $("#userProfile-password").val();
        if(judgementPassword(userProfile_password)) {
            event.preventDefault();
            $("#userProfile-password").focus();
        }
    });

    $("button").click(function(){
        $("#product").animate({
            height:'toggle'
        });
    });

    $("#logout").click(function() {
        if(confirm("确定退出！！") !=  true) {
            event.preventDefault();
        }
    });

});

function judgementPassword(password) {
    return password.length < 6 ? true : false
}