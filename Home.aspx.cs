using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Augmentations
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {
            if (Session["Key"] == null) {
                Session["Key"] = "User";
                System.Diagnostics.Debug.WriteLine(Session["Key"]);
            } else {
                System.Diagnostics.Debug.WriteLine("We have seen this user before.");
            }
        }
    }
}