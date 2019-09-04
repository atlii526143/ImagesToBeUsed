using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Augmentations.ServiceReference1;

namespace Augmentations
{
    public partial class login : System.Web.UI.Page
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

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            // check if user exists.
            bool UserExist = SR.Login(UserEmail.Value, UserPassword.Value);

            // if user exists. redirect to home page.
            if (UserExist == true )
            {
                Response.Redirect("Home.aspx");
            }
        }
    }
}