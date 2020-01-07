$(document).ready(function() {
    $("#register-button").click(function() {
        var register_userName = $("#register-userName").val();
        var register_password = $("#register-password").val();
        var register_email = $("#register-email").val();

        if (register_userName == "") {
            event.preventDefault();
            $("#register-userName").focus();
        }else if(register_password == ""){
            event.preventDefault();
            $("#register-password").focus();
        }else if(register_email == "") {
            event.preventDefault();
            $("#register-email").focus();
        } else{
            if(confirm("确定注册！！") !=  true) {
                event.preventDefault();
            }
        }

        if(judgementPassword(register_password)) {
            event.preventDefault();
            $("#register-password").focus();
        }
    });
});

function judgementPassword(password) {
    return password.length < 6 ? true : false
}