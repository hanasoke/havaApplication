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
        <a class="navbar-brand" href="#">Admin</a>
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
            <img src="assets/img/find_user.png" class="user-image img-responsive" />
          </li>
          <li>
            <a class="active-menu" href="#"><i class="fa fa-dashboard fa-3x"></i> Dashboard</a>
          </li>
          <li>
              <a href="recipe_data.jsp"><i class="fa fa-table fa-3x"></i> User Data</a>
          </li>
          <li>
              <a href="feedback.jsp"><i class="fa fa-qrcode fa-3x"></i> Feedback</a>
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
            <h2>Admin Dashboard</h2>
            <h5>Welcome Admin, Love to see you back. </h5>
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
        
        <!-- Form Elements -->
        <div class="panel panel-default">
            <div class="panel-heading">
                Form Admin
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-6">
                        <h3>Admin Hava Recipe <a href="crud/addFoods.jsp" class="btn btn-success">Tambah Baru</a></h3>
                        <form role="form">
                            <div class="form-group">
                                <label>ID</label>
                                <input class="form-control" placeholder="ID" id="fid" readonly/>
                            </div>
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
                                <input type="file" class="form-control" placeholder="Enter Menu" id="img" accept="image/png, image/jpg, image/jpeg" />
                            </div>
                            <div class="form-group">
                                <button type="button" onclick="updateFood();" class="btn btn-success">Update Food</button>
                                <button type="button" onclick="deleteFood();" class="btn btn-danger">Delete Food</button>
                            </div>
                        </form>
                        </div>
                    </div>
                </div>
        </div>
         End Form Elements 
        
        
        <!--Start Table-->
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="panel panel-default">
              <div class="panel-heading text-center">
                Drinks and Foods Recipe
              </div>
              <div class="panel-body">
                <div class="table-responsive">
                  <table class="table table-striped table-bordered table-hover" id="tb_foods">
                    <thead>
                      <tr>
                        <th>No</th>
                        <th>Menu</th>
                        <th>Category</th>
                        <th>Description</th>
                        <th>Gambar</th>
                      </tr>
                    </thead>
                    <tbody>
                      
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
  
  <!--Sweet Alert-->
  <script src="assets/js/sweetalert2.all.min.js"></script>
  
  <script>
      
      const auth = firebase.auth();
      
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
                        auth.signOut();
                        document.location.href = "login/loginAdmin.jsp";
                    }
                });

      }
      
      auth.onAuthStateChanged(function(user) {
          
         if (user) {            
            var email = user.email;
            
            
//            is signed in    
        } else {
            
//            no user is signed in            
        }          
      });
      
        var tbSubscriber = document.getElementById('tb_foods');
        var databaseRef = firebase.database().ref('foods/');
        var rowIndex = 1;

        databaseRef.once('value', function(snapshot) {
                snapshot.forEach(function(childSnapshot) {
        var childKey = childSnapshot.key;
        var childData = childSnapshot.val();

        var row = tbSubscriber.insertRow(rowIndex);
        var cellId = row.insertCell(0);
        var cellMenu = row.insertCell(1);
        var cellCategory = row.insertCell(2);
        var cellDescription = row.insertCell(3);
        var cellImg = row.insertCell(4);
        cellId.appendChild(document.createTextNode(childKey));
        cellMenu.appendChild(document.createTextNode(childData.menu));
        cellCategory.appendChild(document.createTextNode(childData.category));
        cellDescription.appendChild(document.createTextNode(childData.description));
        cellImg.appendChild(document.createTextNode(childData.img));
        rowIndex = rowIndex + 1;
        });

        var table = document.getElementById("tb_foods");
        
        var rows = table.getElementsByTagName("tr");
        for (i = 0; i < rows.length; i++) {
            var currentRow = table.rows[i];
            var createClickHandler = function(row) {
                return function() {
                    var cell0 = row.getElementsByTagName("td")[0];
                    var cell1 = row.getElementsByTagName("td")[1];
                    var cell2 = row.getElementsByTagName("td")[2];
                    var cell3 = row.getElementsByTagName("td")[3];
                    var cell4 = row.getElementsByTagName("td")[4];
                    var fid = cell0.innerHTML;
                    var menu = cell1.innerHTML;
                    var category = cell2.innerHTML;
                    var description = cell3.innerHTML;
                    var img = cell4.innerHTML;
                    document.getElementById('fid').value = fid;
                    document.getElementById('menu').value = menu;
                    document.getElementById('category').value = category;
                    document.getElementById('description').value = description;
                    document.getElementById('img').value = img;
                };
            };
            currentRow.onclick = createClickHandler(currentRow);
            }
        });
        
        function updateFood(){
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
            var fid = document.getElementById('fid').value;
            var menu = document.getElementById('menu').value;
            var category = document.getElementById('category').value;
            var description = document.getElementById('description').value;
            var img = file.name;

            var data = {
                menu: menu,
                category: category,
                description: description,
                img: img		
            }

            var updates = {};
            updates['/foods/' + fid] = data;
            firebase.database().ref().update(updates);

            Swal.fire({
                    title: 'Anda sudah mengupdate pengguna',
                    icon: 'success',
                    confirmButtonColor: '#2ecc71'
                }).then((result) => {
                    if(result.value) {
                        reload_page();
                    }
                });
        }
    
        function deleteFood(){
            var upk = document.getElementById('fid').value;

            firebase.database().ref().child('/foods/' + upk).remove();
            
            Swal.fire({
                    title: 'Apakah Anda Yakin',
                    text: 'Data User akan dihapus',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Hapus Data'
                }).then((result) => {
                    if(result.value) {
                        Swal.fire({
                            title: 'Anda sudah menghapus',
                            text: 'User',
                            icon: 'success'
                        }).then((result) => {
                            reload_page();
                        });                                                
                    }
                });       
        }
    
        function reload_page(){
            window.location.reload();
        }
  </script>


</body>

</html>
