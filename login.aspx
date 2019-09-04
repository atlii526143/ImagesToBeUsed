<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master" CodeBehind="login.aspx.cs" Inherits="Augmentations.login" %>

<asp:Content ContentPlaceHolderId="body" runat="server">
    <div class="site-mobile-menu">
        <div class="site-mobile-menu-header">
            <div class="site-mobile-menu-close mt-3">
                <span class="icon-close2 js-menu-toggle"></span>
            </div>
        </div>
        <div class="site-mobile-menu-body"></div>
    </div>

    <div class="site-section" id="Augment">
        <div class="container">
            <div class="row">
                <div class="site-section-heading text-center mb-5 w-border col-md-6 mx-auto">
                    <h2 class="mb-5">Login</h2>
                </div>
            </div>
            <form action="#" class="contact-form" runat="server">
                <div class="row form-group">
                    <div class="col-md-12 mb-3 mb-md-0">
                        <label class="font-weight-bold">Email</label>
                        <input type="email" id="UserEmail" class="form-control" placeholder="" runat="server">
                    </div>
                    <div class="col-md-12 mb-3 mb-md-0">
                        <label class="font-weight-bold">Password</label>
                        <input type="password" id="UserPassword" class="form-control" placeholder="" runat="server">
                    </div>
                </div>

                <div class="row align-items-center justify-content-center">
                    <asp:Button ID="btnlogin" runat="server" Text="Login" class="btn btn-primary py-3 px-4" OnClick="btnlogin_Click"  />
                </div>


                <div class="row form-group" visible="false" runat="server" id="messageDiv" runat="server">
                    <div class="col-md-12">
                        <label class="font-weight-bold" for="message">Message</label>
                        <textarea name="message" id="message" cols="30" rows="2" class="form-control" placeholder="" runat="server"></textarea>
                    </div>
                </div>
                <br />
                <br />
                <br />
                <br />
                <br />
            </form>

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

    </div>

 

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
