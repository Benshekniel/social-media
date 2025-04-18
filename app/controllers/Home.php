<?php

namespace Controller;

defined('ROOTPATH') or exit('Access Denied!');

use \Model\User;
use \Model\Post;
use \Core\Session;
use \Core\Pager;

/**
 * home class
 */
class Home
{
	use MainController;
	public function index()
	{
		$ses = new Session();

		$id = user('id');

		//pagination vars
		$limit = 10;
		$data['pager'] = new Pager($limit);
		$offset = $data['pager']->offset;

		if (!$ses->is_logged_in()) {
			redirect('login');
		}
		//ger user row
		$user = new User();
		$data['row'] = $row =  $user->first(['id' => $id]);

		if ($data['row']) {
			$post = new Post();
			$post->limit = $limit;
			$post->offset = $offset;
			$data['posts'] = $post->findAll();
			if ($data['posts']) {
				$data['posts'] = $post->add_user_data($data['posts']);
			}
		}

		$this->view('home', $data);
	}
}
