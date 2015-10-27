<?php
/* @var $this SiteController */
/* @var $model LoginForm */
/* @var $form CActiveForm  */

$this->pageTitle = Yii::app()->name . ' - Login';
$this->breadcrumbs = array(
    'Login',
);
?>
<h2>Login</h2>
<?php
$baseUrl = Yii::app()->theme->baseUrl;
?>

<?php
$form = $this->beginWidget('CActiveForm', array(
    'id' => 'login-form',
    'enableClientValidation' => true,
    'clientOptions' => array(
        'validateOnSubmit' => true,
    ),
        ));
?>



<div id="username_input">
    <div id="username_inputleft"></div>
    <div id="username_inputmiddle">
        <?php echo $form->textField($model, 'username', array("id" => "url")); ?>
        <img id="url_user" src="<?php echo $baseUrl; ?>/img/mailicon.png" alt="">
        <?php echo $form->error($model, 'username'); ?>
    </div>   
    <div id="username_inputright"></div>
</div>

<div id="password_input">
    <div id="password_inputleft"></div>
    <div id="password_inputmiddle">
        <?php echo $form->passwordField($model, 'password', array("id" => "url")); ?>
        <img id="url_password" src="<?php echo $baseUrl; ?>/img/passicon.png" alt="">
        <?php echo $form->error($model, 'password'); ?>
    </div>
    <div id="password_inputright"></div>
</div>



<div id="submit">
    <input type="image" src="<?php echo $baseUrl; ?>/img/submit_hover.png" id="submit1" value="Sign In">
    <input type="image" src="<?php echo $baseUrl; ?>/img/submit.png" id="submit2" value="Sign In">
</div>

<?php $this->endWidget(); ?>

