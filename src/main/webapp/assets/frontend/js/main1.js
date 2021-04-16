function validation() {
		var u_error = document.getElementById("error_username");
		var p_error = document.getElementById("error_password");
		var f_error = document.getElementById("error_fullName");
		var e_error = document.getElementById("error_email");
		var rp_error = document.getElementById("error_re_pass");
		var username = document.forms["register-form"]["username"].value;
		var password = document.forms["register-form"]["password"].value;
		var fullName = document.forms["register-form"]["fullName"].value;
		var re_pass = document.forms["register-form"]["re_pass"].value;
		var email = document.forms["register-form"]["email"].value;
		
		if (username === null || username === "") {
			u_error.innerHTML = "Tài khoản không được để trống";
			return false;
		} else {
			u_error.innerHTML = "";
		}
		
		if (email === null || email === "") {
			e_error.innerHTML = "Email không được để trống";
			return false;
		} else {
			e_error.innerHTML = "";
		}
		
		atpos = emailID.indexOf("@");
        dotpos = emailID.lastIndexOf(".");
         
		if (atpos < 1 || ( dotpos - atpos < 2 )) {
            e_error.innerHTML = "Email không hợp lệ (Ex: abc@gmail.com)";
			return false;
            return false;
         }
		
		if (fullName === null || fullName === "") {
			f_error.innerHTML = "Họ tên không được để trống";
			return false;
		} else {
			f_error.innerHTML = "";
		}
		
		if (password === null || password === "") {
			p_error.innerHTML = "Mật khẩu không được để trống";
			return false;
		} else {
			p_error.innerHTML = "";
		}
		
		if (re_pass !== password) {
			rp_error.innerHTML = "Mật khẩu nhập lại không đúng";
			return false;
		} else {
			rp_error.innerHTML = "";
		}
	}