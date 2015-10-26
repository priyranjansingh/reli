<?php
ob_start();
/**
 * UserIdentity represents the data needed to identity a user.
 * It contains the authentication method that checks if the provided
 * data can identity the user.
 */
class UserIdentity extends CUserIdentity {

    private $_id;
    
    public $role;
    
    const ERROR_EMAIL_INVALID = 3;
    const ERROR_STATUS_NOTACTIV = 4;
    const ERROR_STATUS_BAN = 5;

    /**
     * Authenticates a user.
     * The example implementation makes sure if the username and password
     * are both 'demo'.
     * In practical applications, this should be changed to authenticate
     * against some persistent user identity storage (e.g. database).
     * @return boolean whether authentication succeeds.
     */
    public function authenticate() {
        $user = User::model()->findByAttributes(array('user_id' => $this->username));
        if ($user === null)
            $this->errorCode = self::ERROR_USERNAME_INVALID;
            if (Yii::app()->getModule('admin')->encrypting($this->password) !== $user->password)
                $this->errorCode = self::ERROR_PASSWORD_INVALID;
        else if ($user->status == 0 && Yii::app()->getModule('admin')->loginNotActiv == false)
            $this->errorCode = self::ERROR_STATUS_NOTACTIV;
        else if ($user->status == -1)
            $this->errorCode = self::ERROR_STATUS_BAN;
        else {
        	$role = $user->user_role;
            $role_model = Roles::model()->findByPk($role);
            if($role_model->role == "admin"){
            	$this->_id = $user->id;
	            $this->username = $user->agency_name;
	            $this->errorCode = self::ERROR_NONE;
	            $this->setState('user_role', $role_model->role);
            } else {
            	$this->errorCode = self::ERROR_USERNAME_INVALID;
            }
            
        }
        return !$this->errorCode;
    }

    /**
     * @return integer the ID of the user record
     */
    public function getId() {
        return $this->_id;
    }
}