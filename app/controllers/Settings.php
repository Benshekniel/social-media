<?php 

namespace Controller;

defined('ROOTPATH') OR exit('Access Denied!');
use \Core\Session;
use \Model\User;
use \Core\Pager;

class Settings
{
	use MainController;
	
	public function index()
	{
		$ses = new Session();
		if(!$ses->is_logged_in())
		{
			redirect('login');
		}

		$id = URL('slug') ?? user('id');

		$ses = new Session();

		//ger user row
		$user = new User();
		$data['row'] = $row =  $user->first(['id'=> $id]);

		$this->view('settings',$data);
	}
}
