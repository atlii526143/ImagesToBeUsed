using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Augmentations.ServiceReference1;

namespace Augmentations
{
    public partial class EditProduct : System.Web.UI.Page
    {
        SearchServiceClient SR = new SearchServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Key"] == null) {
                Session["Key"] = "User";
                System.Diagnostics.Debug.WriteLine(Session["Key"]);
            } else {
                System.Diagnostics.Debug.WriteLine("We have seen this user before.");
            }
     
            if (!IsPostBack)
            {
                BodyP part = SR.GetAug(Request.QueryString["A"]);
            
                Snum.Value = Convert.ToString(part.Sn);
                AugName.Value = Convert.ToString(part.PN);
                AugSup.Value = Convert.ToString(part.SID);
                AugPrice.Value = Convert.ToString(part.price);
                AugQuantity.Value = Convert.ToString(part.Qua);
            }
            
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            // create a new part.
            BodyP Edited = new BodyP
            {
                Sn = Convert.ToInt32(Snum.Value),
                PN = AugName.Value,
                SID = Convert.ToInt32(AugSup.Value),
                price = Convert.ToInt32(AugPrice.Value),
                Qua = Convert.ToInt32(AugQuantity.Value)
            };

            // pass in the edited part to the service.
            var addedited = SR.EditAug(Edited, Convert.ToInt32(Request.QueryString["A"]));

            // if edit fails, for some reason.
            if (addedited == false) {
                System.Diagnostics.Debug.WriteLine("Sorry, part could not be edited, please try again.");
            }
        }
        
    }
}