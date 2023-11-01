<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
              <div class="newest">
                  <div class="container">
                      <div class="newest-content">
                          <div class="newest-tab">
                              <ul id="myTab" class="nav nav-tabs newest" role="tablist">
                                  <li role="presentation" class="active">
                                      <a href="#1" id="cat-1" role="tab" data-toggle="tab" aria-controls="1" aria-expanded="true">Featured</a>
                                  </li>
                                  <li role="presentation">
                                      <a href="#2" role="tab" id="cat-2" data-toggle="tab" aria-controls="2">New Arrivals</a>
                                  </li>
                                  <li role="presentation">
                                      <a href="#3" role="tab" id="cat-3" data-toggle="tab" aria-controls="3">Best Seller</a>
                                  </li>
                              </ul>
                              
                              
                              <div id="myTabContent" class="tab-content">
                                  <div role="tabpanel" class="tab-pane fade in active" id="1" aria-labelledby="cat-1">
                                      <div class="row clearfix">
                                          <div class="col-md-3 prdct-grid">
                                              <div class="product-fade">
													<div class="product-fade-wrap">
                                                        <div id="product-image" class="owl-carousel owl-theme">
                                                            <div class="item"><img src="images/p-1.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-2.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-3.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-4.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-5.jpg" alt="" class="img-responsive"></div>
                                                        </div>
														<div class="product-fade-ct">
                                                            <div class="product-fade-control">
                                                                <div class="to-left">
                                                                    <a href=""><i class="fa fa-heart"></i></a>
                                                                    <a href=""><i class="fa fa-retweet"></i></a>
                                                                    <a href=""><i class="fa fa-search"></i></a>
                                                                </div>
                                                                <div class="to-right">
                                                                    <div id="product-control" class="owl-carousel owl-theme clearfix">
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                    </div>
                                                                </div>
                                                                <div class="clearfix"></div>
                                                                <a href="" class="btn btn-to-cart"><span class="bag"></span><span>Add To cart</span><div class="clearfix"></div></a>
                                                            </div>
                                                            
														</div>
													</div>
                                              </div>
                                              
                                              <div class="product-name">
                                                  <a href="">Adidas Striped Men's Round Neck T-Shirt</a>
                                              </div>
                                              <div class="star-1"></div>
                                              <div class="product-price">
                                                  <span>$19.00</span> $15.00
                                              </div>
                                          </div>
                                          <div class="col-md-3 prdct-grid">
                                              <div class="product-fade">
													<div class="product-fade-wrap">
                                                        <div id="product-image2" class="owl-carousel owl-theme">
                                                            <div class="item"><img src="images/p-2.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-3.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-4.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-5.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-1.jpg" alt="" class="img-responsive"></div>
                                                        </div>
														<div class="product-fade-ct">
                                                            <div class="product-fade-control">
                                                                <div class="to-left">
                                                                    <a href=""><i class="fa fa-heart"></i></a>
                                                                    <a href=""><i class="fa fa-retweet"></i></a>
                                                                    <a href=""><i class="fa fa-search"></i></a>
                                                                </div>
                                                                <div class="to-right">
                                                                    <div id="product-control2" class="owl-carousel owl-theme">
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        
                                                                    </div>
                                                                </div>
                                                                <div class="clearfix"></div>
                                                                <a href="" class="btn btn-to-cart"><span class="bag"></span><span>Add To cart</span><div class="clearfix"></div></a>
                                                            </div>
                                                            
														</div>
													</div>
                                              </div>
                                              <div class="product-name">
                                                  <a href="">Women's Jeans</a>
                                              </div>
                                              <div class="star-1"></div>
                                              <div class="product-price">
                                                  <span>$19.00</span> $15.00
                                              </div>
                                          </div>
                                          <div class="col-md-3 prdct-grid">
                                              <div class="product-fade">
													<div class="product-fade-wrap">
                                                        <div id="product-image3" class="owl-carousel owl-theme">
                                                            <div class="item"><img src="images/p-3.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-4.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-5.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-1.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-2.jpg" alt="" class="img-responsive"></div>
                                                        </div>
														<div class="product-fade-ct">
                                                            <div class="product-fade-control">
                                                                <div class="to-left">
                                                                    <a href=""><i class="fa fa-heart"></i></a>
                                                                    <a href=""><i class="fa fa-retweet"></i></a>
                                                                    <a href=""><i class="fa fa-search"></i></a>
                                                                </div>
                                                                <div class="to-right">
                                                                    <div id="product-control3" class="owl-carousel owl-theme">
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        
                                                                    </div>
                                                                </div>
                                                                <div class="clearfix"></div>
                                                                <a href="" class="btn btn-to-cart"><span class="bag"></span><span>Add To cart</span><div class="clearfix"></div></a>
                                                            </div>
                                                            
														</div>
													</div>
                                              </div>
                                              <div class="product-name">
                                                  <a href="">Running Shoes</a>
                                              </div>
                                              <div class="star-1"></div>
                                              <div class="product-price">
                                                  <span>$19.00</span> $15.00
                                              </div>
                                          </div>
                                          <div class="col-md-3 prdct-grid">
                                              <div class="product-fade">
													<div class="product-fade-wrap">
                                                        <div id="product-image4" class="owl-carousel owl-theme">
                                                            <div class="item"><img src="images/p-4.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-5.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-1.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-2.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-3.jpg" alt="" class="img-responsive"></div>
                                                        </div>
														<div class="product-fade-ct">
                                                            <div class="product-fade-control">
                                                                <div class="to-left">
                                                                    <a href=""><i class="fa fa-heart"></i></a>
                                                                    <a href=""><i class="fa fa-retweet"></i></a>
                                                                    <a href=""><i class="fa fa-search"></i></a>
                                                                </div>
                                                                <div class="to-right">
                                                                    <div id="product-control4" class="owl-carousel owl-theme">
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        
                                                                    </div>
                                                                </div>
                                                                <div class="clearfix"></div>
                                                                <a href="" class="btn btn-to-cart"><span class="bag"></span><span>Add To cart</span><div class="clearfix"></div></a>
                                                            </div>
                                                            
														</div>
													</div>
                                              </div>
                                              <div class="product-name">
                                                  <a href="">men's Jeans</a>
                                              </div>
                                              <div class="star-1"></div>
                                              <div class="product-price">
                                                  <span>$19.00</span> $15.00
                                              </div>
                                          </div>
                                          
                                          <div class="clearfix"></div>
                                          <div class="col-md-3 prdct-grid">
                                              <div class="product-fade">
													<div class="product-fade-wrap">
                                                        <div id="product-image5" class="owl-carousel owl-theme">
                                                            <div class="item"><img src="images/p-5.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-1.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-2.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-3.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-4.jpg" alt="" class="img-responsive"></div>
                                                        </div>
														<div class="product-fade-ct">
                                                            <div class="product-fade-control">
                                                                <div class="to-left">
                                                                    <a href=""><i class="fa fa-heart"></i></a>
                                                                    <a href=""><i class="fa fa-retweet"></i></a>
                                                                    <a href=""><i class="fa fa-search"></i></a>
                                                                </div>
                                                                <div class="to-right">
                                                                    <div id="product-control5" class="owl-carousel owl-theme">
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        
                                                                    </div>
                                                                </div>
                                                                <div class="clearfix"></div>
                                                                <a href="" class="btn btn-to-cart"><span class="bag"></span><span>Add To cart</span><div class="clearfix"></div></a>
                                                            </div>
                                                            
														</div>
													</div>
                                              </div>
                                              <div class="product-name">
                                                  <a href="">Striped Men's Round Neck T-Shirt</a>
                                              </div>
                                              <div class="star-1"></div>
                                              <div class="product-price">
                                                  <span>$19.00</span> $15.00
                                              </div>
                                          </div>
                                          <div class="col-md-3 prdct-grid">
                                              <div class="product-fade">
													<div class="product-fade-wrap">
                                                        <div id="product-image6" class="owl-carousel owl-theme">
                                                            <div class="item"><img src="images/p-6.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-7.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-8.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-5.jpg" alt="" class="img-responsive"></div>
                                                        </div>
														<div class="product-fade-ct">
                                                            <div class="product-fade-control">
                                                                <div class="to-left">
                                                                    <a href=""><i class="fa fa-heart"></i></a>
                                                                    <a href=""><i class="fa fa-retweet"></i></a>
                                                                    <a href=""><i class="fa fa-search"></i></a>
                                                                </div>
                                                                <div class="to-right">
                                                                    <div id="product-control6" class="owl-carousel owl-theme">
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        
                                                                    </div>
                                                                </div>
                                                                <div class="clearfix"></div>
                                                                <a href="" class="btn btn-to-cart"><span class="bag"></span><span>Add To cart</span><div class="clearfix"></div></a>
                                                            </div>
                                                            
														</div>
													</div>
                                              </div>
                                              <div class="product-name">
                                                  <a href="">Women's Round Neck T-Shirt</a>
                                              </div>
                                              <div class="star-1"></div>
                                              <div class="product-price">
                                                  <span>$19.00</span> $15.00
                                              </div>
                                          </div>
                                          <div class="col-md-3 prdct-grid">
                                              <div class="product-fade">
													<div class="product-fade-wrap">
                                                        <div id="product-image7" class="owl-carousel owl-theme">
                                                            <div class="item"><img src="images/p-7.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-8.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-5.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-6.jpg" alt="" class="img-responsive"></div>
                                                        </div>
														<div class="product-fade-ct">
                                                            <div class="product-fade-control">
                                                                <div class="to-left">
                                                                    <a href=""><i class="fa fa-heart"></i></a>
                                                                    <a href=""><i class="fa fa-retweet"></i></a>
                                                                    <a href=""><i class="fa fa-search"></i></a>
                                                                </div>
                                                                <div class="to-right">
                                                                    <div id="product-control7" class="owl-carousel owl-theme">
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        
                                                                    </div>
                                                                </div>
                                                                <div class="clearfix"></div>
                                                                <a href="" class="btn btn-to-cart"><span class="bag"></span><span>Add To cart</span><div class="clearfix"></div></a>
                                                            </div>
                                                            
														</div>
													</div>
                                              </div>
                                              <div class="product-name">
                                                  <a href="">men's Jeans</a>
                                              </div>
                                              <div class="star-1"></div>
                                              <div class="product-price">
                                                  <span>$19.00</span> $15.00
                                              </div>
                                          </div>
                                          <div class="col-md-3 prdct-grid">
                                              <div class="product-fade">
													<div class="product-fade-wrap">
                                                        <div id="product-image8" class="owl-carousel owl-theme">
                                                            <div class="item"><img src="images/p-8.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-5.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-6.jpg" alt="" class="img-responsive"></div>
                                                            <div class="item"><img src="images/p-7.jpg" alt="" class="img-responsive"></div>
                                                        </div>
														<div class="product-fade-ct">
                                                            <div class="product-fade-control">
                                                                <div class="to-left">
                                                                    <a href=""><i class="fa fa-heart"></i></a>
                                                                    <a href=""><i class="fa fa-retweet"></i></a>
                                                                    <a href=""><i class="fa fa-search"></i></a>
                                                                </div>
                                                                <div class="to-right">
                                                                    <div id="product-control8" class="owl-carousel owl-theme">
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        <div class="item"><div class="bullets"></div></div>
                                                                        
                                                                    </div>
                                                                </div>
                                                                <div class="clearfix"></div>
                                                                <a href="" class="btn btn-to-cart"><span class="bag"></span><span>Add To cart</span><div class="clearfix"></div></a>
                                                            </div>
                                                            
														</div>
													</div>
                                              </div>
                                              <div class="product-name">
                                                  <a href="">Heels</a>
                                              </div>
                                              <div class="star-1"></div>
                                              <div class="product-price">
                                                  <span>$19.00</span> $15.00
                                              </div>
                                          </div>

                                      </div>
                                  </div>
                                  
                                  <div role="tabpanel" class="tab-pane fade" id="2" aria-labelledby="cat-2">
                                      <div class="row">
                                          <div class="col-md-12">
                                              <p>....</p>
                                          </div>
                                      </div>
                                  </div>
                                  
                                  <div role="tabpanel" class="tab-pane fade" id="3" aria-labelledby="cat-3">
                                      <div class="row">
                                          <div class="col-md-12">
                                              <p>....</p>
                                          </div>
                                      </div>
                                  </div>
                                  
                              </div>
                              
                          </div>
                      </div>
                  </div>
              </div>
              
              <div class="content-offers">
                  <div class="container">
                      <div class="ct-offers">
                          <div class="ct-offers-title">Tommy Hilfiger<br/>Women’s</div>
                          <p>The generated Lorem Ipsum is therefore always free from repetition, injected humour</p>
                          <a href="" class="btn btn-blue">Discover more Product</a>
                      </div>
                  </div>
              </div>
              
              <div class="brands">
                  <div class="container">
                      <div class="brands-inner">
                          <div class="brand-title">
                              <span>Brands</span>
                          </div>
                          
                          <div id="slider-home"> <!-- Slider -->
                              <div id="brand-carousel" class="owl-carousel owl-theme">
                                  <div class="item">
                                      <img src="images/brand-2.png" alt="slide-1" class="img-responsive">
                                  </div>
                                  <div class="item">
                                      <img src="images/brand-3.png" alt="slide-1" class="img-responsive">
                                  </div>
                                  <div class="item">
                                      <img src="images/brand-4.png" alt="slide-1" class="img-responsive">
                                  </div>
                                  <div class="item">
                                      <img src="images/brand-1.png" alt="slide-1" class="img-responsive">
                                  </div>
                                  <div class="item">
                                      <img src="images/brand-5.png" alt="slide-1" class="img-responsive">
                                  </div>
                                  <div class="item">
                                      <img src="images/brand-2.png" alt="slide-1" class="img-responsive">
                                  </div>
                                  <div class="item">
                                      <img src="images/brand-3.png" alt="slide-1" class="img-responsive">
                                  </div>
                                  <div class="item">
                                      <img src="images/brand-4.png" alt="slide-1" class="img-responsive">
                                  </div>
                                  <div class="item">
                                      <img src="images/brand-1.png" alt="slide-1" class="img-responsive">
                                  </div>
                                  <div class="item">
                                      <img src="images/brand-5.png" alt="slide-1" class="img-responsive">
                                  </div>
                              </div>
                          </div> <!-- Slider -->
                          
                      </div>
                  </div>
              </div>
              
              
              <div class="rec-blog">
                  <div class="container">
                      <div class="rec-blog-inner">
                          <div class="blog-title">
                              <span>The Blog</span>
                          </div>
                          <div class="row">
                              <div class="col-md-4 blog-ct">
                                  <a href=""><img src="images/rec-1.jpg" alt="" class="img-responsive"></a>
                                  <div class="blog-ct-title">
                                      <a href="">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque !</a>
                                      <span>May 11,2014</span>
                                  </div>
                              </div>
                              <div class="col-md-4 blog-ct">
                                  <a href=""><img src="images/rec-2.jpg" alt="" class="img-responsive"></a>
                                  <div class="blog-ct-title">
                                      <a href="">Voluptatem accusantium doloremque</a>
                                      <span>May 11,2014</span>
                                  </div>
                              </div>
                              <div class="col-md-4 blog-ct">
                                  <a href=""><img src="images/rec-3.jpg" alt="" class="img-responsive"></a>
                                  <div class="blog-ct-title">
                                      <a href="">Voluptatem accusantium doloremque</a>
                                      <span>May 11,2014</span>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              
          </div> <!-- Content -->
     

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

