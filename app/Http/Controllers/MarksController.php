<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Marks;
use DB;
use App\T_Class;
use App\Courses;
use App\Professor;
use App\Student;

class MarksController extends Controller
{
    function __construct()
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
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // return view('pages.marks.addMarks');
        if (Auth()->user()->ability == 1) {
            $class = T_Class::orderBy('id', 'asc')->paginate(1);
        }elseif (Auth()->user()->ability == 2) {
            $class = T_Class::where('titulaire', Professor::where('user_id', Auth()->user()->id)->get()[0]->id)->paginate(1);
        }else{
            return redirect('/marks/2')->with('error', 'not allowed');
        }
        
        return view('extra.marks', ['class' => $class]);

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
            'periode' => 'required|',
            'cours_id' => 'required|string',
            'marks' => 'required|integer|min:1'
        ]);
        $id = str_replace('g', '', $request['cours_id']);
        $id = str_replace('h', '', $id);
        $id = str_replace('f', '', $id);

        if ($request['marks'] > Courses::find(Marks::find($id)->courses_id)->maxima) {
            return redirect('/marks/create')->with('error', 'more than maxima');
        }else{
            DB::update('UPDATE Marks SET '.$request['periode'].' = '.$request['marks'].' WHERE id = '.$id);
            return redirect('/marks/create')->with('success', 'fait');
        }


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if (Auth()->user()->ability == 1) {
            $marks = DB::select('select name, maxima, periode_1, periode_2, exam_1, periode_3, periode_4, exam_2 from courses inner join marks on courses.id = marks.courses_id and marks.student_id = '.$id.' order by maxima asc');
        }elseif (Auth()->user()->ability == 2) {
            $idarray = array();
            $i=0;
  
            foreach (Student::where('t__class_id', T_Class::where('titulaire', Professor::where('user_id', Auth()->user()->id)->get()[0]->id)->get()[0]->id)->get() as $student) {
                $idarray[$i] = $student->id;
                $i++;
            }
            if (in_array($id, $idarray)) {
                $marks = DB::select('select name, maxima, periode_1, periode_2, exam_1, periode_3, periode_4, exam_2 from courses inner join marks on courses.id = marks.courses_id and marks.student_id = '.$id.' order by maxima asc');
            }else{
                $marks = DB::select('select name, maxima, periode_1, periode_2, exam_1, periode_3, periode_4, exam_2 from courses inner join marks on courses.id = marks.courses_id and marks.student_id = '.$idarray[0].' order by maxima asc');
            }
        }else{
            $id = Student::where('user_id', Auth()->user()->id)->get()[0]->id;
            $marks = DB::select('select name, maxima, periode_1, periode_2, exam_1, periode_3, periode_4, exam_2 from courses inner join marks on courses.id = marks.courses_id and marks.student_id = '.$id.' order by maxima asc');
        }
        
        return view('pages.marks.bulletin')->with('courses', $marks);
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
