<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="user-signup.aspx.cs" Inherits="usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

   <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css"/>
   <link rel="stylesheet" href="css/style.css"/>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <!-- ########## START: Login Form ########## -->
     <div class="main">
        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form register-form" id="register-form">
                        <h2 class="form-title">Sign up</h2>
                            
                       
                        <div class="form-group">                       
                                 
                            <asp:Textbox id="txtname" runat="server" type="text" class="form-control border-light input-h-42"
                                placeholder="Full name"></asp:Textbox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" 
                        ValidationGroup="vg1" ErrorMessage="Admin id blank" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Textbox id="txtemail" runat="server" type="text" class="form-control border-light input-h-42"
                                placeholder="Email"></asp:Textbox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" 
                        ValidationGroup="vg1" ErrorMessage="Admin id blank" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                            </div>
                        
                            <div class="form-group">
                                 <asp:Textbox  id="txtpassword" runat="server" type="password" class="form-control input-h-42"
                                    placeholder="Password" ></asp:Textbox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpassword" 
                                    ValidationGroup="vg1" ErrorMessage="Password is blank" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                 <asp:Textbox  id="txtconfirmpassword" runat="server" type="password" class="form-control input-h-42"
                                    placeholder="Confirm Password" ></asp:Textbox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtconfirmpassword" 
                                    ValidationGroup="vg1" ErrorMessage="Password is blank" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                            </div>
                             <div class="form-group">
                                 <asp:Textbox  id="txtmobile" runat="server" type="password" class="form-control input-h-42"
                                    placeholder="Confirm Password" ></asp:Textbox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtmobile" 
                                    ValidationGroup="vg1" ErrorMessage="mobile is blank" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <asp:button id="btnsubmit" causesvalidation="true" ValidationGroup="vg1" runat="server" onclick="btnsubmitclick" Text="Submit" class="btn btn-primary waves-primary btn-md w-50"></asp:button>
                            </div>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images/signup-image.jpg" alt="sing up image"/></figure>
                        <a href="#" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>
         </div>
</asp:Content>

