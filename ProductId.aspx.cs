using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Augmentations.ServiceReference1;
namespace Augmentations
{
    public partial class ProductId : System.Web.UI.Page
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

        protected void btnFind_Click(object sender, EventArgs e)
        {
            // find product by ID.
            var part = SR.FindAugID(AugCode.Value);

            // if product exists.
            if (part > 0)
            {
                // redirect to the edit product page, passing the part ID.
                Response.Redirect("EditProduct.aspx?A=" + part);
            } else
            {
                System.Diagnostics.Debug.WriteLine("Sorry, part could not be found.");
            }
        }
    }
}