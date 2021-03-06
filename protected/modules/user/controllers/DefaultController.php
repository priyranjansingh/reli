<?php

class DefaultController extends Controller {

    public $layout = '//layouts/login_main';
    public $defaultAcion = "login";

    public function actionIndex() {
        $model = new LoginForm;

        // if it is ajax validation request
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'login-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }

        // collect user input data
        if (isset($_POST['LoginForm'])) {
            $model->attributes = $_POST['LoginForm'];
            // validate user input and redirect to the previous page if valid
            if ($model->validate() && $model->login())
                $this->redirect(base_url() . '/dashboard');
        }
        // display the login form
        $this->render('index', array('model' => $model));
    }

    public function actionPdf() {
        
        mailsend("singh.priyranjan@gmail.com", "priyranjan@clematistech.com", "hi", "hello","./assets/pdf/abc.pdf");
         //$mPDF1 = Yii::app()->ePdf->mpdf();
         //$mPDF1->WriteHTML($this->render('mail', array(), true));
         //$mPDF1->Output("./assets/pdf/abc.pdf","F");
    }

    /**
     * Logs out the current user and redirect to homepage.
     */
    public function actionLogout() {
        Yii::app()->user->logout();
        $this->redirect(Yii::app()->homeUrl);
    }

}
