        function checkUsername() {
            var username = document.getElementById("username").value;
            if (username.length < 4) {
                document.getElementById("username_error").style.visibility = "visible";
                return false;
            } else {
                document.getElementById("username_error").style.visibility = "hidden";
                return true;
            }


        }

        function checkPassword() {
            var password = document.getElementById("password").value;
            if (password.length < 4) {
                document.getElementById("password_error").style.visibility = "visible";
                return false;
            } else {
                document.getElementById("password_error").style.visibility = "hidden";
                return true;
            }
        }