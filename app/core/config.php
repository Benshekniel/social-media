<?php

defined('ROOTPATH') or exit('Access Denied!');

if ($_SERVER['SERVER_NAME'] == 'localhost') {
	/** localhost database config **/
	define('DBNAME', 'simplesocial_db');
	define('DBHOST', 'localhost');
	define('DBUSER', 'root');
	define('DBPASS', '');
	define('DBDRIVER', '');

	define('ROOT', 'http://localhost/new/public');
} else {
	/** online server database config **/
	define('DBNAME', 'simplesocial_db');
	define('DBHOST', 'localhost');
	define('DBUSER', 'root');
	define('DBPASS', '');
	define('DBDRIVER', '');

	define('ROOT', 'https://www.yourwebsite.com');
}

define('APP_NAME', "My Social website");
define('APP_DESC', "Best social website on the planet");

/** true means show errors **/
define('DEBUG', true);
