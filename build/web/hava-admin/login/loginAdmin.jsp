<%-- 
    Document   : login
    Created on : Jun 25, 2020, 10:54:09 AM
    Author     : Hanas
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    
   <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Login</title>
  
    <!-- Custom fonts for this template-->
    <link href="../assets/css/all.min.css" rel="stylesheet" type="text/css">
    <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="../assets/css/sb-admin-2.min.css" rel="stylesheet">
    
    <!-- The core Firebase JS SDK is always required and must be listed first -->
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-database.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-analytics.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-auth.js"></script>

    <script>
      // Your web app's Firebase configuration
      var firebaseConfig = {
        apiKey: "AIzaSyAEJ-yMYB6RY8wqisHbrmculO2K8NiTSCQ",
        authDomain: "hava-recipe.firebaseapp.com",
        databaseURL: "https://hava-recipe.firebaseio.com",
        projectId: "hava-recipe",
        storageBucket: "hava-recipe.appspot.com",
        messagingSenderId: "190122979219",
        appId: "1:190122979219:web:2bf4915d4501ba5afe0266",
        measurementId: "G-M4CBVWWPC2"
      };
      // Initialize Firebase
      firebase.initializeApp(firebaseConfig);
      firebase.analytics();
    </script>
   
    
 </head>


  <body class="bg-gradient-primary">

    <div class="container-fluid">

      <!-- Outer Row -->
      <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

          <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
              <!-- Nested Row within Card Body -->
              <div class="row">
                <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                <div class="col-lg-6">
                  <div class="p-5">
                    <div class="text-center">
                      <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                    </div>
                      <form class="user" id="user_div">
                      <div class="form-group">
                          <input type="email" class="form-control form-control-user" id="email" placeholder="Enter Email">
                      </div>
                      <div class="form-group">
                        <input type="password" class="form-control form-control-user" id="password"
                          placeholder="Password">
                      </div>
                          <button type="button" onclick="login()" class="btn btn-primary btn-user btn-block">Login</button>
      
                    </form>
                    <hr>
                    <div class="text-center">
                      <a class="small" href="registerAdmin.jsp">Create an Account!</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>

    </div>
     
    
    <!-- Bootstrap core JavaScript-->
    <script src="../assets/js/jquery.js"></script>
    <script src="../assets/js/bootstrap.bundle.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../assets/js/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../assets/js/sb-admin-2.min.js"></script>
    
    <script>
        
        const auth = firebase.auth();
        
        function login() {
            var email = document.getElementById("email");
            var password = document.getElementById("password");
            
            const promise = auth.signInWithEmailAndPassword(email.value, password.value);
            promise.catch (e => alert(e.message));
            
        }
        
        auth.onAuthStateChanged(function(user) {
          
         if (user) {
            
            var email = user.email;
            alert("Active User " + email);
            window.location.href = "../index.jsp";
    
        } else {
            
        }
          
      });
    </script>
    
  </body>

</html>