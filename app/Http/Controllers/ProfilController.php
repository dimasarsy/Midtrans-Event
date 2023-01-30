<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ProfilController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        return view('profil.index', [
            'title' => "My Profil",
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
        $users = DB::table('users')
            ->where('username', auth()->user()->username)
            ->get();

        return view('profil.index', [
            'title' => "My Profil",
            'users' => $users
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {
        return view('profil.edit', [
            'title' => "Edit Profil",
            'user' => $request->user()
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $rules = [
            'name' => ['required', 'string', 'max:255'],
            'username' => ['required', 'string', 'min:5', 'max:255', Rule::unique('users', 'username')->ignore(Auth::user()->id)],
            'email' => ['required', 'email', 'max:255', Rule::unique('users', 'email')->ignore(Auth::user()->id)],
            'photo' => 'image|file|max:1024'
        ];

        $validatedData = $request->validate($rules);

        if ($request->file('photo')) {
            if ($request->post('old-image')) Storage::delete($request->post('old-image'));
            $validatedData['photo'] = $request->file('photo')->store('post-images');
        }

        $request->user()->update(
            $request->all()
        );

        return redirect()->to('/profil')->with('success', 'Your Profil has been updated.');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        //
    }
}
