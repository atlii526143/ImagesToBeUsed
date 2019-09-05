<%@ Page Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Farmers_Field.Register" %>

<asp:Content ContentPlaceHolderId="body" runat="server"> 
  <div id="page">
    <div class="main">
      <div class="container">
        <div class="signup-content">
          <div class="signup-img">
            <img src="images/new.jpg" alt="">
            <div class="signup-img-content">
              <h2>Register now </h2>
            </div>
          </div>
          <div class="signup-form">
            <form class="register-form" id="register-form">
              <div class="form-row">
                <div class="form-group">
                  <div class="form-input">
                    <label for="first_name" class="required">First name</label>
                    <input type="text" id="first_name" runat="server" />
                  </div>
                  <div class="form-input">
                    <label for="last_name" class="required">Last name</label>
                    <input type="text" id="last_name" runat="server" />
                  </div>
                  <div class="form-input">
                    <label for="email" class="required">Email</label>
                    <input type="email" id="email" runat="server" />
                  </div>
                  <div class="form-input">
                    <label for="phone_number" class="required">Phone number</label>
                    <input type="number" id="phone_number" runat="server" />
                  </div>
                  <div class="form-input">
                    <label for="password" class="required">Password</label>
                    <input type="password" id="password" runat="server" />
                  </div>
                  <div class="form-input">
                    <label for="confirm" class="required">Confirm Password</label>
                    <input type="password" id="confirm" runat="server" />
                  </div>
                </div>

                <div class="form-group">
                  <div class="form-select">
                    <div class="label-flex">
                      <label><u>Address Information</u></label>
                    </div>
                  </div>

                  <div class="form-input">
                    <label for="AddressLine1">Address Line 1</label>
                    <input type="text" id="Add1" runat="server" />
                  </div>
                  <div class="form-input">
                    <label for="AddressLine2">Address Line 2</label>
                    <input type="text" id="Add2" runat="server" />
                  </div>
                  <div class="form-input">
                    <label for="City">City</label>
                    <input type="text" id="City" runat="server" />
                  </div>
                  <div class="form-input">
                    <label for="Province">Province</label>
                    <input type="text" id="Prov" runat="server" />
                  </div>
                  <div class="form-input">
                    <label for="ZipCode">Zip Code</label>
                    <input type="text" id="Zip" runat="server" />
                  </div>
                </div>
              </div>

              <br />
              <form class="form-submit" runat="server">
                <asp:Button type="submit" value="Submit" class="submit" ID="submit" name="submit" runat="server"
                  Text="Register" OnClick="submit_Click" />
              </form>
              <br />
              <br />

            </form>
          </div>
        </div>
      </div>

    </div>
  </div>
  <!-- JS -->
  <script src="js/main.js"></script>
</asp:Content>