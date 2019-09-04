<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master1.Master" CodeBehind="Login.aspx.cs" Inherits="Farmers_Field.Login" %>

<asp:Content ContentPlaceHolderId="body" runat="server"> 
  <div id="page">
    <div class="main">
      <div class="container">
        <div class="signup-content">
          <div class="signup-img">
            <img src="images/new.jpg" alt="">
            <div class="signup-img-content">
              <h2>Login </h2>
            </div>
          </div>
          <div class="signup-form">
            <form class="register-form" id="register-form">
              <div class="form-row">
                <div class="form-group">
                  <div class="form-input">
                    <label for="e-mail" class="required">E-mail</label>
                    <input type="text" id="first_name" runat="server" />
                  </div>
                  <div class="form-input">
                    <label for="password" class="required">Password</label>
                    <input type="text" id="password" runat="server" />
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