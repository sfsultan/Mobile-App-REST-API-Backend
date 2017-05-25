<?php

namespace App\Http\Controllers;

use App\Order;
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

        $products = Product::skip($skip)->take($limit)->get();
        return response()->json($products)
                        ->header('Content-Type', 'application/json')
                        ->header('Access-Control-Allow-Credentials', 'true')
                        ->header('Access-Control-Max-Age', '86400')
                        ->header('Access-Control-Allow-Origin', '*') // REMOVE THIS AT PRODUCTION
                        ->header('Access-Control-Allow-Methods', 'POST');
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
