<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"  CodeBehind="Search.aspx.cs" Inherits="Augmentations.Search" %>  

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
                    <h2 class="mb-5">Search</h2>
                </div>
            </div>
            <form action="#" class="contact-form" runat="server">

                <div class="row form-group">
                    <div class="col-md-12 mb-3 mb-md-0">
                        <label class="font-weight-bold">Augmentation Name</label>
                        <input type="text" id="AugName" class="form-control" placeholder="" runat="server">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-md-12 mb-3 mb-md-0">
                        <label class="font-weight-bold">Augmentation Code</label>
                        <input type="text" id="AugCode" class="form-control" placeholder="" runat="server">
                    </div>
                </div>

                <div class="row align-items-center justify-content-center">
                    <asp:Button ID="btnSearch" runat="server" Text="Search for Part" class="btn btn-primary py-3 px-4" OnClick="btnSearch_Click" />
                </div>


                <div class="row form-group" visible="false" runat="server" id="messageDiv">
                    <div class="col-md-12">
                        <label class="font-weight-bold" for="message">Message</label>
                        <textarea name="message" id="message" cols="30" rows="5" class="form-control"
                            placeholder="Say hello to us"></textarea>
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