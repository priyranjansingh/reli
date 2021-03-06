<?php

class AdminModule extends CWebModule {

    /**
     * @var int
     * @desc items on page
     */
    public $user_page_size = 10;

    /**
     * @var int
     * @desc items on page
     */
    public $fields_page_size = 10;

    /**
     * @var string
     * @desc hash method (md5,sha1 or algo hash function http://www.php.net/manual/en/function.hash.php)
     */
    public $hash = 'md5';

    /**
     * @var boolean
     * @desc use email for activation user account
     */
    public $sendActivationMail = true;

    /**
     * @var boolean
     * @desc allow auth for is not active user
     */
    public $loginNotActiv = false;

    /**
     * @var boolean
     * @desc activate user on registration (only $sendActivationMail = false)
     */
    public $activeAfterRegister = false;

    /**
     * @var boolean
     * @desc login after registration (need loginNotActiv or activeAfterRegister = true)
     */
    public $autoLogin = true;
    public $loginUrl = array("/admin/login");
    public $logoutUrl = array("/admin/logout");
    public $profileUrl = array("/admin/profile");
    public $returnUrl = array("/admin/profile");
    public $returnLogoutUrl = array("/admin/login");

    /**
     * @var int
     * @desc Remember Me Time (seconds), defalt = 2592000 (30 days)
     */
    public $rememberMeTime = 2592000; // 30 days
    public $fieldsMessage = '';

    /**
     * @var array
     * @desc User model relation from other models
     * @see http://www.yiiframework.com/doc/guide/database.arr
     */
    public $relations = array();

    /**
     * @var array
     * @desc Profile model relation from other models
     */
    public $profileRelations = array();

    /**
     * @var boolean
     */
    public $captcha = array('registration' => true);

    /**
     * @var boolean
     */
    //public $cacheEnable = false;

    public $tableUsers = '{{user}}';
    public $tableProfiles = '{{profiles}}';
    public $tableProfileFields = '{{profiles_fields}}';
    public $defaultScope = array(
        'with' => array('profile'),
    );
    static private $_user;
    static private $_users = array();
    static private $_userByName = array();
    static private $_admin;
    static private $_admins;

    /**
     * @var array
     * @desc Behaviors for models
     */
    public $componentBehaviors = array();

    public function init() {
        // this method is called when the module is being created
        // you may place code here to customize the module or the application
        // import the module-level models and components
        $this->setImport(array(
            'admin.models.*',
            'admin.components.*',
        ));
    }

    public function getBehaviorsFor($componentName) {
        if (isset($this->componentBehaviors[$componentName])) {
            return $this->componentBehaviors[$componentName];
        } else {
            return array();
        }
    }

    public function beforeControllerAction($controller, $action) {
        if (parent::beforeControllerAction($controller, $action)) {
            // this method is called before any module controller action is performed
            // you may place customized code here
            return true;
        }
        else
            return false;
    }

    /**
     * @param $str
     * @param $params
     * @param $dic
     * @return string
     */
    public static function t($str = '', $params = array(), $dic = 'admin') {
        if (Yii::t("AdminModule", $str) == $str)
            return Yii::t("AdminModule." . $dic, $str, $params);
        else
            return Yii::t("AdminModule", $str, $params);
    }

    /**
     * @return hash string.
     */
    public static function encrypting($string = "") {
        $hash = Yii::app()->getModule('admin')->hash;
        if ($hash == "md5")
            return md5($string);
        if ($hash == "sha1")
            return sha1($string);
        else
            return hash($hash, $string);
    }

    /**
     * @param $place
     * @return boolean 
     */
    public static function doCaptcha($place = '') {
        if (!extension_loaded('gd'))
            return false;
        if (in_array($place, Yii::app()->getModule('admin')->captcha))
            return Yii::app()->getModule('admin')->captcha[$place];
        return false;
    }

    /**
     * Return admin status.
     * @return boolean
     */
    public static function isAdmin() {
        if (Yii::app()->user->isGuest)
            return false;
        else {
            if (!isset(self::$_admin)) {
                if (self::user()->superuser)
                    self::$_admin = true;
                else
                    self::$_admin = false;
            }
            return self::$_admin;
        }
    }

    /**
     * Return admin status.
     * @return boolean
     */
    public static function isCustomer() {
        if (Yii::app()->user->isGuest)
            return false;
        else {
            if (!isset(self::$_customer)) {
                if (self::user()->registered)
                    self::$_customer = true;
                else
                    self::$_customer = false;
            }
            return self::$_customer;
        }
    }

    /**
     * Return admins.
     * @return array superusers names
     */
    public static function getAdmins() {
        if (!self::$_admins) {
            $admins = BackendUser::model()->active()->superuser()->findAll();
            $return_name = array();
            foreach ($admins as $admin)
                array_push($return_name, $admin->username);
            self::$_admins = ($return_name) ? $return_name : array('');
        }
        return self::$_admins;
    }

    /**
     * Send mail method
     */
    public static function sendMail($email, $subject, $message) {
        $adminEmail = Yii::app()->params['adminEmail'];
        $headers = "MIME-Version: 1.0\r\nFrom: $adminEmail\r\nReply-To: $adminEmail\r\nContent-Type: text/html; charset=utf-8";
        $message = wordwrap($message, 70);
        $message = str_replace("\n.", "\n..", $message);
        return mail($email, '=?UTF-8?B?' . base64_encode($subject) . '?=', $message, $headers);
    }

    /**
     * Return safe user data.
     * @param user id not required
     * @return user object or false
     */
    public static function user($id = 0, $clearCache = false) {
        if (!$id && !Yii::app()->user->isGuest)
            $id = Yii::app()->user->id;
        if ($id) {
            if (!isset(self::$_users[$id]) || $clearCache)
                self::$_users[$id] = BackendUser::model()->findbyPk($id);
            return self::$_users[$id];
        }
        else
            return false;
    }

    /**
     * Return safe user data.
     * @param user name
     * @return user object or false
     */
    public static function getUserByName($username) {
        if (!isset(self::$_userByName[$username])) {
            $_userByName[$username] = BackendUser::model()->findByAttributes(array('username' => $username));
        }
        return $_userByName[$username];
    }

    /**
     * Return safe user data.
     * @param user id not required
     * @return user object or false
     */
    public function users() {
        return User;
    }

}
