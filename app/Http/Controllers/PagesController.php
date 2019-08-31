<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
Use DB;
use App\Courses;
use App\T_Class;
use App\Student;
use App\Marks;

class PagesController extends Controller
{
    // public function index()
    // {
    
    //     $donnees = DB::select('SELECT * FROM Events ORDER BY ID DESC');

    //     // return view('pages.index', ['donnees' => $donnees]);
    //     return view('pages.home');
    // }
    public function index(){
    	$title = "Welcome to the Student Payment management system!";
    	return view('pages.welcome') ->with('title', $title);
    }

    public function about()
    {
    	return view('pages.about');
    }

    public function inscription()
    {
    	return view('pages.inscription');
    }

    public function sections()
    {
    	return view('pages.sections');
    }

    public function contacts()
    {
    	return view('pages.contacts');
    }

    public function events()
    {
    	return view('pages.events');
    }

    public function bull()
    {
        $courses = Courses::all();
        return view('pages.marks.bulletin')->with('courses', $courses);
    }

    public function class()
    {
        $cla = new T_Class;
        return view('pages.studentclass')->with('cla', $cla); 
    }

    public function eleves($id)
    {
        $class = T_Class::find($id);
        // $students = Student::where('class_id', $id)->get();
        return view('pages.studentclass')->with('students', $class->student);
    }

    public function studentsearch(Request $value)
    {
        $this->validate($value, [
            'choix' => 'required|string|max:1',
            'data' => 'required'
        ]);

        if ($value['choix'] == 'M') {
          $data =  Student::where('Matricule', 'like', '%'.$value['data'].'%')->paginate(10);
            // $data = DB::select("SELECT * FROM Students where Matricule LIKE".$value['data']);
            if (count($data) > 0) {
                return view('pages.students.index', ['students'=> $data,
                 ]);
            }else{
                return redirect('students')->with('error', 'no match record found for "' .$value['data'].'"');
            }
        } else {
             // $data =  Student::where('Name', 'like', '%'.$value['data'].'%')->paginate(10);
            // return DB::select('SELECT * FROM Students')->get()->paginate(10);
            return redirect('students')->with('error', 'not working for now, use the matricule instead');
        }
        
    }

    public function addMarks($id, $student)
    {
        # code...
    }

    public function refresh()
    {
        return 0;
        $student = Student::all();
        foreach ($student as $s) {
            $cla = T_Class::find($s->t__class_id)->id;
            $courses = Courses::where('t__class_id', $cla)->get();
            foreach ($courses as $c) {
                $marks = new Marks;
                $marks->student_id = $s->id;
                $marks->t__class_id = $s->t__class_id;
                $marks->courses_id = $c->id;
                $marks->save();
            }
            
            // return $s->matricule;
        }
        # code...
        $this->middleware('auth');
    }

    public function by($id){
        $n = $id;
        $pays = DB::select("SELECT * FROM Payments as p INNER JOIN STUDENTS as s WHERE p.student_id = s.id AND s.t__class_id = ".$id);
        $not = DB::select("SELECT * FROM STUDENTS as s INNER JOIN Payments as p WHERE p.student_id != s.id AND s.t__class_id = ".$id);
        return view ('pages.payments.paid')->with(['pays'=> $pays, 'not'=> $not, 'id' => $n ]); 
    }

    public function byCriteria(Request $request){
        $this->validate($request, [
            'criteria' => 'required|integer',
        ]);
        $id = $request['id'];
        $pays = DB::select("SELECT * FROM Payments as p INNER JOIN STUDENTS as s WHERE p.student_id = s.id AND s.t__class_id = ".$id." AND p.amount >= ".$request['criteria']);
        $not = DB::select("SELECT * FROM STUDENTS as s INNER JOIN Payments as p WHERE p.student_id != s.id AND s.t__class_id = ".$id." OR p.amount < ".$request['criteria']);
        return view ('pages.payments.paid')->with(['pays'=> $pays, 'not'=> $not, 'id' => $id]); 
    }
}
