<%-- 
    Document   : user_data
    Created on : Jun 25, 2020, 2:21:39 PM
    Author     : Hanas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Data Users Page</title>
  <!-- BOOTSTRAP STYLES-->
  <link href="assets/css/bootstrap.css" rel="stylesheet" />
  <!-- FONTAWESOME STYLES-->
  <link href="assets/css/font-awesome.css" rel="stylesheet" />
  <!-- MORRIS CHART STYLES-->

  <!-- CUSTOM STYLES-->
  <link href="assets/css/custom.css" rel="stylesheet" />
  <!-- GOOGLE FONTS-->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
  <!-- TABLE STYLES-->
  <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
  
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
  <div id="wrapper"  style="margin-top: -20px;">
    <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.html">Binary admin</a>
      </div>
      <div style="color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;"> 
          <button type="" class="btn btn-danger square-btn-adjust" onclick="signOut()">Logout</button>
      </div>
    </nav>
    <!-- Start Navbar  -->
    <nav class="navbar-default navbar-side" role="navigation">
      <div class="sidebar-collapse">
        <ul class="nav" id="main-menu">
          <li class="text-center">
            <img src="assets/img/find_user.png" class="user-image img-responsive" />
          </li>

          <li>
            <a href="index.jsp"><i class="fa fa-dashboard fa-3x"></i> Dashboard</a>
          </li>
          <li>
              <a href="recipe_data.jsp"><i class="fa fa-table fa-3x"></i> Recipes Data</a>
          </li>
          <li>
              <a href="feedback.jsp"><i class="fa fa-qrcode fa-3x"></i> Feedback</a>
          </li>
          <li>
              <a class="active-menu" href="#"><i class="fa fa-table fa-3x"></i> Subscriber</a>
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
            <h2>Subscriber Database</h2>
            <h5>Welcome Hanas , Love to see you back. </h5>

          </div>
        </div>
        <!-- End Header  -->
        <hr />
        
        <!-- Start Table -->
        <div class="row">
          <div class="col-md-12">
            <!-- Advanced Tables -->
            <div class="panel panel-default">
              <div class="panel-heading">
                Subscriber Table
              </div>
              <div class="panel-body">
                <div class="table-responsive">
                  <table class="table table-striped table-bordered table-hover" id="tb_subscriber">
                    <thead>
                      <tr>
                        <th>No</th>
                        <th>email</th>
                      </tr>
                    </thead>
                    <tbody>                
                        
                        
                    </tbody>
                  </table>
                </div>

              </div>
            </div>
            <!--End Tables -->

          </div>
        </div>        
        
      </div>

    </div>
    <!-- /. PAGE INNER  -->
    
    
  </div>
  <!-- /. PAGE WRAPPER  -->
  <!-- /. WRAPPER  -->
  <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
  <!-- JQUERY SCRIPTS -->
  <script src="assets/js/jquery.js"></script>
  <!-- BOOTSTRAP SCRIPTS -->
  <script src="assets/js/bootstrap.min.js"></script>
  <!-- METISMENU SCRIPTS -->
  <script src="assets/js/jquery.metisMenu.js"></script>
  <!-- DATA TABLE SCRIPTS -->
  <script src="assets/js/dataTables/jquery.dataTables.js"></script>
  <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
  
  <!--Sweet Alert-->
  <script src="assets/js/sweetalert2.all.min.js"></script>
    
  <script>
    
    function signOut(){
          Swal.fire({
                    title: 'Apakah Anda Yakin',
                    text: 'Ingin Keluar dari Halaman',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Keluar'
                }).then((result) => {
                    if(result.value) {   
                        document.location.href = "login/loginAdmin.jsp";
                    }
                });

      }
    
    var tbSubscriber = document.getElementById('tb_subscriber');
    var databaseRef = firebase.database().ref('subscriber/');
    var rowIndex = 1;

    databaseRef.once('value', function(snapshot) {
            snapshot.forEach(function(childSnapshot) {
    var childKey = childSnapshot.key;
    var childData = childSnapshot.val();

    var row = tbSubscriber.insertRow(rowIndex);
    var cellId = row.insertCell(0);
    var cellSubscriber = row.insertCell(1);
    cellId.appendChild(document.createTextNode(childKey));
    cellSubscriber.appendChild(document.createTextNode(childData.subs_email));
    rowIndex = rowIndex + 1;
    });

    var table = document.getElementById("tb_subscriber");
    var rows = table.getElementsByTagName("tr");
    for (i = 0; i < rows.length; i++) {
            var currentRow = table.rows[i];
            var createClickHandler = function(row) {
                    return function() {
                            var cell0 = row.getElementsByTagName("td")[0];
                            var cell1 = row.getElementsByTagName("td")[1];
                            var subs = cell0.innerHTML;
                            var email = cell1.innerHTML;
                            document.getElementById('subs').value = subs;
                            document.getElementById('subs_email').value = email;
                    };
            };
            currentRow.onclick = createClickHandler(currentRow);
            }
    });
  </script>


</body>

</html>