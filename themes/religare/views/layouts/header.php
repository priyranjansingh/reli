<div class="top-bar-light">            
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 hidden-xs">
                        
                    </div>
                    <div class="col-sm-7 text-right">
                        <ul class="list-inline top-dark-right">                      
                            
                            <li><i class="fa fa-lock"></i> Welcome <?php echo Yii::app()->user->name  ?></a>
                            </li>
                            <li class="dropdown"><i class="fa fa-user"></i><a href="#" class="dropdown-toggle" data-toggle="dropdown"> My Account <i class="fa fa-caret-down"></i></a>
                                <ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
                                <li>
                                    <a tabindex="-1" href="#">Create Policy</a>
                                </li>
                                <li><a href="#">Check</a></li>
                                <li><a href="#">Credits Available<span class="label label-default" style="margin-left:15px">1000000</span></a> </li>
                                
                                    <li class="dropdown-submenu">
                                    <a tabindex="-1" href="#">Commission</a>
                                    
                                </li>
                                </li>
                                <li><a href="<?php echo Yii::app()->baseUrl; ?>/policy/quotation">Quotation</a></li>
                                <li><a href="#">Proposals</a></li>
                                <li><a href="#">View Profile</a></li>
                                <li><a href="<?php echo Yii::app()->baseUrl; ?>/user/logout">Logout</a></li>
                                
                            </ul>

                            </li>
                            <li><a class="topbar-icons" href="#"><span><i class="fa fa-search top-search"></i></span></a></li>
                        </ul>
                        <div class="search">
                            <form role="form">
                                <input type="text" class="form-control" autocomplete="off" placeholder="Write something and press enter">
                                <span class="search-close"><i class="fa fa-times"></i></span>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div><!--top-bar end here-->
        <!--navigation -->
        <div class="navbar navbar-default navbar-static-top yamm sticky" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="<?php echo $baseUrl;?>/img/logo1.png" alt="ASSAN"></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dashboard</a>
                            
                        </li>
                        <!--menu home li end here-->
                        <li class="dropdown ">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown">Explore</a>
                            
                        <!--menu Portfolio li end here-->
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Availability</a>
                            
                        </li>
                        <!--menu blog li end here-->
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Accounts</a>
                            
                        </li>
                        <!--menu pages li end here-->

                        
                        <!--mega menu end-->    

                        <!--                        <li class="dropdown">
                                                    <a href="#" class=" dropdown-toggle" data-toggle="dropdown"><i class="fa fa-lock"></i> Sign In</a>
                                                    <div class="dropdown-menu dropdown-menu-right dropdown-login-box animated fadeInUp">
                                                        <form role="form">
                                                            <h4>Signin</h4>
                        
                                                            <div class="form-group">
                                                                <div class="input-group">
                                                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                                                    <input type="text" class="form-control" placeholder="Username">
                                                                </div>
                                                                <br>
                                                                <div class="input-group">
                                                                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                                                    <input type="password" class="form-control" placeholder="Password">
                                                                </div>
                                                                <div class="checkbox pull-left">
                                                                    <label>
                                                                        <input type="checkbox"> Remember me
                                                                    </label>
                                                                </div>
                                                                <a class="btn btn-theme-bg pull-right">Login</a>
                                                                                                        <button type="submit" class="btn btn-theme pull-right">Login</button>                 
                                                                <div class="clearfix"></div>
                                                                <hr>
                                                                <p>Don't have an account! <a href="#">Register Now</a></p>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </li> menu login li end here-->
                    </ul>
                </div><!--/.nav-collapse -->
            </div><!--container-->
        </div><!--navbar-default-->
        
        <div class="divide40"></div>