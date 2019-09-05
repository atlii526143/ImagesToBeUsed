using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Farmers_Field.ServiceReference;

namespace Farmers_Field {
    public partial class Register : System.Web.UI.Page {

        Service1Client service = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void submit_Click(object sender, EventArgs e) {
            // check if the user exists in the database.
            // if not create a new user, and push user to the database.
            var isRegistered = service.Registered(email.Value, password.Value);

            // if the user is not registered.
            if (!isRegistered)
            {
                if (password.Value.Equals(confirm.Value))
                {
                    User user = new User
                    {
                        first_name = first_name.Value,
                        last_name = last_name.Value,
                        email = email.Value,
                        phone_number = phone_number.Value,
                        address = Add1.Value + " " + Add2.Value,
                        user_type = "normal",
                        active = 1,
                        password = password.Value,
                        city = City.Value,
                        province = Prov.Value,
                        zip_code = Zip.Value
                    };

                    service.Register(user);

                    Response.Redirect("Home.aspx");
                } else
                {
                    password.Value = "";
                    confirm.Value = "";
                }
            } else
            {
                // user is already registerd, try login.
                Response.Redirect("Login.aspx");
            }
        }
    }
}