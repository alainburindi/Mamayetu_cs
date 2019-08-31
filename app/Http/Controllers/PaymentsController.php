<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Payment;
use App\Student;

class PaymentsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $p = Payment::all();
        return view('pages.payments.index')->with('pays', $p);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $classes = Student::all();
        return view('pages.payments.create')->with('classes', $classes);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'amount' => 'required|integer',
            'student_id' => 'required'
        ]);
        // return $request;
        $p = new Payment();
        $p->student_id = $request['student_id'];
        $p->amount = $request['amount'];
        $p->save();
        return redirect('payments')->with('success', 'payement added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $p = Payment::where('student_id', $id)->get();
        return view('pages.payments.show')->with('pays', $p);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('pages.payments.edit')->with('pay', Payment::find($id));
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
        $this->validate($request, [
            'amount' => 'required|integer',
            'student_id' => 'required|integer'
        ]);
        $p = Payment::find($id);
        $p->amount = $request['amount'];
        $p->student_id = $request['student_id'];
        $p->save();
        return redirect('payments')->with('success', 'payment edited');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
