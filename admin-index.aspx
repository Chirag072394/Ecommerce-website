<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="admin-index.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <header class="header fixed-top d-flex align-items-center">
        <!-- ########## START: HEAD PANEL ########## -->
        <div class="br-header d-flex w-100">
            <a id="add-menu" class="la la-navicon d-flex d-xl-none align-items-center justify-content-center"></a>
            <div class="br-header-left">
                <a href="javascript:;" class="searchbar-toggle la la-search d-flex d-md-none"></a>
                <div class="searchbar d-flex align-items-center pl-3">
                    <i class="la la-search"></i>
                    <input class="form-control border-0 pl-2" type="search" placeholder="Search...">
                </div>
            </div>
            <!-- br-header-left -->
            <div class="br-header-right ml-auto">
                <nav class="nav">
                    <div class="dropdown">
                        <a href="" class="nav-link position-relative dropdown-toggle waves-effect waves-primary" id="dropdownMSG" data-toggle="dropdown">
                            <i class="la la-envelope-o"></i>
                            <span class="badge badge-accent">2</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-header py-0" aria-labelledby="dropdownMSG">
                            <div class="dropdown-menu-label">
                                <label class="mb-0">Messages</label>
                                <button type="button" class="btn btn-primary btn-sm waves-effect waves-primary">View
									all</button>
                            </div>
                            <!-- d-flex -->
                            <div class="dropdown-divider my-0"></div>
                            <div class="media-list">
                                <!-- loop starts here -->
                                <a href="" class="media-list-link">
                                    <div class="media d-flex align-items-center py-2 px-2">
                                        <img src="assets/image/img1.jpg" width="50" class="rounded-circle" alt="">
                                        <div class="media-body pl-3">
                                            <div class="d-flex align-items-center justify-content-between mb-2">
                                                <strong>Donna Seay</strong>
                                                <span>2 minutes ago</span>
                                            </div>
                                            <!-- d-flex -->
                                            <p class="mb-0">A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring.</p>
                                        </div>
                                    </div>
                                    <!-- media -->
                                </a>
                                <!-- loop ends here -->
                                <!-- loop starts here -->
                                <a href="" class="media-list-link">
                                    <div class="media d-flex align-items-center py-2 px-2">
                                        <img src="assets/image/img1.jpg" width="50" class="rounded-circle" alt="">
                                        <div class="media-body pl-3">
                                            <div class="d-flex align-items-center justify-content-between mb-2">
                                                <strong>Donna Seay</strong>
                                                <span>2 minutes ago</span>
                                            </div>
                                            <!-- d-flex -->
                                            <p class="mb-0">A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring.</p>
                                        </div>
                                    </div>
                                    <!-- media -->
                                </a>
                                <!-- loop ends here -->
                                <!-- loop starts here -->
                                <a href="" class="media-list-link">
                                    <div class="media d-flex align-items-center py-2 px-2">
                                        <img src="assets/image/img1.jpg" width="50" class="rounded-circle" alt="">
                                        <div class="media-body pl-3">
                                            <div class="d-flex align-items-center justify-content-between mb-2">
                                                <strong>Donna Seay</strong>
                                                <span>2 minutes ago</span>
                                            </div>
                                            <!-- d-flex -->
                                            <p class="mb-0">A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring.</p>
                                        </div>
                                    </div>
                                    <!-- media -->
                                </a>
                                <!-- loop ends here -->
                            </div>
                            <!-- media-list -->
                        </div>
                        <!-- dropdown-menu -->
                    </div>
                    <!-- dropdown -->
                    <div class="dropdown">
                        <a href="" class="nav-link position-relative dropdown-toggle waves-effect waves-primary" id="dropdownNOTY" data-toggle="dropdown">
                            <i class="la la-bell"></i>
                            <span class="badge badge-accent ">1</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-header py-0" aria-labelledby="dropdownNOTY">
                            <div class="dropdown-menu-label">
                                <label class="mb-0">NOTIFICATIONS </label>
                                <button type="button" class="btn btn-primary btn-sm waves-effect waves-light">View
									all</button>
                            </div>
                            <!-- d-flex -->
                            <div class="dropdown-divider my-0"></div>
                            <div class="media-list">
                                <!-- loop starts here -->
                                <a href="" class="media-list-link">
                                    <div class="media d-flex align-items-center py-2 px-2">
                                        <img src="assets/image/img1.jpg" width="50" class="rounded-circle" alt="">
                                        <div class="media-body pl-3">
                                            <div class="d-flex align-items-center justify-content-between mb-1">
                                                <strong>Donna Seay</strong>
                                            </div>
                                            <!-- d-flex -->
                                            <p class="mb-0">A wonderful serenity has taken possession of </p>
                                        </div>
                                    </div>
                                    <!-- media -->
                                </a>
                                <!-- loop ends here -->
                                <!-- loop starts here -->
                                <a href="" class="media-list-link">
                                    <div class="media d-flex align-items-center py-2 px-2">
                                        <img src="assets/image/img1.jpg" width="50" class="rounded-circle" alt="">
                                        <div class="media-body pl-3">
                                            <div class="d-flex align-items-center justify-content-between mb-1">
                                                <strong>Jaymin Modi</strong>
                                            </div>
                                            <!-- d-flex -->
                                            <p class="mb-0">A wonderful serenity has taken possession of my entire.
                                            </p>
                                        </div>
                                    </div>
                                    <!-- media -->
                                </a>
                                <!-- loop ends here -->
                                <!-- loop starts here -->
                                <a href="" class="media-list-link">
                                    <div class="media d-flex align-items-center py-2 px-2">
                                        <img src="assets/image/img1.jpg" width="50" class="rounded-circle" alt="">
                                        <div class="media-body pl-3">
                                            <div class="d-flex align-items-center justify-content-between mb-1">
                                                <strong>Zahir Patel</strong>
                                            </div>
                                            <!-- d-flex -->
                                            <p class="mb-0">A wonderful serenity has taken possession.</p>
                                        </div>
                                    </div>
                                    <!-- media -->
                                </a>
                                <!-- loop ends here -->
                            </div>
                            <!-- media-list -->
                        </div>
                        <!-- dropdown-menu -->
                    </div>
                    <!-- dropdown -->
                    <div class="dropdown">
                        <a href="" class="nav-link-profile d-flex dropdown-toggle" data-toggle="dropdown" id="dropdownprofile">
                            <img src="assets/image/img3.jpg" class="rounded" alt="" width="50">
                            <span class="logged-name px-3">Zahir Patel <br><small class="pt-3">Founder</small></span>
                            <i class="profile-dropdown la la-caret-square-o-down"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-header dropdown-menu-user" aria-labelledby="dropdownprofile">
                            <div class="text-center">
                                <a href=""><img src="assets/image/img3.jpg" width="80" class="rounded-circle" alt=""></a>
                                <h6 class="logged-fullname font-weight-bold mt-2">Zahir Patel</h6>
                                <p class="my-0">youremail@domain.com</p>
                            </div>
                            <hr>
                            <ul class="list-unstyled user-profile-nav">
                                <li><a href="javascript:;" class=" waves-effect waves-light"><i class="la la-user"></i>
										Edit Profile</a></li>
                                <li><a href="javascript:;" class=" waves-effect waves-light"><i class="la la-cog"></i>
										Settings</a></li>
                                <li><a href="javascript:;" class=" waves-effect waves-light"><i
											class="la la-download"></i> Downloads</a></li>
                                <li><a href="javascript:;" class=" waves-effect waves-light"><i
											class="la la-star-o"></i> Favorites</a></li>
                                <li><a href="javascript:;" class=" waves-effect waves-light"><i class="la la-file"></i>
										Collections</a></li>
                                <li><a href="javascript:;" class=" waves-effect waves-light"><i
											class="la la-power-off"></i> Sign Out</a></li>
                            </ul>
                        </div>
                        <!-- dropdown-menu -->
                    </div>
                    <!-- dropdown -->
                </nav>
            </div>
            <!-- br-header-right -->
        </div>
        <!-- br-header -->
        <!-- ########## END: HEAD PANEL ########## -->
    </header>
     <!----======= Start Component =======---->
            <div class="pagetitle">
                <h4>Component</h4>
            </div>
            <div class="row">
                <div class="col-12 col-md-6 col-lg-3 mb-5 mb-lg-0">
                    <div class="card">
                        <div class="card-body">
                            <h2 class="text-secondary font-weight-bold mb-2">227+</h2>
                            <p class="mb-0">Uploaded Photos</p>
                        </div>
                        <canvas id="UploadedPhotos" style="width: 100%;height: 80px;"></canvas>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-3 mb-5 mb-lg-0">
                    <div class="card">
                        <div class="card-body">
                            <h2 class="text-secondary font-weight-bold mb-2">227+</h2>
                            <p class="mb-0">Downloaded Photos</p>
                        </div>
                        <canvas id="DownloadedPhotos" style="width: 100%;height: 80px;"></canvas>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="card">
                        <div class="card-body">
                            <h2 class="text-secondary font-weight-bold mb-2">127+</h2>
                            <p class="mb-0">Sold</p>
                        </div>
                        <canvas id="Sold" style="width: 100%;height: 80px;"></canvas>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="card">
                        <div class="card-body">
                            <h2 class="text-secondary font-weight-bold mb-2">12+</h2>
                            <p class="mb-0">Pending Payment</p>
                        </div>
                        <canvas id="PendingPayment" style="width: 100%;height: 80px;"></canvas>
                    </div>
                </div>
            </div>
            <!----======= End Component =======---->



</asp:Content>

