<?php
/* @var $this UserController */
/* @var $model User */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'user-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'id'); ?>
		<?php echo $form->textField($model,'id',array('size'=>36,'maxlength'=>36)); ?>
		<?php echo $form->error($model,'id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'user_id'); ?>
		<?php echo $form->textField($model,'user_id',array('size'=>60,'maxlength'=>64)); ?>
		<?php echo $form->error($model,'user_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'password'); ?>
		<?php echo $form->passwordField($model,'password',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'password'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'agency_name'); ?>
		<?php echo $form->textField($model,'agency_name',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'agency_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'credit'); ?>
		<?php echo $form->textField($model,'credit'); ?>
		<?php echo $form->error($model,'credit'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'pan_no'); ?>
		<?php echo $form->textField($model,'pan_no',array('size'=>60,'maxlength'=>64)); ?>
		<?php echo $form->error($model,'pan_no'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'manager'); ?>
		<?php echo $form->textField($model,'manager',array('size'=>36,'maxlength'=>36)); ?>
		<?php echo $form->error($model,'manager'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'branch'); ?>
		<?php echo $form->textField($model,'branch',array('size'=>36,'maxlength'=>36)); ?>
		<?php echo $form->error($model,'branch'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'address_line_1'); ?>
		<?php echo $form->textField($model,'address_line_1',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'address_line_1'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'address_line_2'); ?>
		<?php echo $form->textField($model,'address_line_2',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'address_line_2'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'city'); ?>
		<?php echo $form->textField($model,'city',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'city'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'state'); ?>
		<?php echo $form->textField($model,'state',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'state'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'country'); ?>
		<?php echo $form->textField($model,'country',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'country'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'pin_code'); ?>
		<?php echo $form->textField($model,'pin_code'); ?>
		<?php echo $form->error($model,'pin_code'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'email'); ?>
		<?php echo $form->textField($model,'email',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'email'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'contact'); ?>
		<?php echo $form->textField($model,'contact',array('size'=>16,'maxlength'=>16)); ?>
		<?php echo $form->error($model,'contact'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'mobile'); ?>
		<?php echo $form->textField($model,'mobile',array('size'=>16,'maxlength'=>16)); ?>
		<?php echo $form->error($model,'mobile'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'user_role'); ?>
		<?php echo $form->textField($model,'user_role',array('size'=>36,'maxlength'=>36)); ?>
		<?php echo $form->error($model,'user_role'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'password_key'); ?>
		<?php echo $form->textField($model,'password_key',array('size'=>36,'maxlength'=>36)); ?>
		<?php echo $form->error($model,'password_key'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'date_entered'); ?>
		<?php echo $form->textField($model,'date_entered'); ?>
		<?php echo $form->error($model,'date_entered'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'date_modified'); ?>
		<?php echo $form->textField($model,'date_modified'); ?>
		<?php echo $form->error($model,'date_modified'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'created_by'); ?>
		<?php echo $form->textField($model,'created_by',array('size'=>36,'maxlength'=>36)); ?>
		<?php echo $form->error($model,'created_by'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'modified_by'); ?>
		<?php echo $form->textField($model,'modified_by',array('size'=>36,'maxlength'=>36)); ?>
		<?php echo $form->error($model,'modified_by'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'status'); ?>
		<?php echo $form->textField($model,'status'); ?>
		<?php echo $form->error($model,'status'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'deleted'); ?>
		<?php echo $form->textField($model,'deleted'); ?>
		<?php echo $form->error($model,'deleted'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->