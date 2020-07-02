<%-- 
    Document   : index.jsp
    Created on : Jun 25, 2020, 5:28:59 PM
    Author     : Hanas
--%>

<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>Hava Recipe</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
    
    <!-- The core Firebase JS SDK is always required and must be listed first -->
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-database.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-analytics.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-auth.js"></script>

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
                <a class="navbar-brand" href="index.jsp.html">
                        <img src="images/hava.png" alt="Hava" />
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food"
                        aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbars-rs-food">
                        <ul class="navbar-nav ml-auto">
                                <li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/recipes.jsp">Recipes</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/about.jsp">About Us</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/contact.jsp">Contact</a></li>
                                <button type="button" class="btn btn-light" onclick="signOut()">Logout</button>
                        </ul>
                </div>
            </div>
        </nav>
    </header>
    <!-- End header -->

    <!-- Start slides -->
    <div id="slides" class="cover-slides">
        <ul class="slides-container">
                <li class="text-left">
                        <img src="images/carousel/1.jpg" alt="">
                        <div class="container">
                                <div class="row">
                                        <div class="col-md-12">
                                                <h1 class="m-b-20"><strong>Panduan Masak Gado-Gado</strong></h1>
                                                <p class="m-b-40">Memasak gado-gado merupakan hal yang sulit, nah disini ada resepnya agar kalian dapat
                                                        membuat gado-gado</p>
                                                <p><a class="btn-hava btn-lg btn-circle btn-outline-new-white" href="foods/gado_gado.html">Recipe</a></p>
                                        </div>
                                </div>
                        </div>
                </li>
                <li class="text-left">
                        <img src="images/carousel/2.jpg" alt="">
                        <div class="container">
                                <div class="row">
                                        <div class="col-md-12">
                                                <h1 class="m-b-20"><strong>Panduan Memasak Bebek Rica-Rica</strong></h1>
                                                <p class="m-b-40">Menikmati bebek Rica-Rica direstaurant merupakan hal yang ternikmat. lalu bagaimana
                                                        kalau kita bisa membuat Bebek Rica-Rica Yang ada direstaurant dengan tangan Kita sendiri</p>
                                                <p><a class="btn-hava btn-lg btn-circle btn-outline-new-white" href="foods/rica_rica.html">Recipe</a></p>
                                        </div>
                                </div>
                        </div>
                </li>
                <li class="text-left">
                        <img src="images/carousel/3.jpg" alt="">
                        <div class="container">
                                <div class="row">
                                        <div class="col-md-12">
                                                <h1 class="m-b-20"><strong>Panduan Memasak Steak</strong></h1>
                                                <p class="m-b-40">Menikmati steak di restaurant memang nikmat dan menyenangkan sehingga membuat kita
                                                        ketagihan menyicipi nya lagi. lalu bagaimana bila kita dapat mengikuti resep restaurant cara membuat
                                                        steak
                                                        dengan tangan kita sendiri</p>
                                                <p><a class="btn-hava btn-lg btn-circle btn-outline-new-white" href="foods/steak.html">Recipe</a></p>
                                        </div>
                                </div>
                        </div>
                </li>
        </ul>
        <div class="slides-navigation">
                <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
        </div>
    </div>
    <!-- End slides -->

    <!-- Start About -->
    <section id="service" class="service">
        <div class="container">
                <div class="row">
                        <div class="col">
                                <div class="text-center m-5">
                                        <h1>Our Service</h1>
                                </div>
                        </div>
                </div>
                <div class="row pb-5">
                        <div class="col-sm-4">
                                <div class="text-center">
                                        <div class="mb-3">
                                                <img src="images/service/recipes.png" alt="Recipes" />
                                        </div>
                                        <h3 class="font-weight-normal">Resep disusun dengan baik</h3>
                                        <p class="text-justify" style="text-indent: 20px;">Di Website ini semua resep makanan disusun dengan baik
                                                dan rapi layaknya buku panduan. Selain itu bahasa yang digunakan mudah dimengerti dan mudah dipahami
                                                ketika memasak menggunakan resep pada website ini.</p>
                                </div>
                        </div>
                        <div class="col-sm-4">
                                <div class="text-center">
                                        <div class="mb-3">
                                                <img src="images/service/food.png" alt="Food" />
                                        </div>
                                        <h3 class="font-weight-normal">Makanan Sehat</h3>
                                        <p class="text-justify" style="text-indent: 20px;">Semua Resep makanan yang disajikan pada website ini
                                                adalah makanan sehat yang mengaju pada pedoman "4 sehat 5 sempurna" sehingga menjaga kebugaran tubuh anda
                                                dan membuat anda dapat menerapkan hidup sehat </p>
                                </div>
                        </div>
                        <div class="col-sm-4">
                                <div class="text-center">
                                        <div class="mb-3">
                                                <img src="images/service/kokky.png" alt="Kokky">
                                        </div>
                                        <h3 class="font-weight-normal">Resep dari Kokky handal</h3>
                                        <p class="text-justify" style="text-indent: 20px;">Resep masakan pada website ini dibuat oleh Koki handal
                                                dan berpengalaman dalam membuat makanan sehingga pastinya jika anda membuat makanan mengikuti resep pada
                                                website ini dijamin terasa enak</p>
                                </div>
                        </div>
                </div>
        </div>
    </section>
    <!-- End About -->

	<!-- Start QT -->
	<div class="qt-box qt-background">
		<div class="container">
			<div class="row">
				<div class="col-md-8 ml-auto mr-auto text-center">
					<p class="lead ">
						" If you're not the one cooking, stay out of the way and compliment the chef. "
					</p>
					<span class="lead">Michael Strahan</span>
				</div>
			</div>
		</div>
	</div>
	<!-- End QT -->

    <!-- Start Menu -->
    <div class="menu-box">
            <div class="container">
                    <div class="row">
                            <div class="col-lg-12 mt-5">
                                    <div class="heading-title text-center">
                                            <h2>Resep Makanan Kami</h2>
                                            <p>Di Bawah adalah jenis-jenis makanan yang dapat kalian baca Resepnya</p>
                                    </div>
                            </div>
                    </div>

                    <div class="row inner-menu-box">
                            <div class="col-12 col-md-3 col-sm-3">
                                    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                            <a class="nav-link nav-recipe active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">All Menu</a>
                                            <a class="nav-link nav-recipe" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Food</a>
                                            <a class="nav-link nav-recipe" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Drink</a>
                                            <a class="nav-link nav-recipe" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Tucker</a>
                                    </div>
                            </div>

                            <div class="col-12 col-md-9 col-sm-3">
                                    <div class="tab-content" id="v-pills-tabContent">
                                            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">

                                                    <div class="row" id="list-menu">

                                                    </div>
                                            </div>
                                    </div>
                            </div>

                    </div>
            </div>
            <!-- End Menu -->

            <!-- Start Gallery -->
            <div class="gallery-box">
                    <div class="container">
                            <div class="row">
                                    <div class="col-lg-12">
                                            <div class="heading-title text-center">
                                                    <h2>Gallery</h2>
                                                    <p>Berikut ini adalah Makanan dengan Resep Terbaik yang pernah ada</p>
                                            </div>
                                    </div>
                            </div>
                            <div class="tz-gallery">
                                    <div class="row" id="list-gallery">

                                    </div>
                            </div>
                    </div>
            </div>
            <!-- End Gallery -->

            <!-- Start Customer Reviews -->
            <div class="customer-reviews-box">
                    <div class="container">
                            <div class="row">
                                    <div class="col-lg-12">
                                            <div class="heading-title text-center">
                                                    <h2>Customer Reviews</h2>
                                                    <p>Testimoni ini adalah bukti bahwa kami memberikan recipe yang terbaik</p>
                                            </div>
                                    </div>
                            </div>
                            <div class="row">
                                    <div class="col-md-8 mr-auto ml-auto text-center">
                                            <div id="reviews" class="carousel slide" data-ride="carousel">
                                                    <div class="carousel-inner mt-4">
                                                            <div class="carousel-item text-center active">
                                                                    <div class="img-box p-1 border rounded-circle m-auto">
                                                                            <img class="d-block w-100 rounded-circle" src="images/testimonials/karim.png" alt="">
                                                                    </div>
                                                                    <h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Karim Owen</strong></h5>
                                                                    <h6 class="text-dark m-0">Enginering Employee</h6>
                                                                    <p class="m-0 pt-3">Ketika Saya pertama kali mencoba resep masakan pada website ini, Rasanya sulit
                                                                            banget. pas saya mencoba selanjutnya terasa mudah karena sudah tahu bagaimana cara memasak dengan
                                                                            baik
                                                                            dan benar</p>
                                                            </div>
                                                            <div class="carousel-item text-center">
                                                                    <div class="img-box p-1 border rounded-circle m-auto">
                                                                            <img class="d-block w-100 rounded-circle" src="images/testimonials/paris.png" alt="">
                                                                    </div>
                                                                    <h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Paris Augustina</strong></h5>
                                                                    <h6 class="text-dark m-0">Artist</h6>
                                                                    <p class="m-0 pt-3">Sebagai Ibu rumah tangga, saya butuh sekali membuat masakan yang lezat dan nikmat
                                                                            untuk keluarga. Dengan adanya resep masakana diwebsite ini, saya jadi dapat memenuhi kebutuhan saya
                                                                            dan keluarga</p>
                                                            </div>
                                                            <div class="carousel-item text-center">
                                                                    <div class="img-box p-1 border rounded-circle m-auto">
                                                                            <img class="d-block w-100 rounded-circle" src="images/testimonials/yanko.png" alt="">
                                                                    </div>
                                                                    <h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Yanko Febriant</strong></h5>
                                                                    <h6 class="text-dark m-0">Freelancer</h6>
                                                                    <p class="m-0 pt-3">Sebagai seorang freelance, saya butuh sekali membuat masakan lezat dan nikmat
                                                                            dilidah. Dengan resep yang disediakan pada website ini, dapat menjawab kebutuhan saya membuat
                                                                            masakan
                                                                            lezat dan nikmat.</p>
                                                            </div>
                                                    </div>
                                                    <a class="carousel-control-prev" href="#reviews" role="button" data-slide="prev">
                                                            <i class="fa fa-angle-left" aria-hidden="true"></i>
                                                            <span class="sr-only">Previous</span>
                                                    </a>
                                                    <a class="carousel-control-next" href="#reviews" role="button" data-slide="next">
                                                            <i class="fa fa-angle-right" aria-hidden="true"></i>
                                                            <span class="sr-only">Next</span>
                                                    </a>
                                            </div>
                                    </div>
                            </div>
                    </div>
            </div>
            <!-- End Customer Reviews -->

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
                                        khas daerah. Resep yang kami berikan kepada pengunjung mudah dipahami dan di praktekkan. Selain itu,
                                        makanan
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
                                        <p class="company-name">All Rights Reserved. &copy; 2020 <a href="#">Hava Recipes</a> Design By : Hanas Bayu Pratama and Chelyn Valencia Wardhani</p>
                                </div>
                        </div>
                </div>
        </div>

    </footer>
   <!-- End Footer -->
   <a href="#" id="back-to-top" title="Back to top" style="display: none;"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></a>

   <!-- ALL JS FILES -->
   <script src="js/jquery-3.2.1.min.js"></script>
   <script src="js/popper.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
   <!-- ALL PLUGINS -->
   <script src="js/jquery.superslides.min.js"></script>
   <script src="js/images-loded.min.js"></script>
   <script src="js/isotope.min.js"></script>
   <script src="js/baguetteBox.min.js"></script>
   <script src="js/form-validator.min.js"></script>
   <script src="js/contact-form-script.js"></script>
   <script src="js/custom.js"></script>
   <script src="js/script.js"></script>
   <script src="js/gallery.js"></script>
   
   <!--Sweet Alert-->
    <script src="js/sweetalert2.all.min.js"></script>
    
</body>
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
                        document.location.href = "../hava-admin/login/loginUser.jsp";
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
      
    var databaseRef = firebase.database().ref('subscriber/');
    function subscribe(){
            var subs_email = document.getElementById('subs_email').value;
            var subs = firebase.database().ref().child('subscriber').push().key;
            
            if(subs_email != ""){
                var data = {
                    subs_email: subs_email
                }
                var updates = {};
                updates['/subscriber/' + subs] = data;
                firebase.database().ref().update(updates);
                Swal.fire({
                    title: 'Terima kasih sudah mau berlangganan',
                    icon: 'success',
                });
                reload_page();
            } else {
                Swal.fire({
                    title: 'Alamat Email wajib diisi',
                    icon: 'info'
                });
            }
            function reload_page(){
                    window.location.reload();
                }
        }
            

</script>

</html>
