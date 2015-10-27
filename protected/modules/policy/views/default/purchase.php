<div class="divide40"></div>

<div class="container">
            <div class="row">  
                <div class="col-md-4 col-sm-12">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i>Your Quote summery</div>
                        <!-- /.panel-heading -->
                        <div class="panel-body" style="height: 504px;">
                            <div class="list-group">
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-check-square"></i> Plan
                                    <span class="pull-right text-muted small"><?php echo $parent->name; ?>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-check-square"></i> Plan Type
                                    <span class="pull-right text-muted small"><?php echo $plan->name; ?>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-check-square"></i> Geographical 
                                    <span class="pull-right text-muted small"><?php echo $region->region; ?>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-check-square"></i> Age
                                    <span class="pull-right text-muted small"><?php echo $age; ?>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-check-square"></i> Policy Tenure
                                    <span class="pull-right text-muted small"><?php echo $tenure; ?>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-check-square"></i> No of travellers 
                                    <span class="pull-right text-muted small">1
                                    </span>
                                </a>
                                
                            </div>
                            <!-- /.list-group -->
                            <div class="panel-footer">Sum Insured - INR <?php echo $amount; ?></div>
                            <div class="panel-footer footergreen">Your premium -INR <?php echo $premium; ?></div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                
                </div>

                <div class="col-md-8 col-sm-12">
                    
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i>Proposers Details</div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">

                            <div class="ibox-content">
                            <form role="form" class="form-inline" id="proposer_form" method="POST" action="<?php echo base_url().'/policy/process'; ?>">
                                <input type="hidden" value="<?php echo $model->id; ?>" name="PolicyDetails[policy]">
                                <div class="form-group">
                                    <label for="title" class="sr-only">Title</label>
                                    <select class="form-control m-b" id="title" name="PolicyDetails[title]">
                                        <option>title</option>
                                        <option value="mr">Mr.</option>
                                        <option value="mrs">Mrs.</option>
                                        <option value="miss">Miss</option>
                                        <option value="mst">Master</option>
                                        <option value="dr">Dr.</option>
                                    </select>
                                </div>
                                <div class="col-md-4 col-sm-12 marginpadding0">
                                <div class="form-group">
                                    <label for="first_name" class="sr-only">First Name</label>
                                    <input type="text" placeholder="First Name" id="first_name" name="PolicyDetails[first_name]" class="form-control">
                                </div>
                                </div>
                                <div class="col-md-4 col-sm-12 marginpadding0">
                                <div class="form-group">
                                    <label for="last_name" class="sr-only">Last Name</label>
                                    <input type="text" placeholder="Last Name" id="last_name" name="PolicyDetails[last_name]" class="form-control">
                                </div>
                                </div>
                                <div class="col-md-4 col-sm-12 marginpadding0">
                                <div class="form-group">
                                    <label for="dob" class="sr-only">DOB dd/mm/yyyy</label>
                                    <input type="text" placeholder="DOB dd/mm/yyyy"  name="PolicyDetails[dob]" id="dob" class="form-control">
                                </div>
                                </div>
                                <div class="form-group">
                                    <label for="mobile" class="sr-only">Mobile</label>
                                    <input type="text" placeholder="Mobile No." id="mobile" name="PolicyDetails[mobile]" class="form-control">
                                </div>
                                <div class="col-md-6 col-sm-12 marginpadding0">
                                    <div class="form-group">
                                        <label for="address_line_1" class="sr-only">Address Line 1</label>
                                        <input type="text" placeholder="Address Line 1" name="PolicyDetails[address_line_1]" id="address_line_1" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12 marginpadding0">
                                <div class="form-group">
                                    <label for="address_line_2" class="sr-only">Address Line 2</label>
                                    <input type="text" placeholder="Address Line 2" name="PolicyDetails[address_line_2]" id="address_line_2" class="form-control">
                                </div>
                                </div>

                                <div class="col-md-4 col-sm-12 marginpadding0">
                                <div class="form-group">
                                    <label for="email" class="sr-only">Email</label>
                                    <input type="email" placeholder="Email" id="email" name="PolicyDetails[email]" class="form-control">
                                </div>
                                </div>
                                <div class="col-md-4 col-sm-12 marginpadding0">
                                <div class="form-group">
                                    <label for="nominee" class="sr-only">Nominee</label>
                                    <input type="text" placeholder="Nomini Name" id="nominee" name="PolicyDetails[nominee]" class="form-control">
                                </div>
                                </div>
                                <div class="col-md-4 col-sm-12 marginpadding0">
                                <div class="form-group">
                                    <label for="pin_code" class="sr-only">Pin Code</label>
                                    <input type="text" placeholder="Pin code" id="pin_code" name="PolicyDetails[pin_code]" class="form-control">
                                </div>
                                </div>

                                <div class="col-md-6 col-sm-12 marginpadding0">
                                <div class="form-group">
                                    <label for="city" class="sr-only">City</label>
                                    <input type="text" placeholder="City" id="city" name="PolicyDetails[city]" class="form-control">
                                </div>
                                </div>
                                <div class="col-md-6 col-sm-12 marginpadding0">
                                <div class="form-group">
                                    <label for="state" class="sr-only">State</label>
                                    <input type="text" placeholder="state" id="state" name="PolicyDetails[state]" class="form-control">
                                </div>
                                </div>
                            </form>
                        </div>
                        </div>
                    </div>


                    <!--<div class="panel panel-green">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i>Details of Persion(s) to be Insured</div>
                        <div class="panel-body">

                            <div class="ibox-content">
                            <form role="form" class="form-inline">

                                <div class="col-md-6 col-sm-12 marginpadding0">
                                <div class="form-group">
                                    <select class="form-control" name="account">
                                        <option>Relation</option>
                                        <option value="">option 2</option>
                                        <option>option 3</option>
                                        <option>option 4</option>
                                    </select>
                                </div>
                                </div>
                                <div class="col-md-6 col-sm-12 marginpadding0">
                                <div class="form-group">
                                    <label for="exampleInputPassword2" class="sr-only">Password</label>
                                    <input type="text" placeholder="Title" id="exampleInputPassword2" class="form-control">
                                </div>
                                </div>

                                <div class="col-md-4 col-sm-12 marginpadding0">
                                <div class="form-group">
                                    <label for="exampleInputPassword2" class="sr-only">First Name</label>
                                    <input type="password" placeholder="First Name" id="exampleInputPassword2" class="form-control">
                                </div>
                                </div>
                                <div class="col-md-4 col-sm-12 marginpadding0">
                                <div class="form-group">
                                    <label for="exampleInputPassword2" class="sr-only">Last Name</label>
                                    <input type="password" placeholder="Last Name" id="exampleInputPassword2" class="form-control">
                                </div>
                                </div>
                                <div class="col-md-4 col-sm-12 marginpadding0">
                                <div class="form-group">
                                    <label for="exampleInputPassword2" class="sr-only">Password</label>
                                    <input type="password" placeholder="DOB dd/mm/yyyy" id="exampleInputPassword2" class="form-control">
                                </div>
                                </div>

                                <div class="col-sm-12 marginpadding0">
                                <div class="form-group">
                                    <label for="exampleInputPassword2" class="sr-only">First Name</label>
                                    <input type="password" placeholder="passport" id="exampleInputPassword2" class="form-control">
                                </div>
                                </div>
                                
                                

                                
                                
                            </form>
                        </div>
                        </div>
                    </div>-->

                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                <div class="panel panel-green">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i>health questionnaire</div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">

                           <div class="i-checks"><label class=""> <div class="icheckbox_square-green"></div> <i></i> I hereby agree to the terms and conditions of the purchase of this policy.* </label></div>

                           <div class="i-checks"><label class=""> <div class="icheckbox_square-green"></div> <i></i> Trip Start India Only. </label></div>

                           <div class="i-checks"><label class=""> <div class="icheckbox_square-green"></div> <i></i> Receive Service SMS and Email Alerts. </label></div>

                            
                            </div>
                        </div>
                    
                </div>
            </div>
            <button type="button" id="purchase_policy" class="btn btn-block btn-outline btn-primary" style="width: 300px;margin: 0 auto;">PROCEED TO PAY</button>
        </div>

<div class="divide60"></div>