using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Farmers_Field.ServiceReference;

namespace Farmers_Field
{
    public partial class Login : System.Web.UI.Page {

        Service1Client service = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void submit_Click(object sender, EventArgs e) {

            var isLoggedIn = service.Login(email.Value, password.Value);

            if (isLoggedIn)
            {
                Session["isLoggedIn"] = "true";

                System.Diagnostics.Debug.WriteLine("User logged in now? " + Session["isLoggedIn"]);

                Response.Redirect("Home.aspx");
            } else
            {
                email.Value = "";
                password.Value = "";
            }
        }
    }
}