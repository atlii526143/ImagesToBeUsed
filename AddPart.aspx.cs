using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Augmentations.ServiceReference1;

namespace Augmentations
{
    public partial class AddPart : System.Web.UI.Page
    {
        SearchServiceClient SC = new SearchServiceClient();

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

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            // searches the database for the 
            bool isNew = SC.NewPart(Snum.Value);

            // if this part does not exist.
            if (isNew == false)
            {

                // create a new part.
                var Np = new BodyP
                {
                    Sn = Convert.ToInt32(Snum.Value),
                    PN = AugName.Value,
                    SID = Convert.ToInt32(AugSup.Value),
                    price = Convert.ToInt32(AugPrice.Value),
                    Qua = Convert.ToInt32(AugQuantity.Value)
                };
                
                // add new part to the database.
                var part = SC.AddNewPart(Np);
            } else {
                // part already exists in the database.
                System.Diagnostics.Debug.WriteLine("Sorry, part already exists in the database.");
            }
        }
    }
}