using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Farmers_Field
{
    public partial class Master1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Key"] == null)
            {
                Session["Key"] = "User";
                Session["isLoggedIn"] = "false";
                System.Diagnostics.Debug.WriteLine(Session["Key"]);
                loggedin.Visible = false;
                loggin.Visible = true;
            }
            else
            {
                System.Diagnostics.Debug.WriteLine("User logged in " + Session["isLoggedIn"]);

                // if a user is currently logged in.
                if (Session["isLoggedIn"].Equals("true"))
                {
                    // tell the use that they are logged in.
                    loggin.Visible = false;
                    loggedin.Visible = true;
                }

                System.Diagnostics.Debug.WriteLine("We have seen this user before.");
            }
        }
    }
}