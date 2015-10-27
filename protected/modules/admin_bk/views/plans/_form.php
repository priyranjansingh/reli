<?php
/* @var $this PlansController */
/* @var $model Plans */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'plans-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>
	<div class="row">
		<?php echo $form->labelEx($model,'parent'); ?>
		<?php echo $form->textField($model,'parent',array('size'=>36,'maxlength'=>36)); ?>
		<?php echo $form->error($model,'parent'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'name'); ?>
		<?php echo $form->textField($model,'name',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'name'); ?>
	</div>
	<div id="copy_price">
	<div class="row price">
		<div class="span3">
			<label for="Plan_Price_age_group" class="required">Age Group <span class="required">*</span></label>
			<input size="36" maxlength="36" name="PlanPrice[age_group][]" id="Plan_Price_age_group" type="text">
		</div>
		<div class="span3">
			<label for="Plan_Price_policy_tenure" class="required">Policy Tenure <span class="required">*</span></label>
			<input size="36" maxlength="36" name="PlanPrice[policy_tenure][]" id="Plan_Price_policy_tenure" type="text">
		</div>
		<div class="span3">
			<label for="Plan_Price_policy_amount" class="required">Policy Amount <span class="required">*</span></label>
			<input size="36" maxlength="36" name="PlanPrice[policy_amount][]" id="Plan_Price_policy_amount" type="text">
		</div>
		<div class="span3">
			<label for="Plan_Price_policy_premium" class="required">Policy Premium <span class="required">*</span></label>
			<input size="36" maxlength="36" name="PlanPrice[policy_premium][]" id="Plan_Price_policy_premium" type="text">
		</div>
	</div>
	</div>
	<div id="copy_advantage">
	<div class="row advantage">
		<div class="span6">
			<label for="Plan_Advantage_advantage" class="required">Advantage <span class="required">*</span></label>
			<input size="36" maxlength="255" name="PlanAdvantage[advantage][]" id="Plan_Advantage_advantage" type="text">
		</div>
		<div class="span6">
			<label for="Plan_Advantage_tooltip" class="required">Tooltip <span class="required">*</span></label>
			<textarea name="PlanAdvantage[policy_tooltip][]"></textarea>
		</div>
	</div>
	</div>
	<div class="row buttons">
		<a href="javascript:void(0);" id="add_price">Add Price</a>
		<a href="javascript:void(0);" id="add_adv">Add Advantage</a>
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
<?php Yii::app()->clientScript->registerCoreScript('jquery'); ?>
<script>
		
		$(document).ready(function(){
			var copy_price = $("#copy_price").html();
			var copy_adv = $("#copy_advantage").html();
			$("#add_price").click(function(){
				$("#copy_price").append(copy_price);
			});
			$("#add_adv").click(function(){
				$("#copy_advantage").append(copy_adv);
			});
		});

</script>