<%-- 
    Document   : addUser
    Created on : Jun 30, 2020, 8:38:58 PM
    Author     : Hanas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Data Users Page</title>
  <!-- BOOTSTRAP STYLES-->
  <link href="../assets/css/bootstrap.css" rel="stylesheet" />
  <!-- FONTAWESOME STYLES-->
  <link href="../assets/css/font-awesome.css" rel="stylesheet" />
  <!-- MORRIS CHART STYLES-->

  <!-- CUSTOM STYLES-->
  <link href="../assets/css/custom.css" rel="stylesheet" />
  <!-- GOOGLE FONTS-->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
  <!-- TABLE STYLES-->
  <link href="../assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
  
  <!-- The core Firebase JS SDK is always required and must be listed first -->
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-database.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-analytics.js"></script>

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

<body>
  <div id="wrapper">
    <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.html">Hava Admin</a>
      </div>
      <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> Last access : 30 May 2014 &nbsp; <a href="#" class="btn btn-danger square-btn-adjust">Logout</a>
      </div>
    </nav>
    <!-- Start Navbar  -->
    <nav class="navbar-default navbar-side" role="navigation">
      <div class="sidebar-collapse">
        <ul class="nav" id="main-menu">
          <li class="text-center">
            <img src="../assets/img/find_user.png" class="user-image img-responsive" />
          </li>

          <li>
            <a href="index.html"><i class="fa fa-dashboard fa-3x"></i> Dashboard</a>
          </li>
          <li>
            <a class="active-menu" href="user_data.jsp"><i class="fa fa-table fa-3x"></i> User Data</a>
          </li>
          <li>
              <a href="feedback.jsp"><i class="fa fa-qrcode fa-3x"></i> Testimonial</a>
          </li>
        </ul>
      </div>
    </nav>
    <!-- End Navbar -->

    <!-- Start Header  -->
    <div id="page-wrapper">
      <div id="page-inner">
        <div class="row">
          <div class="col-md-12">
            <h2>User Database</h2>
            <h5>Welcome Hanas , Love to see you back. </h5>

          </div>
        </div>
        <!-- End Header  -->
        <hr />
        <!-- Form Elements -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Form Admin
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <h3>Admin Hava Recipe </h3>
                                    <form role="form">
                                    	
                                        <div class="form-group">
                                            <label>Username</label>
                                            <input class="form-control" placeholder="enter username" id="username"/>
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input class="form-control" placeholder="enter password" id="password" />
                                        </div>
                                        <div class="form-group">
                                        <input type="button" value="Save" onclick="save_user();"
                                        class="btn btn-warning"></input>
                                        
                                           
                                        </div>
                                         </form>
                                </div>
                            </div>
                        </div>
                    </div>
                     <!-- End Form Elements -->
                     
                       <script src="../assets/js/jquery.js"></script>
                        <!-- BOOTSTRAP SCRIPTS -->
                        <script src="../assets/js/bootstrap.min.js"></script>
                        <!-- METISMENU SCRIPTS -->
                        <script src="../assets/js/jquery.metisMenu.js"></script>
                        <!-- DATA TABLE SCRIPTS -->
                        <script src="../assets/js/dataTables/jquery.dataTables.js"></script>
                        <script src="../assets/js/dataTables/dataTables.bootstrap.js"></script>
                        <script>
                     
                     
                     var databaseRef = firebase.database().ref('users/');
                     function save_user(){
                     
                     var username = document.getElementById('username').value;
                     var password = document.getElementById('password').value;
                     var upk = firebase.database().ref().child('users').push().key;
                     
                     var data = {
                     username: username,
                     password: password
                     }
                     
                     var updates = {};
                     updates['/users/' + upk] = data;
                     firebase.database().ref().update(updates);
                     alert('admin created successfully!');
                     reload_page();
                     }
                     function reload_page(){
                     window.location.reload();
                     }
                     </script>
</body>
</html>
