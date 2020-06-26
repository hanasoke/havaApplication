<%-- 
    Document   : contact
    Created on : Jun 25, 2020, 5:09:45 PM
    Author     : Hanas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>Hava Contact</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="../images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="../css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="../css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="../css/custom.css">

    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.6.0/dist/leaflet.css" />

    <!-- The core Firebase JS SDK is always required and must be listed first -->
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-database.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-firestone.js"></script>
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

<body ng-app="validationApp" ng-controller="mainController">
    <!-- Start header -->
    <header class="top-navbar">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container">
                            <a class="navbar-brand" href="../index.jsp.html">
                                    <img src="../images/hava.png" alt="Hava" />
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food"
                                    aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbars-rs-food">
                                    <ul class="navbar-nav ml-auto">
                                            <li class="nav-item"><a class="nav-link" href="../index.jsp">Home</a></li>
                                            <li class="nav-item"><a class="nav-link" href="recipes.jsp">Recipes</a></li>
                                            <li class="nav-item"><a class="nav-link" href="about.jsp">About Us</a></li>
                                            <li class="nav-item active"><a class="nav-link" href="contact.jsp">Contact</a></li>
                                    </ul>
                            </div>
                    </div>
            </nav>
    </header>
    <!-- End header -->

    <!-- Start All Pages -->
    <div class="all-page-title page-breadcrumb">
            <div class="container text-center">
                    <div class="row">
                            <div class="col-lg-12">
                                    <h1>Contact</h1>
                            </div>
                    </div>
            </div>
    </div>
    <!-- End All Pages -->

    <!-- Start Contact -->
    <div class="contact-box">
            <div class="container">
                    <div class="row">
                            <div class="col-lg-12">
                                    <div class="heading-title text-center">
                                            <h2>Contact</h2>
                                    </div>
                            </div>
                    </div>
                    <div class="row">
                            <div class="col-lg-12">
                                    <form name="userForm">
                                            <div class="form-group">
                                                    <label for="name">Name</label>
                                                    <input type="text" name="name" class="form-control" id="name" ng-model="user.name" required>
                                            </div>
                                            <div class="form-group">
                                                    <label for="email">Email</label>
                                                    <input type="email" name="email" class="form-control" id="email" ng-model="user.email">
                                            </div>
                                            <div class="form-group">
                                                    <label for="recipe">Recipe Name</label>
                                                    <input type="text" name="recipe" class="form-control" id="recipe">
                                            </div>
                                            <div class="form-group">
                                                    <label for="message">Message</label>
                                                    <textarea type="text" name="message" class="form-control" ng-model="user.message" id="message"
                                                            required></textarea>
                                            </div>
                                            <button value="Save" onclick="save_feedback()" type="submit" class="btn btn-red btn-lg btn-block text-uppercase">SEND THE MESSAGE</button>
                                    </form>

                            </div>
                    </div>
            </div>
    </div>
    <!-- End Contact -->

    <!-- Start Map -->
    <div class="container-fluid mb-5">
            <div class="row">
                    <div class="col pb-2">
                            <h1 class="text-center text-uppercase">Office Location</h1>
                    </div>
            </div>
            <div class="row">
                    <div class="col">
                            <div id="map" style="width: 100%; height: 300px;"></div>
                    </div>
            </div>
    </div>
    <!-- End Map -->

    <!-- Start Contact info -->
    <div class="contact-imfo-box">
            <div class="container">
                    <div class="row">
                            <div class="col-md-4 arrow-right">
                                    <i class="fa fa-volume-control-phone"></i>
                                    <div class="overflow-hidden">
                                            <h4>Phone</h4>
                                            <p class="lead">
                                                    +01 2000 800 9999
                                            </p>
                                    </div>
                            </div>
                            <div class="col-md-4 arrow-right">
                                    <i class="fa fa-envelope"></i>
                                    <div class="overflow-hidden">
                                            <h4>Email</h4>
                                            <p class="lead">
                                                    havarecipe@gmail.com
                                            </p>
                                    </div>
                            </div>
                            <div class="col-md-4">
                                    <i class="fa fa-map-marker"></i>
                                    <div class="overflow-hidden">
                                            <h4>Location</h4>
                                            <p class="lead">
                                                    CCIT FTUI, Depok
                                            </p>
                                    </div>
                            </div>
                    </div>
            </div>
    </div>
    <!-- End Contact info -->

    <!-- Start Footer -->
    <footer class="footer-area bg-f">
            <div class="container">
                    <div class="row">
                            <div class="col-lg-3 col-md-6">
                                    <h3>About Us</h3>
                                    <p>Hava Recipe adalah suatu website yang menyediakan resep makanan, mulai dari makanan kecil hingga makanan
                                            khas daerah. Resep yang kami berikan kepada pengunjung mudah dipahami dan di praktekkan. Selain itu, makanan
                                            yang kami berikan resepnya itu memenuhi gizi 4 sehat 5 sempurna.</p>
                            </div>
                            <div class="col-lg-3 col-md-6">
                                    <h3>Subscribe</h3>
                                    <div class="subscribe_form">
                                            <form class="subscribe_form">
                                                    <input name="EMAIL" id="subs-email" class="form_input" placeholder="Email Address..." type="email">
                                                    <button type="submit" class="submit">SUBSCRIBE</button>
                                                    <div class="clearfix"></div>
                                            </form>
                                    </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                    <h3>Contact information</h3>
                                    <p class="lead">CCIT FTUI, Depok</p>
                                    <p class="lead"><a href="#">+01 2000 800 9999</a></p>
                                    <p><a href="#"> havarecipe@gmail.com</a></p>
                            </div>
                    </div>
            </div>

            <div class="copyright">
                    <div class="container">
                            <div class="row">
                                    <div class="col-lg-12">
                                            <p class="company-name">All Rights Reserved. &copy; 2020 <a href="#">Hava Recipes</a> Design By : Hanas Bayu
                                                    Pratama and Chelyn Valencia Wardhani </p>
                                    </div>
                            </div>
                    </div>
            </div>

    </footer>
    <!-- End Footer -->

    <a href="#" id="back-to-top" title="Back to top" style="display: none;"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></a>

    <!-- ALL JS FILES -->
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>

    <!-- ALL PLUGINS -->
    <script src="../js/jquery.superslides.min.js"></script>

    <script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js"></script>
    <script>
        var databaseRef = firebase.database().ref('feedback/');
        function save_feedback(){
            var name = document.getElementById('name').value;
            var email = document.getElementById('email').value;
            var recipe = document.getElementById('recipe').value;
            var message = document.getElementById('message').value;
            var nerm = firebase.database().ref().child('feedback').push().key;
            var data = {
            name: name,
            email: email,
            recipe: recipe,
            message: message
        }
            var updates = {};
            updates['/feedback/' + nerm] = data;
            firebase.database().ref().update(updates);
            alert('feedback has been added');
            reload_page();
        }
            function reload_page(){
            window.location.reload();
        }
    </script>
    <script>
            // koordinat dan zoom view peta
            // Koordinat yang digunakan berupa latitude dan longitude,
            //sebagai contoh saya menggunakan Koordinat CCIT
            var map = L.map('map').setView([-6.362141, 106.824923], 17);
            // ini adalah copyright, bisa dicopot tapi lebih baik kita hargai sang penciptanya ya :)
            L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>',
                    subdomains: ['a', 'b', 'c'],
            }).addTo(map);
            // ini adalah koordinat marker
            L.marker([-6.362141, 106.824923]).addTo(map)
                    .bindPopup("<b>Selamat Datang!</b> Di CCIT FT-UI.").openPopup();
            var popup = L.popup();

            function onMapClick(e) {
                    popup
                            .setLatLng(e.latlng)
                            .setContent("Koordinat pada titik ini adalah " + e.latlng.toString())
                            .openOn(map);
            }
            map.on('click', onMapClick);
    </script>


</body>

</html>
