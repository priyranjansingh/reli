<?php

/**
 * This is the model class for table "user_nominee".
 *
 * The followings are the available columns in table 'user_nominee':
 * @property string $id
 * @property string $user_id
 * @property string $first_name
 * @property string $last_name
 * @property string $qualification
 * @property string $relation
 * @property string $date_entered
 * @property string $date_modified
 * @property string $created_by
 * @property string $modified_by
 * @property integer $status
 * @property integer $deleted
 */
class UserNominee extends BaseModel
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'user_nominee';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('id, user_id, first_name, last_name, qualification, relation, date_entered, date_modified, created_by, modified_by', 'required'),
			array('status, deleted', 'numerical', 'integerOnly'=>true),
			array('id, user_id, created_by, modified_by', 'length', 'max'=>36),
			array('first_name, last_name', 'length', 'max'=>64),
			array('qualification', 'length', 'max'=>255),
			array('relation', 'length', 'max'=>1),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, user_id, first_name, last_name, qualification, relation, date_entered, date_modified, created_by, modified_by, status, deleted', 'safe', 'on'=>'search'),
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
			'first_name' => 'First Name',
			'last_name' => 'Last Name',
			'qualification' => 'Qualification',
			'relation' => 'Relation',
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
		$criteria->compare('first_name',$this->first_name,true);
		$criteria->compare('last_name',$this->last_name,true);
		$criteria->compare('qualification',$this->qualification,true);
		$criteria->compare('relation',$this->relation,true);
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
	 * @return UserNominee the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
