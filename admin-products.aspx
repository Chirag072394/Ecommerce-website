<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="admin-products.aspx.cs" Inherits="adminproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script type="text/javascript">
        function readURL(input) {
            if (input.files && input.files[0]) {

                var reader = new FileReader();
                
                reader.onload = function (e) {
                    $('.file-upload-image').attr('src', e.target.result);
                    $('.image-upload-wrap').show();
                    $('.image-title').html(input.files[0].name);
                };

                reader.readAsDataURL(input.files[0]);

            } else {
                $('.image-upload-wrap').hide();
            }
        }
        function removeUpload() {
            $('.file-upload-input').replaceWith($('.file-upload-input').clone());
            $('.image-upload-wrap').hide();
        }
</script>
    <style>

     /*Image*/
    .file-upload {
		background-color: #ffffff;
		width: 100%;
		margin: 0 auto;
		padding: 2px;
	}

	.file-upload-btn{
		width: 100%;
		padding: 1px;
		text-transform: uppercase;
		color: #fff;
		background-color: #ff6800;
		border: 2px solid #ff6800;
	}
	.file-upload-input{
		display: none;
	}

	.image-upload-wrap {
		margin-top: 2px;
		border: 2px solid #ff6800;
	}
	.image-title-wrap {
		padding: 1px;
		background-color: #ff6800;
		color: #ffffff; 
	}

	.file-upload-image{
		display: block;
        height:200px;
		max-height: 200px;
		width: 100%;
        max-width:100%;
		padding: 2px;
	}

	.remove-image {
		float: right;
		background-color: transparent;
		border: 1px solid #ffffff;
		color: #ffffff;
		font-weight: 50;
	}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="admin-products">               
   <div class="row">
        <div class="col-md-12" style="height:60px;"></div>
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <div class="panel panel-primary">
                <div class="panel-heading" style="color:#fff; font-size:16pt;">Products</div>
                <div class="panel-body" style="background-color:white;">
                    <div class="form-group">
                        <label for="name">Product Name</label>
                        <asp:TextBox id="txtproductname" runat="server" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtproductname" 
                        ValidationGroup="vg1" ErrorMessage="Name can't be blank" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="name">Category</label>
                        <div class="form-group" style="text-align:left;">
                    
                    <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="false" class="form-control">
                        <asp:ListItem Text="Select">Select</asp:ListItem>
                        <asp:ListItem>Men</asp:ListItem>
                        <asp:ListItem>Women</asp:ListItem>
                        <asp:ListItem>Kids</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlcategory" 
                        ValidationGroup="vg1" ErrorMessage="Category Name is required" InitialValue="Select" Display="Dynamic" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </div>
                         <div class="form-group">
                       <div class="image-upload-wrap">
			                            <div class="image-title-wrap" style="display:none"><span class="image-title">Uploaded Image</span><button type="button" onclick="removeUpload()" class="remove-image">X</button></div>
			                            <asp:Image id="apllicantimg" class="file-upload-image" runat="server" alt="Image"/>
		                            </div>
		                           <button class="file-upload-btn" type="button" onclick="$('.file-upload-input').trigger( 'click' )">Add Image</button>
		                          <asp:FileUpload class="file-upload-input" ID="fileuploadimg" runat="server" type='file' onchange="readURL(this);" accept="image/*" style="display:none"/>
                                 <asp:Label ID="lblmsg" runat="server" Text="Label" Visible="False"></asp:Label>
                       </div>
                    <div class="form-group">
                        <label for="name">Price</label>
                        <asp:TextBox id="txtprice" runat="server"  class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtprice" 
                        ValidationGroup="vg1" ErrorMessage="price can't blank" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                     <div class="form-group">
                        <label for="name">Quantity</label>
                        <asp:TextBox id="txtquantity" runat="server"  class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtquantity" 
                        ValidationGroup="vg1" ErrorMessage="qunatity can't blank" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group" style="text-align:center;">
                        <asp:Button ID="btnadd" class="btn btn-primary btn-lg" causevalidation="true"  runat="server" Text="ADD" onclick="RecordNew" />
                        <asp:Button ID="btnsave" class="btn btn-primary btn-lg" causesvalidation="true" ValidationGroup="vg1" runat="server" onclick="RecordSave" Text="Save" />
                        <asp:Button ID="btncancel" class="btn btn-primary btn-lg" causesvalidation="true" runat="server" Text="Cancel" />
                    </div>
                </div>
            </div>
        </div>
    </div>       
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class ="col-md-12"></div>
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <div class="form-group" style="text-align:center;">
                <asp:CheckBox ID="chksearch" runat="server" Text="Search Admission Enquiry By Name:" Checked="false"/>
                <asp:TextBox ID="txtsearch" runat="server" Class="form-control"/><br />
                <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="RecordSearch" Class="btn btn-primary btn-lg" />
            </div>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
         <div class="col-md-2"></div>
         <div class="col-md-8">
             <asp:GridView ID="GridView1" runat="server" AllowPaging="True"  style="margin-top:20px; margin-left:0px; width:100%;"
                AllowSorting="True" AutoGenerateColumns="false"  AutoGenerateEditButton="false" 
                CellPadding="4" DataKeyNames="id" ForeColor="#333333" GridLines="None" 
                PageSize="25" Height="40px" RowStyle-Height="25" 
                OnRowCommand="GridView1_RowCommand1" BorderColor="#CCCCCC" BorderStyle="Solid" 
                BorderWidth="1px" onpageindexchanging="GridView1_PageIndexChanging" 
                onrowdeleting="GridView1_RowDeleting">
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#EFF3FB" />
                <EditRowStyle BackColor="#2FF1BF" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Height="18px" Font-Size="10pt" HorizontalAlign="Center"/>
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Id" Visible="false">
                        <ItemTemplate> 
                            <%# Eval("id") %>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" Width="0%"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ProductName">
                        <ItemTemplate>
                            <%# Eval("productname") %>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" Width="20%"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                            <%# Eval("category") %>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" Width="15%"></ItemStyle>
                    </asp:TemplateField>
                
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <%#Eval("price") %>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" Width="10%"></ItemStyle>
                    </asp:TemplateField>
    
                    <asp:TemplateField HeaderText="Quantity">
                         <ItemTemplate>
                            <%#Eval("quantity") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate> 
                            <asp:LinkButton ID="lbED" runat="server" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "id") %>'  CommandName="EditData"   Text="Edit"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <span onclick="return confirm('Are you sure to Delete?')">
                            <asp:LinkButton ID="lnBD" runat="server" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "id") %>' CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            </div> 
            <div class ="col-md-2"></div>
        </div>
</section>
</asp:Content>

