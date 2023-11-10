<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <!-- Link Swiper's CSS -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
    />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
    />

    <!-- Demo styles -->
    <style>

      html,
      body {
        position: relative;
        height: 100%;
      }

      body {
        background: #eee;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color: #000;
        margin: 0;
        padding: 0;
      }

      .swiper {
        width: 100%;
        height: 100%;
      }

      .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 23rem;
        width: 30rem;
      }

      .swiper-slide img {
        display: block;
        width: 100%;
        height: 100%;
      }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="main-slider"> <!-- Slider -->
              <div id="home-slider" class="owl-carousel owl-theme">
                  <div class="item">
                      <img src="images/slider-1.jpg" alt="slide-1" class="img-responsive">
                      <div class="slider-desc">
                          <div class="container">
                              <div class="row">
                                  <div class="col-md-6">
                                      <div class="slide-offers-left">
                                          <div class="slide-offers-title"><span>Men’s</span><br/>FASHION</div>
                                          <p>New & Fvhresh collection<br/>arraival in believe store</p>
                                          <a href="" class="btn btn-blue">Shop now</a>
                                      </div>
                                  </div>
                                  <div class="col-md-6">
                                       <div class="slide-offers-right">
                                          <div class="slide-offers-title"><span>Women’s</span><br/>FASHION</div>
                                          <p>New & Fvhresh collection<br/>arraival in believe store</p>
                                          <a href="" class="btn btn-magenta">Shop now</a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
                  <div class="item">
                      <img src="images/slider-2.jpg" alt="slide-2" class="img-responsive">
                      <div class="slider-desc">
                          <div class="container">
                              <div class="row">
                                  <div class="col-md-6">
                                      <div class="slide-offers-left">
                                          <div class="slide-offers-title"><span>50% Price cut</span><br/>for online order</div>
                                          <p>New & Fvhresh collection<br/>arraival in believe store</p>
                                          <a href="" class="btn btn-blue">Shop now</a>
                                      </div>
                                  </div>
                                  <div class="col-md-6">
                                       
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div> <!-- Slider -->
        <div class="container">
            <div class="row">
                <asp:GridView ID="GridView1" CssClass="row" runat="server" AutoGenerateColumns="False" >
                    <RowStyle CssClass="col-md-3"/>
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <div class="single-latest-image">
                                    <a href="#">
                                        <asp:Image ID="Image1" Width="236" Height="234" runat="server" ImageUrl='<%# Eval("image") %>'/>
                                    </a>
                                </div>
                                <div class="single-latest-text">
                                    <h3><a href="#"><%# Eval("productname") %></a></h3>
                                        <h3><a href="#"><%# Eval("price") %></a></h3>
                                                   
                                    <p style="text-align:justify; padding-right:5px;" id="aboutdata"><%# Eval("category") %></p>
                                    <%--<a href="center.aspx?name=<%# Eval("pagelink") %>" class="button-default">Add to cart</a>--%>
                                </div>
                            </ItemTemplate>
                            <ItemStyle CssClass="single-latest-item"/>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <script type="text/javascript">
                    document.getElementById("aboutdata").innerHTML = document.getElementById("aboutdata").innerHTML.slice(0, 150);
                </script>           
            </div>
        </div>

     <div class="container-fluid">
      <div class="swiper mySwiper">
        <div class="swiper-wrapper">
          <div class="swiper-slide"><img src="images/det-3.jpg"/></div>
          <div class="swiper-slide"><img src="images/det-3.jpg"/></div>
          <div class="swiper-slide"><img src="images/det-3.jpg"/></div>
          <div class="swiper-slide"><img src="images/det-3.jpg"/></div>
          <div class="swiper-slide"><img src="images/det-3.jpg"/></div>
          <div class="swiper-slide"><img src="images/det-3.jpg"/></div>
          <div class="swiper-slide"><img src="images/det-3.jpg"/></div>
          <div class="swiper-slide"><img src="images/det-3.jpg"/></div>
          <div class="swiper-slide"><img src="images/det-3.jpg"/></div>
        </div>

        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-pagination"></div>
      </div>
    </div>

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper(".mySwiper", {
            slidesPerView: 4,
            spaceBetween: 10,
            freeMode: true,

            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev"
            }
        });
    </script>

     

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/library.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.raty.js"></script>
    <script src="js/ui.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.selectbox-0.2.js"></script>
    <script src="js/theme-script.js"></script>

   
</asp:Content>

