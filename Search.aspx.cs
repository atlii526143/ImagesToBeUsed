using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Augmentations.ServiceReference1;


namespace Augmentations {
    public partial class Search : System.Web.UI.Page {
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

        protected void btnSearch_Click(object sender, EventArgs e) {
            // search for a part using augcode and augname
            var part = SR.Part(AugCode.Value, AugName.Value);

            // if exists.
            if (part.Equals(true)) {
                // redirect to home page.
                Response.Redirect("Home.aspx");
            } else {
                AugName.Value = "";
                AugCode.Value = "";
            }
            
        }

        
    }
}