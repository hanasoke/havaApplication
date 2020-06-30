<%-- 
    Document   : feedback
    Created on : Jun 25, 2020, 2:02:31 PM
    Author     : Hanas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Feedback Page</title>
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
  <div id="wrapper" style="margin-top: -20px;">
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
            <img src="assets/img/find_user.png" class="user-image img-responsive" />
          </li>
          <li>
            <a href="index.jsp"><i class="fa fa-dashboard fa-3x"></i> Dashboard</a>
          </li>
          <li>
            <a href="user_data.jsp"><i class="fa fa-table fa-3x"></i> User Data</a>
          </li>
          <li>
            <a href="feedback.jsp" class="active-menu"><i class="fa fa-qrcode fa-3x"></i> Feedback</a>
          </li>
          <li>
            <a href="subscriber.jsp"><i class="fa fa-table fa-3x"></i> Subscriber</a>
          </li>
        </ul>
      </div>
    </nav>
    <!-- End Navbar  -->

    <div id="page-wrapper">
      <div id="page-inner">

        <div class="row">
          <div class="col-md-12">
            <div class="jumbotron">
              <h1 class="text-center">Testimonial</h1>
              <p>Berikut ini adalah kesan dan pesan dari pelanggan setia Hava Recipe.Kesan dan Pesan ini untuk membuat
                Hava-Recipe lebih baik kedepannya</p>
            </div>
          </div>
        </div>

        <!-- Start Table  -->
        <div class="row">
          <div class="col-md-12">
            <!-- Advanced Tables -->
            <div class="panel panel-default">
              <div class="panel-heading">
                User Table
              </div>
              <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover"  id="tb_feedback">
                    <thead>
                      <tr>
                        <th>No</th>
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>category</th>
                        <th>Message</th>
                      </tr>
                    </thead>
                    <tbody>

                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <!--End Table -->

          </div>
        </div>

      </div>
      <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
  </div>
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
  <script>
    
    var tbFeedback = document.getElementById('tb_feedback');
    var databaseRef = firebase.database().ref('feedback/');
    var rowIndex = 1;

    databaseRef.once('value', function(snapshot) {
            snapshot.forEach(function(childSnapshot) {
    var childKey = childSnapshot.key;
    var childData = childSnapshot.val();

    var row = tbFeedback.insertRow(rowIndex);
    var cellId = row.insertCell(0);
    var cellName = row.insertCell(1);
    var cellEmail = row.insertCell(2);
    var cellRecipe = row.insertCell(3);
    var cellMessage = row.insertCell(4);
    cellId.appendChild(document.createTextNode(childKey));
    cellName.appendChild(document.createTextNode(childData.name));
    cellEmail.appendChild(document.createTextNode(childData.email));
    cellRecipe.appendChild(document.createTextNode(childData.recipe));
    cellMessage.appendChild(document.createTextNode(childData.message));
    rowIndex = rowIndex + 1;
    });

    var table = document.getElementById("tb_feedback");
    var rows = table.getElementsByTagName("tr");
    for (i = 0; i < rows.length; i++) {
            var currentRow = table.rows[i];
            var createClickHandler = function(row) {
                    return function() {
                            var cell1 = row.getElementsByTagName("td")[0];
                            var cell2 = row.getElementsByTagName("td")[1];
                            var cell3 = row.getElementsByTagName("td")[2];
                            var cell4 = row.getElementsByTagName("td")[3];
                            var cell5 = row.getElementsByTagName("td")[4];
                            var send = cell1.innerHTML;
                            var name = cell2.innerHTML;
                            var email = cell3.innerHTML;
                            var recipe = cell4.innerHTML;
                            var message = cell5.innerHTML;
                            document.getElementById('send').value = send;
                            document.getElementById('name').value = name;
                            document.getElementById('email').value = email;
                            document.getElementById('recipe').value = recipe;
                            document.getElementById('message').value = message;
                    };
            };
            currentRow.onclick = createClickHandler(currentRow);
            }
    });
    
  </script>


</body>

</html>