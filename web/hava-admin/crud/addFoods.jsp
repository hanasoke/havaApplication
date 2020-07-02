<%-- 
    Document   : addFoods
    Created on : Jun 30, 2020, 7:03:38 PM
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
  <link href="../assets/css/bootstrap.css" rel="stylesheet" />
  <!-- FONTAWESOME STYLES-->
  <link href="../assets/css/font-awesome.css" rel="stylesheet" />
  <!-- MORRIS CHART STYLES-->
  <link href="../assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
  <!-- CUSTOM STYLES-->
  <link href="../assets/css/custom.css" rel="stylesheet" />
  <!-- GOOGLE FONTS-->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
  <!-- The core Firebase JS SDK is always required and must be listed first -->
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-database.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-analytics.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-auth.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.13.1/firebase-storage.js"></script>

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

  <body id="admin" style="margin-top: -20px;">
  <div id="wrapper">
    <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="../index.jsp">Admin</a>
      </div>
      <div style="color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;">
          <button type="button" class="btn btn-danger square-btn-adjust" onclick="signOut()">Logout</button>
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
            <a class="active-menu" href="../index.jsp"><i class="fa fa-dashboard fa-3x"></i> Dashboard</a>
          </li>
          <li>
            <a href="../user_data.jsp"><i class="fa fa-table fa-3x"></i> User Data</a>
          </li>
          <li>
              <a href="../feedback.jsp"><i class="fa fa-qrcode fa-3x"></i> Feedback</a>
          </li>
          <li>
              <a href="../subscriber.jsp"><i class="fa fa-table fa-3x"></i> Subscriber</a>
          </li>
        </ul>
      </div>
    </nav>
    <!-- End Navbar  -->

    <div id="page-wrapper">
      <div id="page-inner">
        
        <!-- Form Elements -->
        <div class="panel panel-default">
            <div class="panel-heading">
                Add Foods
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-5">
                        <h3>Foods Menu Adding</h3>
                        <form role="form">
                            <div class="form-group">
                                <label for="menu">Menu</label>
                                <input type="text" class="form-control" placeholder="Enter Menu" id="menu"/>
                            </div>
                            <div class="form-group">
                                <label for="category">Category</label>
                                <select id="category" class="form-control">
                                    <option value="">Select Category</option>
                                    <option value="food">Food</option>
                                    <option value="drink">Drink</option>
                                    <option value="tucker">Tucker</option>
                                </select>                                
                            </div>
                            <div class="form-group">
                                <label for="description">Description</label>
                                <textarea class="form-control" id="description" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="img">Image</label>
                                <input type="file" class="form-control" placeholder="Enter Menu" id="img" accept="image/png, image/jpg, image/jpeg"/>
                            </div>
                            <div class="form-group">
                                <button type="button" onclick="addFoods();" class="btn btn-primary btn-lg btn-block">Add Food</button>
                            </div>
                        </form>
                     </div>
                </div>
             </div>
        </div>
        <!-- End Form Elements -->        
      </div>
      <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
  </div>
  <!-- /. WRAPPER  -->
  <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
  <!-- JQUERY SCRIPTS -->
  <script src="../assets/js/jquery.js"></script>
  <!-- BOOTSTRAP SCRIPTS -->
  <script src="../assets/js/bootstrap.min.js"></script>
  <!-- METISMENU SCRIPTS -->
  <script src="../assets/js/jquery.metisMenu.js"></script>
  <!-- MORRIS CHART SCRIPTS -->
  <script src="../assets/js/morris/raphael-2.1.0.min.js"></script>
  <script src="../assets/js/morris/morris.js"></script>
  
  <!--Sweet Alert-->
  <script src="../assets/js/sweetalert2.all.min.js"></script>
  
  <script>
    var databaseRef = firebase.database().ref('foods/');
    function addFoods(){
        
        const file = document.querySelector('input[type="file"]').files[0];
        const storage = firebase.storage();
        const pathReference = storage.ref('images/');
        
        const metadata = {contentType: 'image/jpeg'};
        const uploadTask = pathReference.child(file.name).put(file, metadata);
        uploadTask
                .then(snapshot => snapshot.ref.getDownloadURL())
                .then((url) =>{console.log(url)
                            document.querySelector('input[type="file"]').src = url;
                        }).catch (console.error);
        
        var menu = document.getElementById('menu').value;
        var category = document.getElementById('category').value;
        var description = document.getElementById('description').value;
        var img = file.name;
        var fid = firebase.database().ref().child('foods').push().key;
        
        if(menu != "" && category != "" && description != "") {
            var updates = {};
            var data = {
                menu: menu,
                category: category,
                description: description,
                img: img
            }
        
            updates['/foods/' +fid] = data;
            firebase.database().ref().update(updates);
            Swal.fire({
                title: 'You have added Food',
                icon: 'success',
                confirmButtonColor: ' #2ecc71 '
            }).then((result) => {
                if(result.value) {
                    document.location.href = "../index.jsp"
                }
            });
        }
        else if(menu == "" && category != "" && description != "") {
            Swal.fire({
                    title: 'Anda belum mengisi Menu Makanan',
                    text: 'Menu Makanan wajib diisi',
                    icon: 'info',
                    confirmButtonColor: '#3085d6'
                });
        }
        else if(menu != "" && category == "" && description != "") {
            Swal.fire({
                    title: 'Anda Belum memili kategori makanan',
                    text: 'Kategori Makanan wajib diisi',
                    icon: 'info',
                    confirmButtonColor: '#3085d6'
                });
        }
        else if(menu != "" && category != "" && description == "") {
            Swal.fire({
                    title: 'Anda Belum mengisi Deskripsi Makanan',
                    text: 'Deskripsi Makanan wajib diisi',
                    icon: 'error',
                    confirmButtonColor: '#3085d6'
                });
        }
    }
  </script>


</body>

</html>
