<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Augmentations.Home" %>  

<asp:Content ContentPlaceHolderId="body" runat="server">
    <div class="site-mobile-menu">
        <div class="site-mobile-menu-header">
            <div class="site-mobile-menu-close mt-3">
                <span class="icon-close2 js-menu-toggle"></span>
            </div>
        </div>
        <div class="site-mobile-menu-body"></div>
    </div>
    <!-- .site-mobile-menu -->

    <div class="site-blocks-cover overlay" style="background-image: url('images/land.png');" data-aos="fade" data-stellar-background-ratio="0.5" data-aos="fade">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-md-7 text-center" data-aos="fade-up" data-aos-delay="400">
                    <h1 class="mb-4">We Can Satisfy That Itch</h1>
                    <p><a href="Search.aspx" class="btn btn-primary px-4 py-3">See Augmentations</a></p>
                </div>
            </div>
        </div>
    </div>

    <div class="site-section" id="Augment">
        <div class="container">
            <div class="row">
                <div class="site-section-heading text-center mb-5 w-border col-md-6 mx-auto">
                    <h2 class="mb-5">Latest Shipment</h2>
                    <p>Have a look at the latest military grade augmentations</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
                    <a href="#" class="unit-9">
                        <div class="image" style="background-image: url('images/img1.jpg');"></div>
                        <div class="unit-9-content">
                            <h2>Aug Gun</h2>
                            <span>Aug gun used by the arc members. Created back in 2019.</span>
                            <span>Deus Ex Mankind Divided</span>
                        </div>
                    </a>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="200">
                    <a href="#" class="unit-9">
                        <div class="image" style="background-image: url('images/img2.jpg');"></div>
                        <div class="unit-9-content">
                            <h2>Marchenko Secret Arm</h2>
                            <span>Viktor Marchenko Secret Arm and Hyperion gun.</span>
                            <span>Deus Ex Mankind Divided</span>
                        </div>
                    </a>
                </div>
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                    <a href="#" class="unit-9">
                        <div class="image" style="background-image: url('images/img3.jpg');"></div>
                        <div class="unit-9-content">
                            <h2>Jensen PEPs Augmentation</h2>
                            <span>Deus Ex Mankind Divided - Jensen PEPs Augmentation</span>
                            <span>Deus Ex Mankind Divided</span>
                        </div>
                    </a>
                </div>
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
                    <a href="#" class="unit-9">
                        <div class="image" style="background-image: url('images/img4.jpg');"></div>
                        <div class="unit-9-content">
                            <h2>Talos Rucker Arm</h2>
                            <span>Deus Ex Mankind Divided - Talos Rucker Arm</span>
                            <span>Deus Ex Mankind Divided</span>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="site-section">

        <div class="container">

            <div class="row">
                <div class="site-section-heading text-center mb-5 w-border col-md-6 mx-auto" data-aos="fade-up">
                    <h2 class="mb-5">Featured Looks</h2>
                    <p>Package looks</p>
                </div>
            </div>

            <div class="site-block-retro d-block d-md-flex">

                <a href="#" class="col1 unit-9 no-height" data-aos="fade-up" data-aos-delay="100">
                    <div class="image" style="background-image: url('images/person1.jpg');"></div>
                    <div class="unit-9-content">
                        <h2>Keanu Reeves</h2>
                        <span>In Cyberpunk</span>
                    </div>
                </a>

                <div class="col2 ml-auto">

                    <a href="#" class="col2-row1 unit-9 no-height" data-aos="fade-up" data-aos-delay="200">
                        <div class="image" style="background-image: url('images/person2.jpg');"></div>
                        <div class="unit-9-content">
                            <h2>Unknown</h2>
                            <span>In Cyberpunk</span>
                        </div>
                    </a>

                    <a href="#" class="col2-row2 unit-9 no-height" data-aos="fade-up" data-aos-delay="300">
                        <div class="image" style="background-image: url('images/person3.jpg');"></div>
                        <div class="unit-9-content">
                            <h2>Vee</h2>
                            <span>In Cyberpunk</span>
                        </div>
                    </a>

                </div>

            </div>

        </div>
    </div>



    <div class="site-section">
        <div class="container" data-aos="fade-up">
            <div class="row">
                <div class="site-section-heading text-center mb-5 w-border col-md-6 mx-auto">
                    <h2 class="mb-5">Our Team</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
                    <div class="team-member">

                        <img src="images/person_11.jpg" alt="Image" class="img-fluid">

                        <div class="text">

                            <h2 class="mb-2 font-weight-light h4">Dr. Brooke Cagle</h2>
                            <span class="d-block mb-2 text-white-opacity-05">Robotics Director</span>
                            <p class="mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit ullam reprehenderit nemo.</p>
                            <p>
                                <a href="#" class="text-white p-2"><span class="icon-facebook"></span></a>
                                <a href="#" class="text-white p-2"><span class="icon-twitter"></span></a>
                                <a href="#" class="text-white p-2"><span class="icon-linkedin"></span></a>
                            </p>
                        </div>

                    </div>
                </div>

                <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
                    <div class="team-member">

                        <img src="images/person_12.jpg" alt="Image" class="img-fluid">

                        <div class="text">

                            <h2 class="mb-2 font-weight-light h4">Megan Smith</h2>
                            <span class="d-block mb-2 text-white-opacity-05">Engineering Specialist</span>
                            <p class="mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit ullam reprehenderit nemo.</p>
                            <p>
                                <a href="#" class="text-white p-2"><span class="icon-facebook"></span></a>
                                <a href="#" class="text-white p-2"><span class="icon-twitter"></span></a>
                                <a href="#" class="text-white p-2"><span class="icon-linkedin"></span></a>
                            </p>
                        </div>

                    </div>
                </div>

                <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
                    <div class="team-member">

                        <img src="images/person_13.jpg" alt="Image" class="img-fluid">

                        <div class="text">

                            <h2 class="mb-2 font-weight-light h4">Philip Martin</h2>
                            <span class="d-block mb-2 text-white-opacity-05">Integration Specialist</span>
                            <p class="mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit ullam reprehenderit nemo.</p>
                            <p>
                                <a href="#" class="text-white p-2"><span class="icon-facebook"></span></a>
                                <a href="#" class="text-white p-2"><span class="icon-twitter"></span></a>
                                <a href="#" class="text-white p-2"><span class="icon-linkedin"></span></a>
                            </p>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>


    <div class="bg-primary" data-aos="fade">
        <div class="container">
            <div class="row">
                <a href="#" class="col-2 text-center py-4 social-icon d-block"><span class="icon-facebook text-white"></span></a>
                <a href="#" class="col-2 text-center py-4 social-icon d-block"><span class="icon-twitter text-white"></span></a>
                <a href="#" class="col-2 text-center py-4 social-icon d-block"><span class="icon-instagram text-white"></span></a>
                <a href="#" class="col-2 text-center py-4 social-icon d-block"><span class="icon-linkedin text-white"></span></a>
                <a href="#" class="col-2 text-center py-4 social-icon d-block"><span class="icon-pinterest text-white"></span></a>
                <a href="#" class="col-2 text-center py-4 social-icon d-block"><span class="icon-youtube text-white"></span></a>
            </div>
        </div>
    </div>

    <footer class="site-footer">
    </footer>

  <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/mediaelement-and-player.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/bootstrap-datepicker.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/circleaudioplayer.js"></script>

    <script src="js/main.js"></script>
</asp:Content>