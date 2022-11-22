<?php

namespace App\Http\Controllers;

use App\Models\Sponsor;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

class SponsorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('dashboard.sponsors.index', [
            'sponsors' => Sponsor::query()->latest()->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.sponsors.create', [
            'sponsors' => Sponsor::query()->latest()->get()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreSponsorRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'link'   => 'required|max:255',
            'image' => 'required|image|file|max:1024'
        ]);

        $validatedData['image'] = $request->file('image')->store('post-images');
        $validatedData['user_id'] = auth()->user()->id;

        Sponsor::create($validatedData);

        return redirect()->to('/dashboard/sponsors')->with('success', 'New Sponsors has been Uploaded.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Sponsor  $sponsor
     * @return \Illuminate\Http\Response
     */
    public function show(Sponsor $sponsor)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Sponsor  $sponsor
     * @return \Illuminate\Http\Response
     */
    public function edit(Sponsor $sponsor)
    {
        return view('dashboard.sponsors.edit', [
            'sponsor' => $sponsor,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateSponsorRequest  $request
     * @param  \App\Models\Sponsor  $sponsor
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Sponsor $sponsor)
    {
        $rules = [
            'name' => 'required|max:255',
            'link'   => 'required|max:255',
            'image' => 'image|file|max:1024'
        ];

        $validatedData = $request->validate($rules);

        if ($request->file('image')) {
            if ($request->post('old-image')) Storage::delete($request->post('old-image'));
            $validatedData['image'] = $request->file('image')->store('post-images');
        }

        if (
            $request->name == $sponsor->name && $request->link == $sponsor->link &&
            $request->file('image') == null
        ) {
            return redirect('/dashboard/sponsors')->with('noUpdate', 'There is no update on Sponsor!');
        }

        Sponsor::where('id', $sponsor->id) -> update($validatedData);

        return redirect()->to('/dashboard/sponsors')->with('success', 'Sponsor has been updated.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Sponsor  $sponsor
     * @return \Illuminate\Http\Response
     */
    public function destroy(Sponsor $sponsor)
    {
        if ($sponsor->image) Storage::delete($sponsor->image);
        $sponsor->delete();
        return redirect()->to('/dashboard/sponsors')->with('deleted', 'Sponsor has been deleted.');
    }

}
