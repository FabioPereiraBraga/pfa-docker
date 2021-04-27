<?php

namespace App\Http\Controllers;

use App\Module;


class ModuleController extends Controller
{
  public function index()
  {
     return  view('modules', ['modules'=>Module::all()] );
  }
}
