<?php

/**
 * This is the model class for table "user".
 *
 * The followings are the available columns in table 'user':
 * @property string $id
 * @property string $user_id
 * @property string $password
 * @property string $agency_name
 * @property integer $credit
 * @property string $pan_no
 * @property string $manager
 * @property string $branch
 * @property string $address_line_1
 * @property string $address_line_2
 * @property string $city
 * @property string $state
 * @property string $country
 * @property integer $pin_code
 * @property string $email
 * @property string $contact
 * @property string $mobile
 * @property string $user_role
 * @property string $password_key
 * @property string $date_entered
 * @property string $date_modified
 * @property string $created_by
 * @property string $modified_by
 * @property integer $status
 * @property integer $deleted
 */
class User extends BaseModel
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'user';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('id, user_id, password, agency_name, manager, branch, address_line_1, city, state, country, pin_code, email, mobile, user_role, date_entered, date_modified, created_by, modified_by', 'required'),
			array('credit, pin_code, status, deleted', 'numerical', 'integerOnly'=>true),
			array('id, manager, branch, user_role, password_key, created_by, modified_by', 'length', 'max'=>36),
			array('user_id, pan_no', 'length', 'max'=>64),
			array('password, agency_name, address_line_1, address_line_2, city, state, country, email', 'length', 'max'=>255),
			array('contact, mobile', 'length', 'max'=>16),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, user_id, password, agency_name, credit, pan_no, manager, branch, address_line_1, address_line_2, city, state, country, pin_code, email, contact, mobile, user_role, password_key, date_entered, date_modified, created_by, modified_by, status, deleted', 'safe', 'on'=>'search'),
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
			'user_id' => 'User',
			'password' => 'Password',
			'agency_name' => 'Agency Name',
			'credit' => 'Credit',
			'pan_no' => 'Pan No',
			'manager' => 'Manager',
			'branch' => 'Branch',
			'address_line_1' => 'Address Line 1',
			'address_line_2' => 'Address Line 2',
			'city' => 'City',
			'state' => 'State',
			'country' => 'Country',
			'pin_code' => 'Pin Code',
			'email' => 'Email',
			'contact' => 'Contact',
			'mobile' => 'Mobile',
			'user_role' => 'User Role',
			'password_key' => 'Password Key',
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
		$criteria->compare('user_id',$this->user_id,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('agency_name',$this->agency_name,true);
		$criteria->compare('credit',$this->credit);
		$criteria->compare('pan_no',$this->pan_no,true);
		$criteria->compare('manager',$this->manager,true);
		$criteria->compare('branch',$this->branch,true);
		$criteria->compare('address_line_1',$this->address_line_1,true);
		$criteria->compare('address_line_2',$this->address_line_2,true);
		$criteria->compare('city',$this->city,true);
		$criteria->compare('state',$this->state,true);
		$criteria->compare('country',$this->country,true);
		$criteria->compare('pin_code',$this->pin_code);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('contact',$this->contact,true);
		$criteria->compare('mobile',$this->mobile,true);
		$criteria->compare('user_role',$this->user_role,true);
		$criteria->compare('password_key',$this->password_key,true);
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
	 * @return User the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
