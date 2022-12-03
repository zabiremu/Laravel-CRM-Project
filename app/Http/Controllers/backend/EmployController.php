<?php

namespace App\Http\Controllers\backend;

use App\Models\Employ;
use App\Models\Company;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EmployController extends Controller
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
        $data = Employ::with('company')->latest()->simplePaginate(10);
        return view('employees.view',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $companyName = Company::select('id','name')->get();
        return view('employees.index',compact('companyName'));
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
            'fname' => 'required|max:80',
            'lname' => 'required|max:80',
            'email' => 'required|max:80',
            'company_name' => 'required',
            'PhoneNumber' => 'required',
        ]);


        $dataSave = new Employ();
        $dataSave->first_name = $request->fname;
        $dataSave->last_name = $request->lname;
        $dataSave->email = $request->email;
        $dataSave->company_id  = $request->company_name;
        $dataSave->phone = $request->PhoneNumber;
        $dataSave->save();
        $notification = [
            'message' => 'Employed Data Successfully Uploaded',
            'alert-type' => 'success',
        ];
        return redirect()
            ->route('show.employ')
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
        $data = Employ::find($id);
        $companyName = Company::select('id','name')->get();
        return view('employees.edit',compact('data','companyName'));
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
            'fname' => 'required|max:80',
            'lname' => 'required|max:80',
            'email' => 'required|max:80',
            'company_name' => 'required',
            'PhoneNumber' => 'required',
        ]);


        $dataSave = Employ::find($id);
        $dataSave->first_name = $request->fname;
        $dataSave->last_name = $request->lname;
        $dataSave->email = $request->email;
        $dataSave->company_id  = $request->company_name;
        $dataSave->phone = $request->PhoneNumber;
        $dataSave->save();
        $notification = [
            'message' => 'Employed Data Successfully Updated',
            'alert-type' => 'success',
        ];
        return redirect()
            ->route('show.employ')
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
        $dataDelete = Employ::find($id);
        $dataDelete->delete();
        $notification = [
            'message' => 'Employed Data Successfully Deleted',
            'alert-type' => 'success',
        ];
        return redirect()
            ->route('show.employ')
            ->with($notification);
    }
}
