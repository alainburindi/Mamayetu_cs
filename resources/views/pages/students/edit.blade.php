

<?php use App\Student;
	use App\T_Class;
	$classes = T_Class::all(); ?>
@extends('layouts.app')
@section('content')
	<h3>Add new student</h3>
	
	<div class="form well">
		<?php $option = ""; ?>
		{!! Form::open(['action' => ['StudentsController@update', $student->id], 'method' => 'POST', 'enctype' => 'multipart/form-data'] ) !!}
		@csrf
		<div class="form-group">
    		{{Form::label('Nom :', 'Nom')}}
    		{{Form::text('nom', '',['class' => 'form-control', 'placeholder' => $student->name])}}
    	</div>
    	<div class="form-group">
    		{{Form::label('Post-nom', 'Post-nom')}}
    		{{Form::text('postnom', '',['class' => 'form-control', 'placeholder' => 'post-nom'])}}
    	</div>

    	<div class="form-group">
    		{{Form::label('Pre-nom', 'Pre-nom')}}
    		{{Form::text('prenom', '',['class' => 'form-control', 'placeholder' => 'pre-nom'])}}
    	</div>

    	<div class="form-group">
    		{{Form::label('Matricule', 'Matricule')}}
    		{{Form::number('matricule', Student::orderBy('id', 'desc')->get()[0]->matricule+1,['class' => 'form-control', 'placeholder' => 'matricule'])}}
    	</div>

    	<div class="form-group">
    		{{Form::label('', 'Date de naissance')}}
    		{{Form::date('naissance', '',['class' => 'form-control'])}}
    	</div>

    	

        <div class="form-group">
            {{Form::label('max', 'classe')}}
            <select name="class_id" required class="form-control">
                <option for="" disabled="" selected="">Choisissez la classe</option>
                @foreach($classes->all() as $class)
                @if($class->option != $option)
                    <optgroup label="{{$class->option}}">
                        <option value="{{$class->id}}">{{$class->name.' '. $class->option}}</option>
                    <?php $option = $class->option; ?>
                @else
                <option value="{{$class->id}}">{{$class->name.' '. $class->option}}</option>
                    </optgroup>
                @endif

                
                @endforeach
                
            </select>
        </div>

        <div class="form-group">
        	{{Form::label('sexe', 'Sexe')}}
        	{{Form::select('sexe', [ 'M' => 'Masculin', 'F' => 'Feminin'],'',['class' => 'form-control'])}}
        </div>
        <div class="form-group">
            {{Form::file('student_pic')}}
        </div>
        {{Form::hidden('_method', 'PUT')}}
    	{{Form::submit('Submit',['class' => 'btn btn-primary'])}}
    	{!! Form::close() !!}
	</div>
@endsection