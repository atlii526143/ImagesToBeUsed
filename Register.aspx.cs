using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Augmentations.ServiceReference1;

namespace Augmentations
{
    public partial class Register : System.Web.UI.Page
    {
        SearchServiceClient SR = new SearchServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Key"] == null)
            {
                Session["Key"] = "User";
                System.Diagnostics.Debug.WriteLine(Session["Key"]);
            }
            else
            {
                System.Diagnostics.Debug.WriteLine("We have seen this user before.");
            }
        }

        protected void btnReg_Click(object sender, EventArgs e) {
            if (Pass.Value.Equals(ConfPass.Value)) {
                // check if user exists.
                bool IsREg = SR.Registered(email.Value, Pass.Value);

                // if does not exists.
                if (IsREg == false) {
                    // create a new user.
                    User us = new User {
                        name = Name.Value,
                        surname = Surname.Value,
                        email = email.Value,
                        password = Pass.Value,
                        active = 1
                    };

                    // register the user.
                    int Registration = SR.Register(us);

                    // if sucessful, redirect to login page.
                    if (Registration.Equals(1)) {
                        Response.Redirect("Login.aspx");
                    } else {
                        System.Diagnostics.Debug.WriteLine("Sorry, registration failed, try again.");
                    }
                }       
            }
        }
    }
}