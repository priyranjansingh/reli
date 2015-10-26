<?php
/* @var $this PolicyController */
/* @var $model Policy */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id'); ?>
		<?php echo $form->textField($model,'id',array('size'=>36,'maxlength'=>36)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'plan'); ?>
		<?php echo $form->textField($model,'plan',array('size'=>36,'maxlength'=>36)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'proposal_no'); ?>
		<?php echo $form->textField($model,'proposal_no',array('size'=>16,'maxlength'=>16)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'policy_number'); ?>
		<?php echo $form->textField($model,'policy_number',array('size'=>60,'maxlength'=>64)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'mobile'); ?>
		<?php echo $form->textField($model,'mobile'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'email'); ?>
		<?php echo $form->textField($model,'email',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'amount_paid'); ?>
		<?php echo $form->textField($model,'amount_paid',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'is_purchased'); ?>
		<?php echo $form->textField($model,'is_purchased',array('size'=>1,'maxlength'=>1)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'policy_purchase_date'); ?>
		<?php echo $form->textField($model,'policy_purchase_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'policy_start_date'); ?>
		<?php echo $form->textField($model,'policy_start_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'date_entered'); ?>
		<?php echo $form->textField($model,'date_entered'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'date_modified'); ?>
		<?php echo $form->textField($model,'date_modified'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'created_by'); ?>
		<?php echo $form->textField($model,'created_by',array('size'=>36,'maxlength'=>36)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'modified_by'); ?>
		<?php echo $form->textField($model,'modified_by',array('size'=>36,'maxlength'=>36)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'status'); ?>
		<?php echo $form->textField($model,'status'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'deleted'); ?>
		<?php echo $form->textField($model,'deleted'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->