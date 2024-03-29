<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Models\Post;
use App\Models\Pengajuan;
use App\Models\Schedule;

class DashboardController extends Controller
{
    public function index()
    {
         $users = DB::table('users')
        ->where('users.role_id','!=','1')
        ->get();

         $orders = DB::table('orders')
        ->get();
        
        
        return view('dashboard.index', [
            'users'      => $users,
            'posts'      => Post::where('user_id', auth()->user()->id)->get(),

            'schedules' => Schedule::where('status', "available")
                        ->where('enddate', '>=', date('Y-m-d'))
                        ->join('users', 'schedules.user_id', '=', 'users.id')
                        ->select('schedules.*', 'users.role_id')
                        ->where('users.role_id','1')
                        ->get(),
            'orders'    =>  $orders
        ]);
    }
    
    public function dash_vendor()
    {
        return view('dashboard.dashboard-vendor', [
            'posts'      => Post::where('user_id', auth()->user()->id)->get(),
        ]);
    }
}
