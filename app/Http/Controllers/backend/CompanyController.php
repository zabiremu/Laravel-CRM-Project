<?php

namespace App\Http\Controllers\backend;

use App\Models\Company;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

class CompanyController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Company::latest()->simplePaginate(10);
        return view('company.view', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('company.index');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|max:80',
            'email' => 'required|max:80',
            'link' => 'required',
            'logo' => 'required|mimes:png,jpg,webp,jpeg,svg',
        ]);

        $img = $request->logo->extension();
        $imgName = 'Company-' . uniqid() . '.' . $img;
        $imgSave = $request->logo->storeAs('Company', $imgName, 'public');
        $imageUrl = env('APP_URL') . 'storage/' . $imgSave;

        $dataSave = new Company();
        $dataSave->name = $request->name;
        $dataSave->email = $request->email;
        $dataSave->website = $request->link;
        $dataSave->logo = $imgName;
        $dataSave->logo_url = $imageUrl;
        $dataSave->save();
        $notification = [
            'message' => 'Company Data Successfully Uploaded',
            'alert-type' => 'success',
        ];
        return redirect()
            ->route('show.company')
            ->with($notification);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Company::find($id);
        return view('company.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|max:80',
            'email' => 'required|max:80',
            'link' => 'required',
            'logo' => 'mimes:png,jpg,webp,jpeg,svg',
        ]);

        $dataSave = Company::findOrFail($id);

        if ($request->file('logo')) {
            $path = 'Company/' . $dataSave->logo;
            if (Storage::disk('public')->exists($path)) {
                Storage::disk('public')->delete($path);
            }

            $img = $request->logo->extension();
            $imgName = 'Company-' . uniqid() . '.' . $img;
            $imgSave = $request->logo->storeAs('Company', $imgName, 'public');
            $imageUrl = env('APP_URL') . 'storage/' . $imgSave;
        }

        $dataSave->name = $request->name;
        $dataSave->email = $request->email;
        $dataSave->website = $request->link;
        if ($request->file('logo')) {
        $dataSave->logo = $imgName;
        $dataSave->logo_url = $imageUrl;
        }
        $dataSave->save();
        $notification = [
            'message' => 'Company Data Successfully Updated',
            'alert-type' => 'success',
        ];
        return redirect()
            ->route('show.company')
            ->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $dataDelete = Company::find($id);
        $path = 'Company/' . $dataDelete->logo;
        if (Storage::disk('public')->exists($path)) {
            Storage::disk('public')->delete($path);
        }
        $dataDelete->delete();

        $notification = [
            'message' => 'Company Data Successfully Deleted',
            'alert-type' => 'success',
        ];
        return redirect()
        ->route('show.company')
        ->with($notification);
    }
}
