<%-- 
    Document   : about
    Created on : Jun 25, 2020, 5:32:40 PM
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
	<title>Hava About</title>
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
	<!-- My CSS -->
	<link rel="stylesheet" href="../css/mystyle.css">
        
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
                                <li class="nav-item active"><a class="nav-link" href="about.jsp">About Us</a></li>
                                <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
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
                     <h1>About Us</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Pages -->

    <section class="about mt-3" id="about">
        <div class="container">
                <div class="row">
                        <div class="col head">
                                <h1 class="h1">Welcome to Hava Recipes</h1>
                        </div>
                </div>
                <div class="row">
                        <div class="col col-md-7 text-justify text-recipes">
                                <p>Hava Recipe adalah situs website yang menyediakan berbagai resep makanan dan minuman khas nusantara. Mulai
                                        dari makanan
                                        ringan atau snack, minuman, sampai makanan berat. Selain itu, makanan yang kami berikan resepnya itu
                                        memenuhi gizi 4
                                        sehat 5 sempurna.</p>
                                <p class="pb-2">Kami Menyajikan langkah-langkah yang mudah dipahami dan praktis untuk membantu meringankan
                                        pekerjaan Anda di dapur. Cocok untuk pemula yang sedang belajar masak, maupun yang sudah mahir namun sering
                                        bingung mau masak apa.</p>
                                <a class="btn btn-red btn-lg" href="recipes.html">OUR RECIPE</a>
                        </div>
                        <div class="col col-md-4 col-sm-6 d-none d-sm-block offset-1">
                                <div class="thumbnail-about">
                                        <img src="../images/about/thumbnail.jpg" alt="Thumbnail" class="img-fluid">
                                </div>
                        </div>
                </div>
                <div class="row pt-4">
                        <div class="col text-recipes text-center">
                                <p>Sebagian besar informasi memasak dan resep yang kami berikan diperoleh dari berbagai sumber media cetak,
                                        elektronik dan internet. </p>
                                <p>Kami Memahami bahwa tidak semua resep sempurna, untuk itulah kritik dan saran membangun bisa disampaikan
                                        melalui email kami di havarecipe@gmail.com demi menghadirkan informasi resep yang lebih akurat.</p>
                                <p>Semoga kumpulan aneka resep masakan yang kami sajikan bisa menginspirasi dan membantu para pembaca agar
                                        tidak lagi kebingungan ketika hendak menyajikan menu makanan untuk keluarga.</p>
                                <p>--Selamat Memasak--</p>
                        </div>
                </div>
        </div>
    </section>

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
                                                    <input name="EMAIL" id="subs_email" class="form_input" placeholder="Email Address..." type="email">
                                                    <button type="submit" class="submit" onclick="subscribe()" >SUBSCRIBE</button>
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
                                        Pratama and Chelyn Valencia</p>
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
    <script src="../js/images-loded.min.js"></script>
    <script src="../js/isotope.min.js"></script>
    <script src="../js/baguetteBox.min.js"></script>
    <script src="../js/form-validator.min.js"></script>
    <script src="../js/contact-form-script.js"></script>
    <script src="../js/custom.js"></script>
    <script>
        var databaseRef = firebase.database().ref('subscriber/');
        function subscribe(){
            var subs_email = document.getElementById('subs_email').value;
            var subs = firebase.database().ref().child('subscriber').push().key;
        var data = {
            subs_email: subs_email
        }
        var updates = {};
        updates['/subscriber/' + subs] = data;
        firebase.database().ref().update(updates);
        alert('Subscriber has been added');
        reload_page();
        }
        function reload_page(){
            window.location.reload();
        }
    </script>
</body>

</html>
