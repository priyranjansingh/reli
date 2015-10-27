<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- saved from url=(0055)http://premiumfreebies.eu/previews/LoginForm/?x=82&y=21 -->
<html xmlns="http://www.w3.org/1999/xhtml" class=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <?php
      $baseUrl = Yii::app()->theme->baseUrl; 
      //$cs = Yii::app()->getClientScript();
      //Yii::app()->clientScript->registerCoreScript('jquery');
    ?>
	<!-- General meta information -->
	<title>Explore</title>
	<meta name="keywords" content="">
	<meta name="description" content="">
	<meta name="robots" content="index, follow">
	<meta charset="utf-8">
	<!-- // General meta information -->
	
	
	<!-- Load Javascript -->
	<script type="text/javascript" src="<?php echo $baseUrl;?>/js/jquery.js"></script>
	<script type="text/javascript" src="<?php echo $baseUrl;?>/js/jquery.query-2.1.7.js"></script>
	<script type="text/javascript" src="<?php echo $baseUrl;?>/js/rainbows.js"></script>
	<!-- // Load Javascipt -->

	<!-- Load stylesheets -->
	<link type="text/css" rel="stylesheet" href="<?php echo $baseUrl;?>/css/style.css" media="screen">
	<!-- // Load stylesheets -->
	
<script>


	$(document).ready(function(){
 
	$("#submit1").hover(
	function() {
	$(this).animate({"opacity": "0"}, "slow");
	},
	function() {
	$(this).animate({"opacity": "1"}, "slow");
	});
 	});


</script>
	
<style type="text/css">.fancybox-margin{margin-right:0px;}</style></head>
<body>

	<div id="wrapper">
           
		<div class="logo"><img src="<?php echo $baseUrl;?>/img/logo1.png" width="250"></div>
		<div id="wrappertop"></div>
                
		<div id="wrappermiddle">
                    
                      <?php echo $content; ?>  
			
		</div>

		<div id="wrapperbottom"></div>
		
		<div id="powered">
		<p>Powered by <a href="#">Religare Health Insurance</a></p>
		</div>
	</div>



</body></html>