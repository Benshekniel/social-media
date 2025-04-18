<?php 

namespace Controller;

defined('ROOTPATH') OR exit('Access Denied!');

use \Model\User;
use \Core\Request;
use \Core\Session;

/**
 * login class
 */
class Login
{
	use MainController;

	public function index()
	{
		$data = [];

		$req = new Request();
		if($req->posted()){
			$user = new User();
			$password = $req ->post('password');
			$email = $req ->post('email');
			
			if($row = $user->first(['email' => $email])){
				//check if password is correct
				if(password_verify($password, $row->password))
				{
					//authenticate
					$ses = new Session();
					$ses->auth($row);

					redirect('home');

				}

				
			}
			$user->errors['email']= "wrong email or password";
			$data['errors'] = $user->errors;
		}

		$this->view('login', $data);
	}

}
