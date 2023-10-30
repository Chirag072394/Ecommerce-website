<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin--login.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
    <meta content='IE=edge' http-equiv=X-UA-Compatible>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>MS Admin Panel</title>
    <link rel="shortcut icon" type="image/png" href="#"/>

    <!-- Core Css -->
    <link rel="stylesheet" type="text/css" href="assets/css/datatables.min.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/line-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/jquery.mCustomScrollbar.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-slider.css"/>
    <!-- Custom Css -->
    <link rel="stylesheet" type="text/css" href="assets/css/style.min.css"/>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
          <!-- ########## START: Login Form ########## -->
       <form id="form222" runat="server">
    <section class="login-wrapper d-flex align-content-center justify-content-center p-3 flex-wrap">
        <div class="login-form bg-white p-3 p-lg-5 rounded">
            <div class="row">
                <div class="col-12 col-lg-6 d-none d-lg-flex pr-lg-2">
                    <img src="assets/image/login-mockup.svg" alt=""/>
                </div>
                <div class="col-12 col-lg-6 pl-lg-2">
                    <div class="pagetitle mb-4">
                        <h2>ADMIN LOGIN</h2>
                    </div>
                        <div class="form-group mb-4">
                            <label for="name">Admin id</label>
                            <asp:Textbox id="txtadmin" runat="server" type="text" class="form-control border-light input-h-42"
                                placeholder="john.doe@domain.com"></asp:Textbox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtadmin" 
                        ValidationGroup="vg1" ErrorMessage="Admin id blank" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group mb-4">
                            <label for="name">Password</label>
                            <div class="input-group border border-light">
                                <asp:Textbox  id="txtpassword" runat="server" type="password" class="form-control input-h-42"
                                    placeholder="Password" ></asp:Textbox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" 
                                    ValidationGroup="vg1" ErrorMessage="Password is blank" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <a href="forgot.html" class="text-primary btn-link">Forgot password?</a>
                        </div>
                        <div class="form-group">
                        <asp:button id="btnlogin" causesvalidation="true" ValidationGroup="vg1" runat="server" onclick="btnloginclick" Text="Login" class="btn btn-primary waves-primary btn-md w-50"></asp:button>
                       </div>
                  </div>
            </div>
        </div>
    </section>

       </form>
    <!-- ########## END: Login Form ########## -->
<script src="assets/scripts/jquery.min.js"></script>
<script src="assets/scripts/popper.min.js"></script>
<script src="assets/scripts/bootstrap-slider.min.js"></script>
<script src="assets/scripts/bootstrap.min.js"></script>
<script src="assets/scripts/bootstrap.bundle.min.js"></script>
<script src="assets/scripts/bootstrap-select.min.js"></script>
<script src="assets/scripts/bootstrap-tooltip-custom-class.js"></script>
<script src="assets/scripts/jquery.mCustomScrollbar.js"></script>
<script src="assets/scripts/datatables.min.js"></script>
<script src="assets/scripts/ripple.min.js"></script>
<script src="assets/scripts/custome.js"></script>

</body>
</html>
