<?php

/**
 * This is the model class for table "policy_details".
 *
 * The followings are the available columns in table 'policy_details':
 * @property string $id
 * @property string $quotation
 * @property integer $is_proposer
 * @property string $first_name
 * @property string $last_name
 * @property string $dob
 * @property string $title
 * @property string $nominee_name
 * @property string $email
 * @property string $mobile
 * @property string $address_line_1
 * @property string $address_line_2
 * @property string $city
 * @property string $state
 * @property integer $pin_code
 * @property string $date_entered
 * @property string $date_modified
 * @property string $created_by
 * @property string $modified_by
 * @property integer $status
 * @property integer $deleted
 */
class PolicyDetails extends BaseModel
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'policy_details';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('id, quotation, first_name, last_name, dob, title, date_entered, date_modified, created_by, modified_by', 'required'),
			array('is_proposer, pin_code, status, deleted', 'numerical', 'integerOnly'=>true),
			array('id, quotation, created_by, modified_by', 'length', 'max'=>36),
			array('first_name, last_name, city, state', 'length', 'max'=>64),
			array('title', 'length', 'max'=>4),
			array('nominee_name, email, address_line_1, address_line_2', 'length', 'max'=>255),
			array('mobile', 'length', 'max'=>16),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, quotation, is_proposer, first_name, last_name, dob, title, nominee_name, email, mobile, address_line_1, address_line_2, city, state, pin_code, date_entered, date_modified, created_by, modified_by, status, deleted', 'safe', 'on'=>'search'),
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
			'quotation' => 'Quotation',
			'is_proposer' => 'Is Proposer',
			'first_name' => 'First Name',
			'last_name' => 'Last Name',
			'dob' => 'Dob',
			'title' => 'Title',
			'nominee_name' => 'Nominee Name',
			'email' => 'Email',
			'mobile' => 'Mobile',
			'address_line_1' => 'Address Line 1',
			'address_line_2' => 'Address Line 2',
			'city' => 'City',
			'state' => 'State',
			'pin_code' => 'Pin Code',
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
		$criteria->compare('quotation',$this->quotation,true);
		$criteria->compare('is_proposer',$this->is_proposer);
		$criteria->compare('first_name',$this->first_name,true);
		$criteria->compare('last_name',$this->last_name,true);
		$criteria->compare('dob',$this->dob,true);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('nominee_name',$this->nominee_name,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('mobile',$this->mobile,true);
		$criteria->compare('address_line_1',$this->address_line_1,true);
		$criteria->compare('address_line_2',$this->address_line_2,true);
		$criteria->compare('city',$this->city,true);
		$criteria->compare('state',$this->state,true);
		$criteria->compare('pin_code',$this->pin_code);
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
	 * @return PolicyDetails the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
