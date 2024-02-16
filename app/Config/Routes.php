<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');

$routes->get('about', 'Home::about');
$routes->get('profile', 'Home::user_profile', ['as' => 'profile']);

$routes->group('users',  static function ($routes) {

    $routes->get('/', 'Home::user_list', ['as' => 'users']);
    $routes->get('(:segment)', 'Home::user_detail/$1', ['as' => 'users-detail']);

});