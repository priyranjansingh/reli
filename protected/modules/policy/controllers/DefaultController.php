<?php

class DefaultController extends Controller
{
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('quotation','purchase','process','success','detail','send'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('admin'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}
	public $defautAction = "quotation";

	public function actionQuotation()
    {
        $this->render('quotation');
    }
	public function actionPurchase()
	{
		if(isset($_POST['Policy'])){
			$model = new Policy;
			$model->attributes = $_POST['Policy'];
			$model->proposal_no = uniqid();
			$model->is_purchased = 'q';
			if($model->save()){
				$parent = Plans::model()->findByPk($_POST['Policy']['parent_plan']);
				$region = PlanRegion::model()->findByPk($_POST['Policy']['region']);
				$amount = $_POST['Policy']['policy_amount'];
				$premium = $_POST['Policy']['policy_premium'];
				$tenure = $_POST['Policy']['tenure'];
				$first_name = $_POST['Policy']['first_name'];
				$age = $_POST['Policy']['age'];
				$plan = Plans::model()->findByPk($model->plan);
				$this->render("purchase",
								array(
									"model" => $model,
									"parent" => $parent, 
									"plan" => $plan, 
									"region" => $region,
									"premium" => $premium,
									"amount" => $amount,
									"first_name" => $first_name,
									"age" => $age,
									"tenure" => $tenure
									)
							);
			} else {
				pre($model->getErrors(),true);
			}	
		} else {
			$this->redirect(array('quotation'));
		}
	}

	public function actionProcess(){
		$model = new PolicyDetails;

		if(isset($_POST['PolicyDetails'])){
			$policy = Policy::model()->findByPk($_POST['PolicyDetails']['policy']);
			$policy->policy_number = uniqid();
			$policy->amount_paid = $policy->policy_premium;
			$policy->is_purchased = 'p';
			$policy->policy_purchase_date = date("Y-m-d");
			$policy->policy_start_date = date("Y-m-d");
			$user = User::model()->findByPk(Yii::app()->user->id);
			$user->credit = ($user->credit - $policy->policy_premium);
			$user->save();
			$policy->save();
			$model->attributes = $_POST['PolicyDetails'];
			if($model->save()){
				$this->redirect(array("success"));
			}
		}
	}

	public function actionSuccess(){
		$this->render("thanks");
	}

	public function actionDetail(){
		// pre($_POST,true);
		$age = $_POST['age'];
		$region = $_POST['region'];
		$tenure = $_POST['tenure'];
		$plan = $_POST['type'];
		$sum = $_POST['range'];
		$sql = "SELECT * FROM `plan_price` WHERE plan = '$plan' AND age_group = '$age' AND region = '$region' AND policy_tenure = $tenure";
		$result = BaseModel::executeQuery($sql);
		echo json_encode($result);

	}
        
        // function for handling the quote email
        
        public function actionSend()
        {
             $plan_id = "880dcb73-7bc2-11e5-bc4d-3c07717072c4";
             $plan_model = Plans::model()->find(array('condition' => 'id = "' . $plan_id . '" '));
             $data['plan_name'] = $plan_model->name;
             $body = $this->renderPartial("quotation_mail_template",$data,true);
             mailsend("singh.priyranjan@gmail.com", "priyranjan@clematistech.com", "hi", $body);
        }        
        
        
        
}