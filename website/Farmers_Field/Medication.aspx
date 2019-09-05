<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Medication.aspx.cs" Inherits="Farmers_Field.Medication" %>

<asp:Content ContentPlaceHolderId="body" runat="server">  
	<div class="fh5co-loader"></div>

	<div id="page">
        	<div id="fh5co-course">
			<div class="container">
				<div class="row">
					<div class="col-md-6 animate-box">
						<div class="course">
							<a href="#" class="course-img" style="background-image: url(images/project-1.jpg);">
							</a>
							<div class="desc">
								<h3><a href="#">Web Master</a></h3>
								<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit
									ab aliquam dolor eius molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
								<span><a href="#" class="btn btn-primary btn-sm btn-course">Take A Course</a></span>
							</div>
						</div>
					</div>
					<div class="col-md-6 animate-box">
						<div class="course">
							<a href="#" class="course-img" style="background-image: url(images/project-2.jpg);">
							</a>
							<div class="desc">
								<h3><a href="#">Business &amp; Accounting</a></h3>
								<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit
									ab aliquam dolor eius molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
								<span><a href="#" class="btn btn-primary btn-sm btn-course">Take A Course</a></span>
							</div>
						</div>
					</div>
					<div class="col-md-6 animate-box">
						<div class="course">
							<a href="#" class="course-img" style="background-image: url(images/project-3.jpg);">
							</a>
							<div class="desc">
								<h3><a href="#">Science &amp; Technology</a></h3>
								<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit
									ab aliquam dolor eius molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
								<span><a href="#" class="btn btn-primary btn-sm btn-course">Take A Course</a></span>
							</div>
						</div>
					</div>
					<div class="col-md-6 animate-box">
						<div class="course">
							<a href="#" class="course-img" style="background-image: url(images/project-4.jpg);">
							</a>
							<div class="desc">
								<h3><a href="#">Health &amp; Psychology</a></h3>
								<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit
									ab aliquam dolor eius molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
								<span><a href="#" class="btn btn-primary btn-sm btn-course">Take A Course</a></span>
							</div>
						</div>
					</div>
					<div class="col-md-6 animate-box">
						<div class="course">
							<a href="#" class="course-img" style="background-image: url(images/project-5.jpg);">
							</a>
							<div class="desc">
								<h3><a href="#">Science &amp; Technology</a></h3>
								<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit
									ab aliquam dolor eius molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
								<span><a href="#" class="btn btn-primary btn-sm btn-course">Take A Course</a></span>
							</div>
						</div>
					</div>
					<div class="col-md-6 animate-box">
						<div class="course">
							<a href="#" class="course-img" style="background-image: url(images/project-6.jpg);">
							</a>
							<div class="desc">
								<h3><a href="#">Health &amp; Psychology</a></h3>
								<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit
									ab aliquam dolor eius molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
								<span><a href="#" class="btn btn-primary btn-sm btn-course">Take A Course</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Count Down -->
	<script src="js/simplyCountdown.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>
	<script>
		var d = new Date(new Date().getTime() + 1000 * 120 * 120 * 2000);

		// default example
		simplyCountdown('.simply-countdown-one', {
			year: d.getFullYear(),
			month: d.getMonth() + 1,
			day: d.getDate()
		});

		//jQuery example
		$('#simply-countdown-losange').simplyCountdown({
			year: d.getFullYear(),
			month: d.getMonth() + 1,
			day: d.getDate(),
			enableUtc: false
		});
	</script>
</asp:Content>