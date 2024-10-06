<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<style>

	.error{
		color:red;
		font-size:18px;
		}
	.input{
		width:85%;
		}
	.img{
	    width: 85%; 
        height:80%;
	    display: block;
        margin-left: auto;
        margin-right: auto;
        border-radius:50px;
		}
	.form-outline{
				position:relative;
				}
	
	.span1{
		    position:absolute;
	        right:40px;
	        top:25px;
	      }
	.span1:hover{
				color:#FF0000;
				}
	.text-body :hover{
					color:#F05872
					}
   .span{
        position:absolute;
        color:green;
        right:100px;
        top:15px;
  		 }
  #line {
	    float: left;
	    width: 500px;
	    height: 5px;
	    
		}

</style>
	<script type="text/javascript">
	function func1(){
		 var s1 = document.getElementById("email").value;
		 var s2 = document.getElementById("password").value;
		 if(s1 =="" || s2 ==""){
			document.getElementById("para2").innerHTML="*Enter the all the fields";
			return false
			
		 }else
			 document.getElementById("para2").innerHTML= " ";
		 }
	</script>
</head>
<body>
   
  <div class="container h-custom">
   <div class="card text-black bg-light" style="border-radius: 25px;">
          <div class="card-body">
  			  <div class="row align-items-center ">
      			<div class="col-md-6">
       			 <img src="./assets/login5.jpg" class="img" alt="Sample image" >
     			 </div>
      <div class="col-md-6 ">
      
         <form name="login" action="login" method="post" onsubmit="return func1()">
        
          <div class="d-flex  align-items-center  ">
            <h1 ><i>Sign in with:</i></h1>
            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="fab fa-facebook-f"></i>
            </button>

            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="fab fa-twitter"></i>
            </button>

            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="fab fa-linkedin-in"></i>
            </button>
          </div>

          <div class="divider d-flex align-items-center my-4">
	            <label class="text-center fw-bold mx-3">Or</label>
	           <span id="line"><hr></span>
          </div>
          

          <!-- Email input -->
          <div class="form-outline mb-3">
	          <input type="email" id="email" name="username" class="form-control form-control-lg input"
	            placeholder="Enter a valid email address" onblur="fun1()"/>
	            <i class="fa-solid fa-envelope fa-beat-fade fa-xl"></i>
	            <label class="form-label" ><i>Email address</i></label>
	            <p id="uname" class="span"></p>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-3">
            <input type="password" name="password" id="password" class="form-control form-control-lg input"
              placeholder="Enter password" onblur="fun2()"/>
             <span onclick="clickon()"><i class="fa-sharp fa-solid fa-eye-slash fa-xl span1"></i> </span>
           <i class="fa-sharp fa-solid fa-key fa-beat-fade fa-lg"></i>
            <label class="form-label"><i>Password</i></label>
             <p id="pwd" class="span"></p>
          </div>

          <div class="d-flex  align-items-center">
            <a href="#!" class="text-body "><i>Forgot password?</i></a>
          </div>

          <div class=" text-lg-start mt-3 pt-1">
            <button type="submit" class="btn btn-primary btn-lg" >Login</button>
            <p style="color:red"><%= request.getAttribute("valid")%></p>
            <p id="para2" class="error"> </p>
            <p class="small fw-bold ">Don't have an account? <a href="http://localhost:8081/SecondWeb/index.jsp"
                class="link-danger">#Register!!!..</a></p>
                
          </div>

        </form>
      </div>
    </div>
  </div>
  <div
    class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
    <div class="text-white mb-3 mb-md-0">
      Copyright © 2020. All rights reserved.
    </div>
   
    <div>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-facebook-f"></i>
      </a>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-twitter"></i>
      </a>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-google"></i>
      </a>
      <a href="#!" class="text-white">
        <i class="fab fa-linkedin-in"></i>
      </a>
    </div>
  </div>
 </div>
 </div>
   <script type="text/javascript">
   //show password
    function clickon() {
				    var x = document.getElementById("password");
				    if (x.type =="password") {
				      x.type = "text";
				    }else 
				      x.type = "password";
				  }
   
    		//username
	 function fun1(){
	     var s1 = document.getElementById("email").value;
		 var regexpemail = /^([a-zA-z0-9\.-]+)@([a-zA-Z]+).([a-z]{2,4})$/;
	     if (regexpemail.test(s1)==false)
			{
			document.getElementById("uname").innerHTML = '<i class="fa-solid fa-xmark fa-beat fa-xl" style="color: #e30202;"></i>';
			
			}
		else
			document.getElementById("uname").innerHTML = '<i class="fa-solid fa-check fa-bounce fa-xl" style="color: #508500;"></i>';
			}
	  	   
    		//password
	  	  
	  	   function fun2(){
	  		   var s2=document.getElementById("password").value;
	  		 var regexppassword = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
				if (regexppassword.test(s2) == false ){
					document.getElementById("pwd").innerHTML='<i class="fa-solid fa-xmark fa-beat fa-xl" style="color: #e30202;"></i>';
					return false
				}else
					
					document.getElementById("pwd").innerHTML='<i class="fa-solid fa-check fa-bounce fa-xl" style="color: #508500;"></i>';
					
	  	   }
  	   
 </script>

</body>
</html> 