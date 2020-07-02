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
        <a class="navbar-brand" href="index.jsp">Hava Admin</a>
      </div>
      <div style="color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;"> Last access : 30 May 2014 &nbsp; <a href="#" class="btn btn-danger square-btn-adjust">Logout</a>
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
            <a class="active-menu" href="#"><i class="fa fa-table fa-3x"></i> Recipes Data</a>
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
    <!-- End Navbar -->

    <!-- Start Header  -->
    <div id="page-wrapper">
      <div id="page-inner">
        <div class="row">
          <div class="col-md-12">
            <h2>User Database</h2>
            <h5>Welcome Admin , Love to see you back. </h5>

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
                        <h3>Admin Hava Recipe <a href="crud/addRecipes.jsp" class="btn btn-success" >Tambah Baru</a></h3>
                        <form role="form">
                            
                                <div class="form-group">
                                    <input type="text" class="form-control" id="rid" placeholder="ID" readonly></input>
                                </div>
                                
                                <div class="form-group">
                                    <label>Menu</label>
                                    <select id="menu" class="form-control">
                                        <option value="">Choose Food / Drink</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label>Preparation Time</label>
                                    <input class="form-control" type="number" placeholder="Preparation Time" id="preparation"  required autocomplete="off" />
                                </div>
                                
                                <div class="form-group">
                                    <label>Cooking Time</label>
                                    <input class="form-control" type="number" placeholder="Cooking Time" id="cooking"  required autocomplete="off" />
                                </div>
                                
                                <div class="form-group">
                                    <label>Material 1</label>
                                    <input class="form-control" type="text" placeholder="material 1 " id="material_1"  required autocomplete="off" />
                                </div>
                                
                                <div class="form-group">
                                    <label>Material 2</label>
                                    <input class="form-control" type="text" placeholder="material 2" id="material_2"  required autocomplete="off" />
                                </div>
                                
                                <div class="form-group">
                                    <label>Material 3</label>
                                    <input class="form-control" type="text" placeholder="material 3" id="material_3"  required autocomplete="off" />
                                </div>
                                
                                <div class="form-group">
                                    <label>Step 1</label>
                                    <input class="form-control" type="text" placeholder="step 1" id="step_1"  required autocomplete="off" />
                                </div>
                                
                                <div class="form-group">
                                    <label>Step 2</label>
                                    <input class="form-control" type="text" placeholder="step 2" id="step_2"  required autocomplete="off" />
                                </div>
                                
                                <div class="form-group">
                                    <label>Step 3</label>
                                    <input class="form-control" type="text" placeholder="step 3" id="step_3"  required autocomplete="off" />
                                </div>
                            <div class="form-group">
                                <button type="button" onclick="update_user();" class="btn btn-primary">Update</button>
                                <button type="button" onclick="delete_user();" class="btn btn-danger">Delete</button>
                            </div>
                             </form>
                        </div>
                    </div>
                </div>
        </div>
        <!-- End Form Elements -->
        <!-- Start Table -->
        <div class="row">
          <div class="col-md-12">
            <!-- Advanced Tables -->
            <div class="panel panel-default">
              <div class="panel-heading">
                User Table
              </div>
              <div class="panel-body">
                <div class="table-responsive">
                  <table class="table table-striped table-bordered table-hover" id="tb_recipe">
                    <thead>
                      <tr>
                        <th>No</th>
                        <th>Menu</th>
                        <th>Preparation</th>
                        <th>Cooking</th>
                        <th>material 1</th>
                        <th>material 2</th>
                        <th>material 3</th>
                        <th>step 1</th>
                        <th>step 2</th>
                        <th>step 3</th>
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
        var databaseRefMenu = firebase.database().ref('foods/');
        var rowIndexMenu = 1;
            
        databaseRefMenu.once('value', function(snapshot) {
            snapshot.forEach(function(childSnapshot) {
                var childData = childSnapshot.val();
                var x = document.getElementById("menu");
                var option = document.createElement("option");
                option.text = childData.menu;
                option.value = childData.menu;
                x.add(option);
                rowIndexMenu = rowIndexMenu + 1;
            });
        });

        var tbRecipe = document.getElementById('tb_recipe');
        var databaseRef = firebase.database().ref('recipes/');
        var rowIndex = 1;
        
        databaseRef.once('value', function(snapshot) {
            snapshot.forEach(function(childSnapshot) {
                var childKey = childSnapshot.key;
                var childData = childSnapshot.val();
                var row = tbRecipe.insertRow(rowIndex);
                var cellId = row.insertCell(0);
                var cellMenu = row.insertCell(1);
                var cellPreparation = row.insertCell(2);
                var cellCooking = row.insertCell(3);
                var cellMaterial_1 = row.insertCell(4);
                var cellMaterial_2 = row.insertCell(5);
                var cellMaterial_3 = row.insertCell(6);
                var cellStep_1 = row.insertCell(7);
                var cellStep_2 = row.insertCell(8);
                var cellStep_3 = row.insertCell(9);
                cellId.appendChild(document.createTextNode(childKey));
                cellMenu.appendChild(document.createTextNode(childData.menu));
                cellPreparation.appendChild(document.createTextNode(childData.preparation));
                cellCooking.appendChild(document.createTextNode(childData.cooking));
                cellMaterial_1.appendChild(document.createTextNode(childData.material_1));
                cellMaterial_2.appendChild(document.createTextNode(childData.material_3));
                cellMaterial_3.appendChild(document.createTextNode(childData.material_3));
                cellStep_1.appendChild(document.createTextNode(childData.step_1));
                cellStep_2.appendChild(document.createTextNode(childData.step_2));
                cellStep_3.appendChild(document.createTextNode(childData.step_3));
                rowIndex = rowIndex + 1;
                
                
            });
            
            var table = document.getElementById("tb_recipe");
            var rows = table.getElementsByTagName("tr");
            for(i = 0; i < rows.length; i++) {
                var currentRow = table.rows[i];
                var createClickHandler = function(row) {
                    return function() {
                        var cell1 = row.getElementsByTagName("td")[0];
                        var cell2 = row.getElementsByTagName("td")[1];
                        var cell3 = row.getElementsByTagName("td")[2];
                        var cell4 = row.getElementsByTagName("td")[3];
                        var cell5 = row.getElementsByTagName("td")[4];
                        var cell6 = row.getElementsByTagName("td")[5];
                        var cell7 = row.getElementsByTagName("td")[6];
                        var cell8 = row.getElementsByTagName("td")[7];
                        var cell9 = row.getElementsByTagName("td")[8];
                        var cell10 = row.getElementsByTagName("td")[9];
                        
                        var id = cell1.innerHTML;
                        var menu = cell2.innerHTML;
                        var preparation = cell3.innerHTML;
                        var cooking = cell4.innerHTML;
                        var material_1 = cell5.innerHTML;
                        var material_2 = cell6.innerHTML;
                        var material_3 = cell7.innerHTML;
                        var step_1 = cell8.innerHTML;
                        var step_2 = cell9.innerHTML;
                        var step_3 = cell10.innerHTML;
                        document.getElementById('rid').value = id;
                        document.getElementById('menu').value = menu;
                        document.getElementById('preparation').value = preparation;
                        document.getElementById('cooking').value = cooking;
                        document.getElementById('material_1').value = material_1;
                        document.getElementById('material_2').value = material_2;
                        document.getElementById('material_3').value = material_3;
                        document.getElementById('step_1').value = step_1;
                        document.getElementById('step_2').value = step_2;
                        document.getElementById('step_3').value = step_3;
                    };
                };
                currentRow.onclick = createClickHandler(currentRow);
            };
           
        }); 
            
    
    function update_user(){
    	var menu = document.getElementById('menu').value;
    	var preparation = document.getElementById('preparation').value;
                var cooking = document.getElementById('cooking').value;
                var material_1 = document.getElementById('material_1').value;
                var material_2 = document.getElementById('material_2').value;
                var material_3 = document.getElementById('material_3').value;
                var step_1 = document.getElementById('step_1').value;
                var step_2 = document.getElementById('step_2').value;
                var step_3 = document.getElementById('step_3').value;
                var rid = document.getElementById('rid').value;
    	
    	var data = {
                    menu: menu,
                    preparation: preparation,
                    cooking: cooking,
                    material_1: material_1,
                    material_2: material_2,
                    material_3: material_3,
                    step_1:step_1,
                    step_2:step_2,
                    step_3:step_3,   			
    	}
    	
    	var updates = {};
    	updates['/recipes/' + rid] = data;
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
    
    function delete_user(){
        var rid = document.getElementById('rid').value;

        firebase.database().ref().child('/recipes/' + rid).remove();
        
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