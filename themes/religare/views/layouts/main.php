<!DOCTYPE html>
 <?php
      $baseUrl = Yii::app()->theme->baseUrl; 
 ?>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>assan - Professional theme</title>

        <!-- Bootstrap -->
        <link href="<?php echo $baseUrl;?>/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- custom css (blue color by default) -->
        <link href="<?php echo $baseUrl;?>/css/style-theme.css" rel="stylesheet" type="text/css" media="screen">
      
        <!-- font awesome for icons -->
        <link href="<?php echo $baseUrl;?>/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- flex slider css -->
        <!-- ion slider -->
        <link href="<?php echo $baseUrl;?>/css/ion.rangeSlider.skinModern.css" rel="stylesheet">
        <link href="<?php echo $baseUrl;?>/css/ion.rangeSlider.css" rel="stylesheet">
        <link rel="stylesheet" href="<?php echo $baseUrl;?>/css/normalize.css" />
        <script type="text/javascript" src="<?php echo $baseUrl;?>/js/jquery.min.js"></script>
        <script type="text/javascript" src="<?php echo $baseUrl;?>/js/jquery.query-2.1.7.js"></script>        
        <!--bootstrap js plugin-->
        <script src="<?php echo $baseUrl;?>/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>       
        <!--easing plugin for smooth scroll-->
        <script src="<?php echo $baseUrl;?>/js/ion.rangeSlider.js" type="text/javascript"></script> 
        <script src="<?php echo $baseUrl;?>/js/icheck.min.js" type="text/javascript"></script> 
        <!--customizable plugin edit according to your needs-->
        <script src="<?php echo $baseUrl;?>/js/custom.js" type="text/javascript"></script>
    </head>
    <body>

        <?php require_once('header.php'); ?>
        <?php echo $content;   ?>
        <?php require_once('footer.php'); ?>
       <!--scripts and plugins -->
        <!--must need plugin jquery-->
        


    </body>
</html>
