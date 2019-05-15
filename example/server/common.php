<?php
/**
 * Author: shanhuhai
 * Date: 21/11/2017 16:51
 * Mail: 441358019@qq.com
 */

// error reporting (this is a demo, after all!)
ini_set('display_errors',1);error_reporting(E_ALL);

require '../../vendor/autoload.php';

$dsn      = 'mysql:dbname=oauth2-demo;host=localhost';
$username = 'homestead';
$password = 'secret';


define('CLIENT_URL', 'http://www.oauth2-client.test');
define('SERVER_URL', 'http://www.oauth2-server.test');

//
$storage = new \OAuth2\Storage\Pdo(array('dsn' => $dsn, 'username' => $username, 'password' => $password));

$server = new OAuth2\Server($storage);

$server->addGrantType(new OAuth2\GrantType\ClientCredentials($storage));
$server->addGrantType(new OAuth2\GrantType\AuthorizationCode($storage));

session_start();

function dd($val) {
    var_dump($val);
    exit;
}
