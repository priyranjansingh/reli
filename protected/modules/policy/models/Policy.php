<?php

/**
 * This is the model class for table "policy".
 *
 * The followings are the available columns in table 'policy':
 * @property string $id
 * @property string $plan
 * @property string $proposal_no
 * @property string $policy_number
 * @property integer $mobile
 * @property string $email
 * @property string $policy_amount
 * @property string $policy_premium
 * @property string $amount_paid
 * @property string $is_purchased
 * @property string $policy_purchase_date
 * @property string $policy_start_date
 * @property string $date_entered
 * @property string $date_modified
 * @property string $created_by
 * @property string $modified_by
 * @property integer $status
 * @property integer $deleted
 */
class Policy extends BaseModel
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'policy';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('id, plan, proposal_no, mobile, email, policy_amount, policy_premium, date_entered, date_modified, created_by, modified_by', 'required'),
			array('mobile, status, deleted', 'numerical', 'integerOnly'=>true),
			array('id, plan, created_by, modified_by', 'length', 'max'=>36),
			array('proposal_no', 'length', 'max'=>16),
			array('policy_number, policy_amount, policy_premium', 'length', 'max'=>64),
			array('email, amount_paid', 'length', 'max'=>255),
			array('is_purchased', 'length', 'max'=>1),
			array('policy_purchase_date, policy_start_date', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, plan, proposal_no, policy_number, mobile, email, policy_amount, policy_premium, amount_paid, is_purchased, policy_purchase_date, policy_start_date, date_entered, date_modified, created_by, modified_by, status, deleted', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'plan' => 'Plan',
			'proposal_no' => 'Proposal No',
			'policy_number' => 'Policy Number',
			'mobile' => 'Mobile',
			'email' => 'Email',
			'policy_amount' => 'Policy Amount',
			'policy_premium' => 'Policy Premium',
			'amount_paid' => 'Amount Paid',
			'is_purchased' => 'Is Purchased',
			'policy_purchase_date' => 'Policy Purchase Date',
			'policy_start_date' => 'Policy Start Date',
			'date_entered' => 'Date Entered',
			'date_modified' => 'Date Modified',
			'created_by' => 'Created By',
			'modified_by' => 'Modified By',
			'status' => 'Status',
			'deleted' => 'Deleted',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id,true);
		$criteria->compare('plan',$this->plan,true);
		$criteria->compare('proposal_no',$this->proposal_no,true);
		$criteria->compare('policy_number',$this->policy_number,true);
		$criteria->compare('mobile',$this->mobile);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('policy_amount',$this->policy_amount,true);
		$criteria->compare('policy_premium',$this->policy_premium,true);
		$criteria->compare('amount_paid',$this->amount_paid,true);
		$criteria->compare('is_purchased',$this->is_purchased,true);
		$criteria->compare('policy_purchase_date',$this->policy_purchase_date,true);
		$criteria->compare('policy_start_date',$this->policy_start_date,true);
		$criteria->compare('date_entered',$this->date_entered,true);
		$criteria->compare('date_modified',$this->date_modified,true);
		$criteria->compare('created_by',$this->created_by,true);
		$criteria->compare('modified_by',$this->modified_by,true);
		$criteria->compare('status',$this->status);
		$criteria->compare('deleted',$this->deleted);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Policy the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
