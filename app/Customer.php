<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'tbl_customer';
    protected $fillable = [
        'name', 'phone_number', 'address'
    ];
    public $timestamps = false;
}