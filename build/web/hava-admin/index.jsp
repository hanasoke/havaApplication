<%-- 
    Document   : index
    Created on : Jun 25, 2020, 5:30:37 PM
    Author     : Hanas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Hava Recipe</title>
  <!-- BOOTSTRAP STYLES-->
  <link href="assets/css/bootstrap.css" rel="stylesheet" />
  <!-- FONTAWESOME STYLES-->
  <link href="assets/css/font-awesome.css" rel="stylesheet" />
  <!-- MORRIS CHART STYLES-->
  <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
  <!-- CUSTOM STYLES-->
  <link href="assets/css/custom.css" rel="stylesheet" />
  <!-- GOOGLE FONTS-->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
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
        <a class="navbar-brand" href="index.html">Admin</a>
      </div>
      <div style="color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;">
        <a href="#" class="btn btn-danger square-btn-adjust">Logout</a>
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
            <a class="active-menu" href="index.jsp"><i class="fa fa-dashboard fa-3x"></i> Dashboard</a>
          </li>
          <li>
            <a href="user_data.jsp"><i class="fa fa-table fa-3x"></i> User Data</a>
          </li>
          <li>
            <a href="feedback.jsp"><i class="fa fa-qrcode fa-3x"></i> Testimonial</a>
          </li>
        </ul>
      </div>
    </nav>
    <!-- End Navbar  -->

    <div id="page-wrapper">
      <div id="page-inner">
        <div class="row">
          <div class="col-md-12">
            <h2>Admin Dashboard</h2>
            <h5>Welcome Hanas , Love to see you back. </h5>
          </div>
        </div>

        <!-- Start Card  -->
        <hr />
        <div class="row">
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="panel panel-back noti-box">
              <span class="icon-box bg-color-red set-icon">
                <i class="fa fa-envelope-o"></i>
              </span>
              <div class="text-box">
                <p class="main-text">124 Recipe</p>
                <p class="text-muted">Messages</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="panel panel-back noti-box">
              <span class="icon-box bg-color-green set-icon">
                <i class="fa fa-bars"></i>
              </span>
              <div class="text-box">
                <p class="main-text">121 User</p>
                <p class="text-muted">Remaining</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="panel panel-back noti-box">
              <span class="icon-box bg-color-blue set-icon">
                <i class="fa fa-bell-o"></i>
              </span>
              <div class="text-box">
                <p class="main-text">24 Fedback</p>
                <p class="text-muted">Notifications</p>
              </div>
            </div>
          </div>
        </div>
        <!-- End Card  -->
        <hr />

        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="panel panel-default">
              <div class="panel-heading text-center">
                Drinks and Foods Recipe
              </div>
              <div class="panel-body">
                <div class="table-responsive">
                  <table class="table table-striped table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>No</th>
                        <th>Menu</th>
                        <th>Category</th>
                        <th>Preparation Time</th>
                        <th>Cooking Time</th>
                        <th>Bahan</th>
                        <th>Cara Membuat</th>
                        <th>Gambar</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>Sushi Goreng</td>
                        <td>Makanan</td>
                        <td>5 Minutes</td>
                        <td>40 Minutes</td>
                        <td>Join Table</td>
                        <td>Join Table</td>
                        <td>sushi.png</td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>Sushi Goreng</td>
                        <td>Makanan</td>
                        <td>5 Minutes</td>
                        <td>40 Minutes</td>
                        <td>Join Table</td>
                        <td>Join Table</td>
                        <td>sushi.png</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
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
  <!-- MORRIS CHART SCRIPTS -->
  <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
  <script src="assets/js/morris/morris.js"></script>


</body>

</html>
