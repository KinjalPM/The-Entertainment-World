
    // $("#submitBtn").click(function (e) {
    //     e.preventDefault();
    //     $(".error").remove();
        
    
    //     if ($("#emailId").val().match('[^@]+@[^@]+\.[a-zA-Z]{2,6}')) {
    //         console.log("emailId is Valid");
    //         validate = true;
    //     } else {
    //         $('#emailId').after('<span class="error">Please enter a valid email Id id</span>');
    //         validate = false;
    //     }
    //     if ($("#password").val().match('^[a-zA-Z]{3,16}$')) {
    //         console.log("last name is valid");
    //         validate = true;
    //     } else {
    //         $('#password').after('<span class="error">Please enter a valid password</span>');
    //         validate = false;
    //     }
    //     if ($("#confirmPassword").val().match(password)) {
    //         console.log("Confirm Password is valid");
    //         validate = true;
    //     } else {
    //         $('#confirmPassword').after('<span class="error">Please enter a valid confirm password</span>');
    //         validate = false;
    //     }
       
    //     if(validate === true){
    //        results();
    //     }
        
    // });
    // $("#resetBtn").click(function() {
    //     //$(".error").remove();
    //     producePrompt("" , "commentUserNamePrompt", "beige");
    //     producePrompt("" , "commentEmailPrompt", "beige");
    //     producePrompt("" , "commentPassPrompt", "beige");
    //     producePrompt("" , "commentCPassPrompt", "beige");
    //     return true;
    // });
    


function firstValid(){
    var fname = document.getElementById("UserName").value;

    if(fname.length==0)
    {
        producePrompt("Please enter a User Name ","commentUserNamePrompt","red");
        return false;
    }
    if(!fname.match(/^[a-zA-Z]{3,16}$/))
    {
        producePrompt("Please enter a valid User name","commentUserNamePrompt","red");
        return false;
    }
   producePrompt(" " , "commentUserNamePrompt", "green",);
    return true;
}


function emailValid(){
    var email = document.getElementById("emailId").value;
    if(email.length==0)
    {
        producePrompt("Email is required","commentEmailPrompt","red");
        return false;
    }
    if(!email.match(/[^@]+@[^@]+\.[a-zA-Z]{2,6}/))
    // if(!emailValidator.validate(email))
    {
        producePrompt("Please enter correct Email ID","commentEmailPrompt","red");
        return false;
    }
   producePrompt("" , "commentEmailPrompt", "beige");
    return true;
}

function passValid(){
    var pass = document.getElementById("password").value;
    var strongRegex = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");
    //     The password string will start this way
    // (?=.*[a-z])	The string must contain at least 1 lowercase alphabetical character
    // (?=.*[A-Z])	The string must contain at least 1 uppercase alphabetical character
    // (?=.*[0-9])	The string must contain at least 1 numeric character
    // (?=.[!@#\$%\^&])	The string must contain at least one special character, but we are escaping reserved RegEx characters to avoid conflict
    // (?=.{8,})	The string must be eight characters or longer
    console.log("a");
    if(pass.length==0)
    {
        producePrompt("Please enter a password ","commentPassPrompt","red");
        return false;
    }
    if(!pass.match(strongRegex))
    {console.log("wrong");
        producePrompt("Please enter password with 1 Uppercase, 1 SpecialCharacter, 1 digit with min 8 characters long","commentPassPrompt","red");
        return false;
    }
   producePrompt("" , "commentPassPrompt", "beige");
    return true;
}

function confirmPassValid(){
    var cpass = document.getElementById("confirmPassword").value;
    var pass = document.getElementById("password").value;

    if(cpass.length==0)
    {
        producePrompt("Please enter confirm password","commentCPassPrompt","red");
        return false;
    }
    if(!cpass.match(pass))
    {
        producePrompt("Please enter same password","commentCPassPrompt","red");
        return false;
    }
    producePrompt("" , "commentCPassPrompt", "beige");
    return true;
}


function producePrompt(message, promptLocation, color){
    document.getElementById(message).innerHTML = message;
    document.getElementById(message).style.color = color;
}
function reset(){
    producePrompt("n " , "commentUserNamePrompt", "beige");
    producePrompt(" dv" , "commentEmailPrompt", "beige");
    producePrompt(" vd" , "commentPassPrompt", "beige");
    producePrompt(" dv" , "commentCPassPrompt", "beige");
    console.log("reset is being called")
    // return false;
}
var validate = false;
function results(){
    producePrompt("Successfully signed Up!","success","green");

//   var fm = document.getElementById("UserName").value;
//   var email = document.getElementById('emailId').value;
//   var password = document.getElementById("password").value;
//   var confirmPass =  document.getElementById('confirmPassword').value;
 
  
} 

