<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Auth;
use Illuminate\Http\Request;
use App\T_Class;
use App\Professor;
use App\Student;
use App\User;
use DB;

class StudentsController extends Controller
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
        if (auth()->user()->ability == '1') {
            $students = Student::orderBy('id','asc')->paginate(10);
            return view('pages.students.index')->with('students', $students);
        }elseif (auth()->user()->ability == '2') {
            $id = auth()->user()->id;
            $prof = Professor::where('user_id', $id)->get()[0]->id;
            $class = T_Class::where('titulaire', $prof)->get()[0]->id;
            $students = Student::where('t__class_id',$class)->paginate(10);
            return view('pages.students.index')->with('students', $students);
        }else{
            return redirect('/')->with('error', 'not allowed');
        }
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
            $classes = T_Class::all();
        return view('pages.students.add')->with('classes', $classes);
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
            'nom' => 'required|string|max:20',
            'postnom' => 'required|string|max:20',
            'prenom' => 'required|string|max:20',
            'class_id' => 'required|integer|min:1|max:20',
            'matricule' => 'required|integer|min:20180000|unique:students',
            'naissance' => 'required|date',
            'picture' => 'image|nullable|max:1999',
            'sexe' => 'required|string|min:1|max:1',
        ]);

        $matricule = $request['matricule'];
        $name = $request['nom'].' '.$request['postnom'].' '.$request['prenom'];
        $email = $matricule.'@mamayetu.cs';
        $user = User::create([
            'name' => $name,
            'email' => $email,
            'password' => bcrypt('mamayetu2018'),
            'ability' => '3'
        ]);

        $user_id = User::where('name', $name)->get()[0]->id;

        $c_id = $request->input('class_id');
        // File upload
        if ($request->hasFile('student_pic')) {
            //file name with extension
            $fileNameWithExt = $request->file('student_pic')->getClientOriginalName();
            //file name
            $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
            //extension
            $extension = $request->file('student_pic')->getClientOriginalExtension();
            $fileToStore = $matricule.'.'.$extension;

            $path = $request->file('student_pic')->storeAs('public/images/student_'.$c_id, $fileToStore);
        }else{
            $fileToStore = 'noimage.jpg';
        }
        $student = new Student();
        $student->matricule = $matricule;
        $student->user_id = $user_id;
        $student->naissance = $request->input('naissance');
        $student->sexe = $request->input('sexe');
        $student->t__class_id = $c_id;
        $student->picture = $fileToStore;
        $student->save();

        return redirect('students/create')->with('success', 'student added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $s = Student::find($id);
        return view('pages.students.show')->with('student', $s);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $student = Student::find($id);
        return view('pages.students.edit')->with('student', $student);
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

    /**
    * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
}
