<?php

namespace App\Http\Controllers;

use App\Order;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class OrderController extends Controller{

    public function createCar(Request $request){

        $car = Car::create($request->all());

        return response()->json($car);

    }

    public function updateCar(Request $request, $id){

        $car  = Car::find($id);
        $car->make = $request->input('make');
        $car->model = $request->input('model');
        $car->year = $request->input('year');
        $car->save();

        return response()->json($car);
    }

    public function deleteCar($id){
        $car  = Car::find($id);
        $car->delete();

        return response()->json('Removed successfully.');
    }

    public function index() {

        $orders  = Order::all();
        return response()->json($orders)->header('Content-Type', 'application/json');
    }

    public function view($tracking) {

        $order  = Order::where('tracking_id', $tracking)->get();
        return response()->json($order)->header('Content-Type', 'application/json');
    }
}