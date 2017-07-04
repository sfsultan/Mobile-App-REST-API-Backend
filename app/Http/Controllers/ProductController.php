<?php

namespace App\Http\Controllers;

use App\Order;
use App\OrderItem;
use App\Customer;
use App\Product;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class ProductController extends Controller{

    public function index(Request $request) {


        if ($request->has('limit') && $request->limit <= 10) {
            $limit = $request->limit;
        } else {
            $limit = 10;
        }

        if ($request->has('skip') && $request->skip >= 0) {
            $skip = $request->skip;
        } else {
            $skip = 0;
        }

        if ($request->has('q') && $request->q != '') {
            $q = strtolower($request->q);
            $skip = 0;
            $limit = 100;
            $products = Product::where('title', 'LIKE',  "%$q%")->where('availability', 1)->skip($skip)->limit($limit)->get();
        } else {
            $products = Product::skip($skip)->limit($limit)->where('availability', 1)->orderBy('title', 'ASC')->get();
        }

        if ($request->has('id')) {
            $products = Product::find($request->id);
        }


        return response()->json($products)
                        ->header('Content-Type', 'application/json')
                        ->header('Access-Control-Allow-Credentials', 'true')
                        ->header('Access-Control-Max-Age', '86400')
                        ->header('Access-Control-Allow-Origin', '*') // REMOVE THIS AT PRODUCTION
                        ->header('Access-Control-Allow-Methods', 'POST');
    }

    public function test(Request $request) {
        $customer = Customer::firstOrNew(['phone_number' => 'asdasd']);
        $customer->phone_number = 'asdasd';
        $customer->name = 'asdasdasdrr';
        $customer->address = 'asdsadasdsadff';

        return $customer->save();
    }


    public function postCartItem(Request $request) {


        $postdata = file_get_contents("php://input");

        if (isset($postdata)) {

            $received_data = json_decode($postdata);
            $received_customer_data = $received_data[1];
            $found_products = array();

            // CREATE OR UPDATE CUSTOMER
            $customer = Customer::firstOrNew(['phone_number' => $received_customer_data->phone]);
            $customer->phone_number = $received_customer_data->phone;
            $customer->name = $received_customer_data->fname;
            $customer->address = $received_customer_data->address;
            $customer->save();

            // CREATE A NEW ORDER FOR THE ABOVE CUSTOMER
            $order = new Order();
            $order->customer_id = $customer->id;
            $order->created_at = time();
            $order->status = 'pending';
            $order->save();

            // ENTER ALL THE ITEMS CONTAINED IN THE ORDER
            foreach ($received_data[0] as $item) {
                $product = Product::find($item->id);
                if ($product) {
                    $order_item = new OrderItem();
                    $order_item->order_id = $order->id;
                    $order_item->item_id = $product->id;
                    $order_item->quantity = $item->quantity;
                    $order_item->price = $product->price;
                    $order_item->save();

                    $found_products[] = $product->id;
                }
            }

            $response = [
                'items' => $found_products,
                'user_data' => $received_customer_data,
                'success' => true
            ];

            return response()->json($response)
            // return response($response)
                ->header('Content-Type', 'application/json')
                ->header('Access-Control-Allow-Credentials', 'true')
                ->header('Access-Control-Max-Age', '86400')
                ->header('Access-Control-Allow-Origin', '*') // REMOVE THIS AT PRODUCTION
                ->header('Access-Control-Allow-Methods', 'GET,POST');
        }
    }

    public function save(Request $request) {
        // return "asdsad";
        return response()->json($request->all())
                        ->header('Content-Type', 'application/json')
                        ->header('Access-Control-Allow-Credentials', 'true')
                        ->header('Access-Control-Max-Age', '86400')
                        ->header('Access-Control-Allow-Origin', '*') // REMOVE THIS AT PRODUCTION
                        ->header('Access-Control-Allow-Methods', 'POST');
    }

    public function view($tracking) {
        $product  = Product::where('tracking_id', $tracking)->get();
        return response()->json($product)->header('Content-Type', 'application/json');
    }
}
