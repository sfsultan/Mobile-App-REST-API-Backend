<?php
use App\Http\Controllers\OrderController;
/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

// $app->get('/', function () use ($app) {
//     return $app->version();
// });


// $app->get('/order', function () use ($app)  {
//     return $app->version();
// });

// $app->get('/order', 'OrderController@index');

$app->group(['prefix' => 'api/v1'], function($app) {
    // $app->post('order','OrderController@createCar');

    // $app->put('car/{id}','OrderController@updateCar');

    // $app->delete('car/{id}','OrderController@deleteCar');
    $app->get('product','ProductController@index');

	//	PRODUCT DATA FETCH
	$app->group(['prefix'=>'product'], function($app) {
		$app->get('', 'ProductController@index');
	});

    $app->get('order/save','OrderController@save');
    $app->get('order','OrderController@index');
    $app->post('order/save','OrderController@save');
    $app->get('order/{tracking}','OrderController@view');
});
