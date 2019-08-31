<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\T_Class;
use App\Courses;
use App\Student;
use App\Marks;

class CoursesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $courses = new Courses;
        return view('pages.courses')->with('courses', $courses);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $classes = T_Class::all();
        return view('extra.courscreate')->with('classes', $classes);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => 'required',
            'maxima' => 'required',
            'option' => 'required'
        ]);

        $cours = new Courses;
        $cours->name = $request->input('name');
        $cours->maxima = $request->input('maxima');
        $cours->t__class_id = $request->input('option');

        $cours->save();
        $c = Courses::where('name', $cours->name)->get()[0]->id;
        $students = Student::where('t__class_id', $cours->t__class_id)->get();
        foreach ($students as $s) {
            $marks = new Marks;
            $marks->student_id = $s->id;
            $marks->t__class_id = $s->t__class_id;
            $marks->courses_id = $c;
            $marks->save();
        }
        // return redirect('/courses')->with('success', 'cours created');
        return redirect('/courses/create')->with('success', 'cours created');

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
        //
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
        //
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
