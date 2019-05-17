<?php
require '../../vendor/autoload.php';
define('CLIENT_URL', 'http://www.oauth2-client.test');
define('SERVER_URL', 'http://www.oauth2-server.test');
define('REDIRECT_URI', CLIENT_URL.'/index.php');
define('RESOURCE_URL', SERVER_URL.'/resource.php');

define('CLIENT_ID', 'testclient');
define('CLIENT_SECRET', 'testpass');

session_start();

var_dump($_SESSION);
if (isset($_SESSION['access_token'])) {
    $client = new GuzzleHttp\Client();
    $response = $client->request('GET', RESOURCE_URL.'?access_token='.$_SESSION['access_token']);
    $response = json_decode($response->getBody(), true);
    var_dump($response);
}
