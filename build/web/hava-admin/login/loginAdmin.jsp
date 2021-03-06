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
                      <h1 class="h4 text-gray-900 mb-4">Welcome Back Admin</h1>
                    </div>
                      <form class="user">
                      <div class="form-group">
                          <input type="text" class="form-control form-control-user" id="username" placeholder="Enter Username">
                      </div>
                      <div class="form-group">
                        <input type="password" class="form-control form-control-user" id="password"
                          placeholder="Password">
                      </div>
                          <button type="button" onclick="login()" class="btn btn-primary btn-user btn-block">Login</button>
      
                    </form>
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
    
    <!--Sweet Alert-->
    <script src="../assets/js/sweetalert2.all.min.js"></script>
    
    <script>
        
        
    
        function login() {
            const username = document.getElementById("username").value;
            const password = document.getElementById('password').value;
            if(username == 'Admin' && password == 'Admin') { 
                const Toast = Swal.mixin({
                  toast: true,
                  position: 'top-end',
                  showConfirmButton: false,
                  timer: 2000,
                  timerProgressBar: true,
                  onOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer);
                    toast.addEventListener('mouseleave', Swal.resumeTimer);
                    document.location.href = "../index.jsp";
                  }
                });

                Toast.fire({
                  icon: 'success',
                  title: 'Anda Adalah Admin',
                });
                
            }
            
            else if(username == "" && password != "") {
                Swal.fire({
                    title: 'Username kosong',
                    text: 'Username wajib diisi',
                    icon: 'failed',
                    confirmButtonColor: '#2ecc71'
                });
            }
            
            else if(username != "" && password == "") {
                Swal.fire({
                    title: 'Password kosong',
                    text: 'Password wajib diisi',
                    icon: 'failed',
                    confirmButtonColor: '#2ecc71'
                });
            }
            
            else if(username != "Admin" && password == "Admin") {
                Swal.fire({
                    title: 'Anda Bukan Admin',
                    icon: 'warning',
                    confirmButtonColor: '#2ecc71'
                });
            }
            
        
            else {
                Swal.fire({
                    title: 'Data kosong',
                    text: 'Data wajib diisi',
                    icon: 'failed',
                    confirmButtonColor: '#2ecc71'
                });
            }
        }
        
        
    </script>
    
  </body>

</html>