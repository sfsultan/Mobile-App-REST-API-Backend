<?php

namespace App\Http\Controllers;

use App\Product;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ProductController extends Controller{

    public function index() {

        $products  = Product::paginate(10);
        return response()->json($products)->header('Content-Type', 'application/json');
    }

    public function save() {

        $target_path = "uploads/";
        $target_path = $target_path . basename( $_FILES['file']['name']);

        return $target_path;
    }
}
